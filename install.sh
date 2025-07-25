#! /usr/bin/env bash

ROOT_UID=0

# Destination directory
if [[ "$UID" -eq "$ROOT_UID" ]]; then
  DEST_DIR="/usr/share/gnome-shell/extensions"
else
  DEST_DIR="$HOME/.local/share/gnome-shell/extensions"
fi

REO_DIR=$(cd $(dirname $0) && pwd)

THEME_DIR="${DEST_DIR}/legacyschemeautoswitcher@vinceliuice.hotmail.com"

[[ -d "${THEME_DIR}" ]] && rm -rf "${THEME_DIR}"

echo -e "\nInstalling legacy-scheme-auto-switcher ..."

mkdir -p "${THEME_DIR}"

cp -r "${REO_DIR}"/{extension.js,metadata.json} "${THEME_DIR}"

echo -e "\nDone.\n"
