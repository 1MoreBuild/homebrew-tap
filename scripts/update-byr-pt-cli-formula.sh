#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi

VERSION="$1"
TARBALL_URL="https://registry.npmjs.org/byr-pt-cli/-/byr-pt-cli-${VERSION}.tgz"
FORMULA_PATH="Formula/byr-pt-cli.rb"

if [[ ! -f "$FORMULA_PATH" ]]; then
  echo "Formula not found: $FORMULA_PATH" >&2
  exit 1
fi

SHA256="$(curl -fsSL "$TARBALL_URL" | shasum -a 256 | awk '{print $1}')"

sed -i.bak -E \
  -e "s|url \".*\"|url \"$TARBALL_URL\"|" \
  -e "s|sha256 \".*\"|sha256 \"$SHA256\"|" \
  "$FORMULA_PATH"

rm -f "${FORMULA_PATH}.bak"

echo "Updated $FORMULA_PATH"
echo "version: $VERSION"
echo "sha256:  $SHA256"
