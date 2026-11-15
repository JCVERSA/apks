#!/usr/bin/env bash
# Static decompilation only; all tools and outputs remain on the GitHub runner.
set -Eeuo pipefail
WORK="${RUNNER_TEMP:?}/moviebox-decompile"
mkdir -p "$WORK"/{tools,report,output}
REPORT="$WORK/report"
trap 'rc=$?; printf "exit_code=%s\n" "$rc" > "$REPORT/runner-exit.txt"' EXIT
url='https://movieboxdl.in/files/MovieBox_v4.0.02.0831.03.apk'
curl --fail --location --retry 2 --connect-timeout 30 --max-time 300 --max-filesize 600000000 --output "$WORK/input.apk" "$url" 2>"$REPORT/download.log"
python3 - "$WORK/input.apk" "$REPORT" <<'PY'
import hashlib,json,sys,zipfile
from pathlib import Path
p=Path(sys.argv[1]); out=Path(sys.argv[2]); h=hashlib.sha256()
with p.open('rb') as f:
 for b in iter(lambda:f.read(1024*1024),b''):h.update(b)
if not zipfile.is_zipfile(p): raise SystemExit('Downloaded file is not an APK/ZIP')
with zipfile.ZipFile(p) as z:
 names=z.namelist()
 if 'AndroidManifest.xml' not in names: raise SystemExit('Downloaded ZIP has no AndroidManifest.xml')
 info={'sha256':h.hexdigest(),'bytes':p.stat().st_size,'entries':len(names),'dex_files':[n for n in names if n.startswith('classes') and n.endswith('.dex')],'package':'unknown until badging'}
(out/'input.json').write_text(json.dumps(info,indent=2)+'\n')
PY
BT="$(find "${ANDROID_HOME:?}/build-tools" -mindepth 1 -maxdepth 1 -type d | sort -V | tail -1)"
"$BT/aapt" dump badging "$WORK/input.apk" > "$REPORT/badging.txt" 2>&1 || true
"$BT/apksigner" verify --verbose --print-certs "$WORK/input.apk" > "$REPORT/signature.txt" 2>&1 || true
curl --fail --location --retry 3 --output "$WORK/tools/apktool.jar" https://github.com/iBotPeaches/Apktool/releases/download/v3.0.3/apktool_3.0.3.jar
curl --fail --location --retry 3 --output "$WORK/tools/jadx.zip" https://github.com/skylot/jadx/releases/download/v1.5.6/jadx-1.5.6.zip
printf '%s  %s\n%s  %s\n' dbf930b076c6b9be08d57c449cacefc3bdd6b71ebd59b3066fc0e1f5b14f9423 "$WORK/tools/apktool.jar" 545ea2be9c242511bc145755cf4bda2485ade42966e096f8b4d3da2a230e8974 "$WORK/tools/jadx.zip" | sha256sum -c - > "$REPORT/tool-hashes.txt"
unzip -q "$WORK/tools/jadx.zip" -d "$WORK/tools/jadx"
chmod +x "$WORK/tools/jadx/bin/jadx"
set +e
timeout 1100 java -Xmx5g -jar "$WORK/tools/apktool.jar" d -f -o "$WORK/output/apktool" "$WORK/input.apk" > "$REPORT/apktool.log" 2>&1
apktool_rc=$?
export JADX_OPTS='-Xmx6g -XX:+UseG1GC'
timeout 1300 "$WORK/tools/jadx/bin/jadx" --no-res --show-bad-code --comments-level warn --threads-count 4 --output-dir "$WORK/output/jadx" "$WORK/input.apk" > "$REPORT/jadx.log" 2>&1
jadx_rc=$?
set -e
printf 'apktool_exit=%s\njadx_exit=%s\n' "$apktool_rc" "$jadx_rc" > "$REPORT/decompile-status.txt"
find "$WORK/output" -type f -name '*.java' | wc -l | xargs printf 'java_files=%s\n' >> "$REPORT/decompile-status.txt"
find "$WORK/output" -type f -name '*.smali' | wc -l | xargs printf 'smali_files=%s\n' >> "$REPORT/decompile-status.txt"
printf 'Static decompilation; Java is reconstructed and may be incomplete. No app execution. See report/decompile-status.txt and logs. APK itself is not included.\n' > "$WORK/output/README.txt"
cp -a "$REPORT" "$WORK/output/report"
# An explicit archive is more portable than an artifact containing hundreds of thousands of files.
(cd "$WORK/output" && zip -q -r "$WORK/MovieBox-decompiled.zip" .)
sha256sum "$WORK/MovieBox-decompiled.zip" > "$REPORT/archive-sha256.txt"
if (( apktool_rc != 0 || jadx_rc != 0 )); then echo 'One or more decompilers reported an error; output may be partial.' >&2; exit 1; fi
