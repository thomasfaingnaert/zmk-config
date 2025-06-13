#!/usr/bin/env bash
set -Eeuo pipefail

cd "$( dirname "${BASH_SOURCE[0]}" )"
cd ..

# Need to run: pipx install keymap-drawer
keymap -c scripts/keymap-config.yaml parse -z "glove80.keymap" | \
keymap -c scripts/keymap-config.yaml draw -k glove80 - >glove80.svg
