#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."

PORT=8000
BASE_URL=$(grep '^base_url:' config/config.yml | awk '{print $2}')
BASE_URL=${BASE_URL%/}
THEME=$(grep '^theme:' config/config.yml | awk '{print $2}')

if [ -z "$BASE_URL" ] || [ "$BASE_URL" = "~" ]; then
  echo "config/config.yml base_url is unset — set it to your production URL before building." >&2
  exit 1
fi

FULL_REBUILD=false
if [ ! -d "_static" ]; then
  echo "_static/ doesn't exist yet — running a full build."
  FULL_REBUILD=true
else
  CHANGED=""
  while IFS= read -r slug; do
    [ -z "$slug" ] && continue
    md="content/$slug.md"
    out="_static/$slug/index.html"
    if [ ! -f "$out" ] || [ "$md" -nt "$out" ]; then
      CHANGED="$CHANGED$slug"$'\n'
    fi
  done < <(ls content/*.md | sed 's|content/||; s|\.md$||' | grep -v '^test$' | grep -v '^index$')

  if [ -z "$CHANGED" ]; then
    echo "no changed guides found — running a full rebuild instead"
    FULL_REBUILD=true
  fi
fi

if lsof -ti ":$PORT" >/dev/null 2>&1; then
  echo "Port $PORT is already in use. Stop whatever is listening there first:" >&2
  echo "  lsof -ti :$PORT | xargs kill" >&2
  exit 1
fi

php -d display_errors=1 \
    -d error_reporting="E_ALL & ~E_DEPRECATED & ~E_NOTICE & ~E_WARNING" \
    -d max_execution_time=120 \
    -S "localhost:$PORT" >/tmp/pico-build-server.log 2>&1 &
SERVER_PID=$!
trap 'kill "$SERVER_PID" 2>/dev/null' EXIT
sleep 1

if [ "$FULL_REBUILD" = true ]; then
  rm -rf _static_new
  mkdir -p _static_new

  FAILED=""
  COUNT=0
  while IFS= read -r slug; do
    [ -z "$slug" ] && continue
    mkdir -p "_static_new/$slug"
    http_code=$(curl -s -o "_static_new/$slug/index.html" -w "%{http_code}" "http://localhost:$PORT/$slug")
    fatal=$(grep -c "Fatal error" "_static_new/$slug/index.html" 2>/dev/null || true)
    COUNT=$((COUNT + 1))
    if [ "$http_code" != "200" ] || [ "$fatal" != "0" ]; then
      echo "  FAIL: $slug -> HTTP $http_code, fatal_errors=$fatal"
      FAILED="$FAILED $slug"
    fi
  done < <(ls content/*.md | sed 's|content/||; s|\.md$||' | grep -v '^test$' | grep -v '^index$')

  curl -s -o "_static_new/index.html" "http://localhost:$PORT/"
  fatal_home=$(grep -c "Fatal error" "_static_new/index.html" || true)
  curl -s -o "_static_new/404.html" "http://localhost:$PORT/this-page-does-not-exist-xyz"

  echo
  echo "pages processed: $COUNT | homepage fatal_errors: $fatal_home"
  if [ -n "$FAILED" ]; then
    echo "FAILED:$FAILED" >&2
    exit 1
  fi
  echo "all pages crawled successfully"

  find _static_new -maxdepth 3 \( -name "index.html" -o -name "404.html" \) \
    | xargs sed -i '' "s|$BASE_URL||g"

  mkdir -p "_static_new/themes/$THEME"
  cp -R "themes/$THEME"/* "_static_new/themes/$THEME"/
  find "_static_new/themes/$THEME" -name "*.twig" -delete
  cp -R assets _static_new/assets
  # No .htaccess here on purpose: manuals.diy.re's document root is shared
  # with the diyre-libdoc site, and diyre-libdoc's own .htaccess is now the
  # sole source of truth for it (see that repo's .htaccess and CLAUDE.md).

  rm -rf _static
  mv _static_new _static

  echo
  echo "build complete: _static/ ($(find _static -name index.html | wc -l | tr -d ' ') pages)"
else
  echo "changed since last build:"
  printf '%s' "$CHANGED" | sed 's/^/  /'
  echo

  FAILED=""
  while IFS= read -r slug; do
    [ -z "$slug" ] && continue
    mkdir -p "_static/$slug"
    out="_static/$slug/index.html"
    tmp="_static/$slug/index.html.new"

    http_code=$(curl -s -o "$tmp" -w "%{http_code}" "http://localhost:$PORT/$slug")
    fatal=$(grep -c "Fatal error" "$tmp" 2>/dev/null || true)
    if [ "$http_code" != "200" ] || [ "$fatal" != "0" ]; then
      echo "  FAIL: $slug -> HTTP $http_code, fatal_errors=$fatal"
      FAILED="$FAILED $slug"
      rm -f "$tmp"
      continue
    fi

    sed -i '' "s|$BASE_URL||g" "$tmp"
    mv "$tmp" "$out"

    if [ -d "assets/$slug" ]; then
      rm -rf "_static/assets/$slug"
      cp -R "assets/$slug" "_static/assets/$slug"
    fi

    echo "  built: $slug"
  done <<< "$CHANGED"

  if [ -n "$FAILED" ]; then
    echo
    echo "FAILED:$FAILED" >&2
    exit 1
  fi

  echo
  echo "done"
fi
