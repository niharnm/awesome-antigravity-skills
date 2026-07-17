#!/usr/bin/env bash
# Verify all external links in README.md resolve.
# - Any 4xx/5xx (except 429 rate-limit) fails the check.
# - github.com URLs are checked WITHOUT following redirects: a 301 there
#   means the repo was renamed/moved and the entry should be updated.
set -euo pipefail

cd "$(dirname "$0")/.."

urls=$(grep -oE 'https?://[^) ]+' README.md | sed 's/[.,]$//' | sort -u || true)

if [ -z "$urls" ]; then
  echo "ERROR: no external links found in README.md — nothing to check (unexpected for an awesome list)" >&2
  exit 1
fi

fail=0

for url in $urls; do
  if [[ "$url" == https://github.com/* ]]; then
    # No -L: a 301 on a repo URL means renamed/moved.
    code=$(curl -o /dev/null -s -w '%{http_code}' --max-time 20 \
      -A "Mozilla/5.0 (link-check awesome-antigravity-skills)" "$url" || echo "000")
    case "$code" in
      2*)         echo "OK   $code $url" ;;
      301|302|307|308) echo "FAIL $code $url (repo renamed/moved — update the entry)"; fail=1 ;;
      429)        echo "WARN $code $url (rate-limited, treat as OK)" ;;
      *)          echo "FAIL $code $url"; fail=1 ;;
    esac
  else
    code=$(curl -o /dev/null -s -w '%{http_code}' -L --max-time 20 \
      -A "Mozilla/5.0 (link-check awesome-antigravity-skills)" "$url" || echo "000")
    case "$code" in
      2*|3*) echo "OK   $code $url" ;;
      429)   echo "WARN $code $url (rate-limited, treat as OK)" ;;
      *)     echo "FAIL $code $url"; fail=1 ;;
    esac
  fi
done

exit $fail
