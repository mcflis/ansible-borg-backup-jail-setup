#!/usr/bin/env sh

set -ef

here=$(dirname "$0")

echo "[Stage] config"
example_conf_file="$here/../example.conf.sh"
conf_file="$here/../conf.sh"

if [ ! -f "$conf_file" ]; then
  cp "$example_conf_file" "$conf_file"
fi

# shellcheck source=../conf.sh
. "$conf_file"
echo ""

echo ""
echo "[Stage] packages"
pkg update
pkg install -y $PACKAGES
echo ""
