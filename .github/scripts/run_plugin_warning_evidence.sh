#!/usr/bin/env bash
# Runner-side wrapper: always preserve stdout/stderr so a failed emulator step
# can still be diagnosed from the published evidence directory.
set -uo pipefail

OUT="${RUNNER_TEMP}/plugin-warning-runtime"
PLUGIN_DIR="${RUNNER_TEMP}/plugin-warning-plugins"
APK="${1:?usage: run_plugin_warning_evidence.sh <apk>}"
mkdir -p "$OUT" "$PLUGIN_DIR"

{
  echo "=== plugin warning evidence wrapper ==="
  date -u
  echo "APK=$APK"
  echo "OUT=$OUT"
  echo "PLUGIN_DIR=$PLUGIN_DIR"
  ls -l "$APK" || true
  adb devices -l || true
  echo "=== python script ==="
  python3 .github/scripts/plugin_warning_evidence.py \
    --apk "$APK" \
    --out "$OUT" \
    --plugin-dir "$PLUGIN_DIR"
  rc=$?
  echo "=== python exit code: $rc ==="
  exit "$rc"
} 2>&1 | tee "$OUT/runner-script.log"
