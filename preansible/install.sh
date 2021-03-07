#!/usr/bin/env sh

echo "[Stage] pkg"
if ! pkg -N; then
  env ASSUME_ALWAYS_YES=YES pkg bootstrap
fi
echo ""
