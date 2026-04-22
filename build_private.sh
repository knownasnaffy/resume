#!/usr/bin/env bash

set -euo pipefail

ENV_FILE=".env"
PLACEHOLDER="1234 4321"

# load existing number if present
if [[ -f "$ENV_FILE" ]]; then
  source "$ENV_FILE"
fi

# ask if missing
if [[ -z "${PHONE_NUMBER:-}" ]]; then
  read -rp "Enter phone number: [+91] " PHONE_NUMBER
  printf 'PHONE_NUMBER="%s"\n' "$PHONE_NUMBER" > "$ENV_FILE"
  chmod 600 "$ENV_FILE"
fi

TMP=$(mktemp --suffix=.tex)
trap 'rm -f "$TMP"' EXIT

# escape / for sed
ESCAPED=${PHONE_NUMBER//\//\\/}

sed "s/$PLACEHOLDER/$ESCAPED/" main.tex > "$TMP"

pdflatex "$TMP" >/dev/null

echo "PDF generated."
