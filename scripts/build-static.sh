#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."

PORT=8000
BASE_URL=$(grep '^base_url:' config/config.yml | awk '{print $2}')
BASE_URL=${BASE_URL%/}

if [ -z "$BASE_URL" ] || [ "$BASE_URL" = "~" ]; then
  echo "config/config.yml base_url is unset — set it to your production URL before building." >&2
  exit 1
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

rm -rf _static_new
mkdir -p _static_new

FAILED=""
COUNT=0
while IFS= read -r slug; do
  [ -z "$slug" ] && continue
  http_code=$(curl -s -o "_static_new/$slug.html" -w "%{http_code}" "http://localhost:$PORT/$slug")
  fatal=$(grep -c "Fatal error" "_static_new/$slug.html" 2>/dev/null || true)
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

find _static_new -maxdepth 1 -name "*.html" \
  | xargs sed -i '' "s|$BASE_URL||g"

cp -R themes _static_new/themes
cp -R assets _static_new/assets
cp scripts/static.htaccess _static_new/.htaccess

rm -rf _static
mv _static_new _static

echo
echo "build complete: _static/ ($(find _static -maxdepth 1 -name '*.html' | wc -l | tr -d ' ') pages)"
