#!/usr/bin/env bash
# Static inspection only for the uploaded ZArchiver base.apk.
# Tools are downloaded and run only on the disposable GitHub runner.
set -Eeuo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
APK_PATH="${APK_PATH:-$REPO_ROOT/base.apk}"
WORK_ROOT="${WORK_ROOT:-${RUNNER_TEMP:-/tmp}/zarchiver-analysis}"
TOOLS_ROOT="${TOOLS_ROOT:-${RUNNER_TEMP:-/tmp}/zarchiver-tools}"
EXPECTED_SHA256="${EXPECTED_SHA256:-aab078d2ea7b80e7199d2bb988772128131848c4df078ea8c55b19df7dfc16fd}"
APKTOOL_VERSION="${APKTOOL_VERSION:-3.0.3}"
APKTOOL_SHA256="${APKTOOL_SHA256:-dbf930b076c6b9be08d57c449cacefc3bdd6b71ebd59b3066fc0e1f5b14f9423}"
JADX_VERSION="${JADX_VERSION:-1.5.6}"
JADX_SHA256="${JADX_SHA256:-545ea2be9c242511bc145755cf4bda2485ade42966e096f8b4d3da2a230e8974}"

case "$WORK_ROOT" in
  "$REPO_ROOT"|"$REPO_ROOT"/*) echo 'WORK_ROOT must be outside the repository' >&2; exit 2 ;;
esac
case "$TOOLS_ROOT" in
  "$REPO_ROOT"|"$REPO_ROOT"/*) echo 'TOOLS_ROOT must be outside the repository' >&2; exit 2 ;;
esac

mkdir -p "$WORK_ROOT"/{input,decoded,jadx,reports,logs} "$TOOLS_ROOT"
: > "$WORK_ROOT/reports/stages.tsv"
printf 'stage\texit_code\tlog\n' >> "$WORK_ROOT/reports/stages.tsv"

run_stage() {
  local name="$1"; shift
  local log="$WORK_ROOT/logs/$name.log"
  local rc=0
  printf '\n=== %s ===\n' "$name"
  "$@" > "$log" 2>&1 || rc=$?
  printf '%s\t%s\t%s\n' "$name" "$rc" "logs/$name.log" >> "$WORK_ROOT/reports/stages.tsv"
  printf 'exit_code=%s; log=%s\n' "$rc" "$log"
  tail -n 12 "$log" || true
  return 0
}

INPUT="$WORK_ROOT/input/base.apk"
cp -- "$APK_PATH" "$INPUT"
chmod 444 "$INPUT"
printf '%s  %s\n' "$EXPECTED_SHA256" "$INPUT" | sha256sum -c - | tee "$WORK_ROOT/logs/input-sha256.log"
sha256sum "$APK_PATH" "$INPUT" > "$WORK_ROOT/reports/input-hashes.txt"

{
  date -u '+analysis_utc=%Y-%m-%dT%H:%M:%SZ'
  printf 'repo_root=%s\nwork_root=%s\ntools_root=%s\n' "$REPO_ROOT" "$WORK_ROOT" "$TOOLS_ROOT"
  uname -a
  cat /etc/os-release
  printf '\nCPU/memory/disk:\n'
  nproc
  free -h
  df -h "$WORK_ROOT"
  printf '\nResolved base tools:\n'
  for t in java python3 curl unzip file readelf strings zipalign; do
    if command -v "$t" >/dev/null 2>&1; then command -v "$t"; else printf '%s: not found\n' "$t"; fi
  done
} > "$WORK_ROOT/reports/environment.txt"
run_stage java_version java -version
run_stage python_version python3 --version

APKTOOL_JAR="$TOOLS_ROOT/apktool_$APKTOOL_VERSION.jar"
JADX_ZIP="$TOOLS_ROOT/jadx-$JADX_VERSION.zip"
JADX_DIR="$TOOLS_ROOT/jadx-$JADX_VERSION"
curl --fail --location --retry 3 --output "$APKTOOL_JAR" \
  "https://github.com/iBotPeaches/Apktool/releases/download/v$APKTOOL_VERSION/apktool_$APKTOOL_VERSION.jar"
curl --fail --location --retry 3 --output "$JADX_ZIP" \
  "https://github.com/skylot/jadx/releases/download/v$JADX_VERSION/jadx-$JADX_VERSION.zip"
printf '%s  %s\n%s  %s\n' "$APKTOOL_SHA256" "$APKTOOL_JAR" "$JADX_SHA256" "$JADX_ZIP" \
  | tee "$WORK_ROOT/reports/tool-download-hashes.txt" | sha256sum -c -
mkdir -p "$JADX_DIR"
unzip -q "$JADX_ZIP" -d "$JADX_DIR"
chmod +x "$JADX_DIR/bin/jadx"
printf 'apktool_jar=%s\njadx_cli=%s\n' "$APKTOOL_JAR" "$JADX_DIR/bin/jadx" >> "$WORK_ROOT/reports/environment.txt"
run_stage apktool_version java -jar "$APKTOOL_JAR" --version
run_stage jadx_version "$JADX_DIR/bin/jadx" --version

SDK_ROOT="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-/usr/local/lib/android/sdk}}"
BUILD_TOOLS_DIR="$(find "$SDK_ROOT/build-tools" -mindepth 1 -maxdepth 1 -type d 2>/dev/null | sort -V | tail -n 1 || true)"
APKANALYZER="$(find "$SDK_ROOT/cmdline-tools" -type f -path '*/bin/apkanalyzer' 2>/dev/null | sort -V | tail -n 1 || true)"
{
  printf 'sdk_root=%s\nbuild_tools_dir=%s\napkanalyzer=%s\n' "$SDK_ROOT" "$BUILD_TOOLS_DIR" "$APKANALYZER"
} >> "$WORK_ROOT/reports/environment.txt"

if [[ -n "$BUILD_TOOLS_DIR" ]]; then
  run_stage apksigner_version "$BUILD_TOOLS_DIR/apksigner" version
  run_stage original_signature "$BUILD_TOOLS_DIR/apksigner" verify --verbose --print-certs "$INPUT"
  run_stage zipalign_4byte_check "$BUILD_TOOLS_DIR/zipalign" -c 4 "$INPUT"
  run_stage zipalign_16kb_page_check "$BUILD_TOOLS_DIR/zipalign" -c -P 16 4 "$INPUT"
  if [[ -x "$BUILD_TOOLS_DIR/aapt" ]]; then
    run_stage aapt_badging "$BUILD_TOOLS_DIR/aapt" dump badging "$INPUT"
  fi
else
  printf 'android_build_tools\t127\tSDK Build-Tools not found\n' >> "$WORK_ROOT/reports/stages.tsv"
fi

if [[ -n "$APKANALYZER" ]]; then
  run_stage apkanalyzer_version "$APKANALYZER" version
  run_stage apkanalyzer_summary "$APKANALYZER" apk summary "$INPUT"
  run_stage apkanalyzer_manifest "$APKANALYZER" manifest print "$INPUT"
  run_stage apkanalyzer_permissions "$APKANALYZER" manifest permissions "$INPUT"
  run_stage apkanalyzer_dex_packages "$APKANALYZER" dex packages "$INPUT"
else
  printf 'apkanalyzer\t127\tAndroid SDK Command-line Tools apkanalyzer not found\n' >> "$WORK_ROOT/reports/stages.tsv"
fi

run_stage apktool_decode java -Xmx4g -jar "$APKTOOL_JAR" d --force --output "$WORK_ROOT/decoded" "$INPUT"
export JADX_OPTS='-Xmx6g -XX:+UseG1GC'
run_stage jadx_decompile "$JADX_DIR/bin/jadx" \
  --no-res --show-bad-code --comments-level warn --threads-count 4 \
  --no-inline-anonymous --no-inline-methods --no-inline-kotlin-lambda \
  --output-dir "$WORK_ROOT/jadx" "$INPUT"

# Preserve read-only native metadata and bounded strings without executing any target library.
if [[ -d "$WORK_ROOT/decoded/lib" ]]; then
  while IFS= read -r -d '' lib; do
    rel="${lib#"$WORK_ROOT/decoded/"}"
    safe="$(printf '%s' "$rel" | tr '/ ' '__')"
    {
      printf '=== %s ===\n' "$rel"
      file "$lib"
      readelf -h "$lib" || true
      printf '\nDynamic dependencies:\n'
      readelf -d "$lib" || true
      printf '\nExported symbols (bounded):\n'
      readelf --dyn-syms -W "$lib" | head -n 400 || true
    } > "$WORK_ROOT/reports/native-$safe.txt"
    strings -n 8 "$lib" | head -n 6000 > "$WORK_ROOT/reports/native-strings-$safe.txt" || true
  done < <(find "$WORK_ROOT/decoded/lib" -type f -name '*.so' -print0)
fi

printf '\nStatic tool execution finished. See reports/stages.tsv for individual outcomes.\n'
