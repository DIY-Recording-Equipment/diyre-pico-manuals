#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."

if [ $# -ne 1 ]; then
  echo "Usage: $0 <slug>   (e.g. $0 ssdiy — matches content/ssdiy.md)" >&2
  exit 1
fi
SLUG="$1"

if [ "$SLUG" != "index" ] && [ ! -f "content/$SLUG.md" ]; then
  echo "content/$SLUG.md not found." >&2
  exit 1
fi

PORT=8000
BASE_URL=$(grep '^base_url:' config/config.yml | awk '{print $2}')
BASE_URL=${BASE_URL%/}

if [ -z "$BASE_URL" ] || [ "$BASE_URL" = "~" ]; then
  echo "config/config.yml base_url is unset — set it to your production URL before building." >&2
  exit 1
fi

if [ ! -d "_static" ]; then
  echo "_static/ doesn't exist yet — run ./scripts/build-static.sh once first." >&2
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

if [ "$SLUG" = "index" ]; then
  OUT="_static/index.html"
else
  OUT="_static/$SLUG.html"
fi

URL="http://localhost:$PORT/"
[ "$SLUG" != "index" ] && URL="http://localhost:$PORT/$SLUG"

http_code=$(curl -s -o "$OUT" -w "%{http_code}" "$URL")
fatal=$(grep -c "Fatal error" "$OUT" || true)

if [ "$http_code" != "200" ] || [ "$fatal" != "0" ]; then
  echo "FAIL: $SLUG -> HTTP $http_code, fatal_errors=$fatal" >&2
  echo "(check $OUT for details before uploading)" >&2
  exit 1
fi

sed -i '' "s|$BASE_URL||g" "$OUT"

# refresh this guide's own images, in case any were added/changed
if [ -d "assets/$SLUG" ]; then
  rm -rf "_static/assets/$SLUG"
  cp -R "assets/$SLUG" "_static/assets/$SLUG"
fi

echo "built: $OUT"
