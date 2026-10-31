#!/usr/bin/env bash
# Xenoglyph — Kvantum Theme: install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DST=${XDG_CONFIG_HOME:-$HOME/.config}/Kvantum/Xenoglyph
rm -rf "$DST"; mkdir -p "$DST"
cp "$HERE"/Xenoglyph.kvconfig "$HERE"/Xenoglyph.svg "$DST"/
kwriteconfig6 --file Kvantum/kvantum.kvconfig --group General --key theme Xenoglyph
kwriteconfig6 --file kdeglobals --group KDE --key widgetStyle kvantum
echo "Restart apps to see it."
