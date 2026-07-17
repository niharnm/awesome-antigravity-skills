#!/usr/bin/env bash
# Verify all external links in README.md resolve (no 404/410).
# 429 (rate limit) and transient 5xx are tolerated with a warning.
set -euo pipefail

cd "$(dirname "$0")/.."

urls=$(grep -oE 'https?://[^) ]+' README.md | sed 's/[.,]$//' | sort -u)
fail=0

for url in $urls; do
  code=$(curl -o /dev/null -s -w '%{http_code}' -L --max-time 20 \
    -A "Mozilla/5.0 (link-check awesome-antigravity-skills)" "$url" || echo "000")
  case "$code" in
    2*|3*) echo "OK   $code $url" ;;
    429)   echo "WARN $code $url (rate-limited, treat as OK)" ;;
    5*)    echo "WARN $code $url (server error, re-run later)" ;;
    *)     echo "FAIL $code $url"; fail=1 ;;
  esac
done

exit $fail
