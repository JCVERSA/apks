#!/usr/bin/env bash
# Run on GitHub Actions only. Static download and decompilation, never execute APK.
set -Eeuo pipefail
WORK="${RUNNER_TEMP:?}/visha-decompile"
mkdir -p "$WORK/tools" "$WORK/report"
report="$WORK/report"
trap 'rc=$?; printf "exit_code=%s\n" "$rc" > "$report/runner-exit.txt"' EXIT
valid_apk() {
  python3 - "$1" <<'PY'
import sys,zipfile
p=sys.argv[1]
try:
 with zipfile.ZipFile(p) as z:
  names=z.namelist()
  assert ('AndroidManifest.xml' in names and any(x.startswith('classes') and x.endswith('.dex') for x in names)) or ('manifest.json' in names and 'com.transsion.magicshow.apk' in names)
except (OSError,ValueError,AssertionError,zipfile.BadZipFile):
 sys.exit(1)
PY
}
download() {
  local label="$1" url="$2"
  echo "Trying $label"
  rm -f "$WORK/input.apk"
  curl -fsSL --retry 2 --connect-timeout 30 --max-time 360 --max-filesize 800000000 -o "$WORK/input.apk" "$url" 2>"$report/download-$label.log" && valid_apk "$WORK/input.apk"
}
# The supplied page may serve HTML/challenges rather than an APK. The CDN URL
# is APKPure's latest APK endpoint for the exact package; validate with aapt.
if download page 'https://apkpure.com/visha-video-player-all-formats/com.transsion.magicshow/download'; then
  echo page > "$report/download-source.txt"
elif download cdnpure 'https://d.cdnpure.com/b/XAPK/com.transsion.magicshow?version=latest'; then
  echo cdnpure_latest > "$report/download-source.txt"
else
  echo 'Neither source returned a valid standalone APK.' >&2
  exit 1
fi
# Pin the bundle inspected in run 43662889032; refuse silent version drift.
mv "$WORK/input.apk" "$WORK/download.xapk"
python3 - "$WORK/download.xapk" "$WORK" "$report" <<'PY'
import hashlib,json,shutil,sys,zipfile
from pathlib import Path
p,work,report=map(Path,sys.argv[1:]); h=hashlib.sha256()
with p.open('rb') as f:
 for c in iter(lambda:f.read(1024*1024),b''): h.update(c)
sha=h.hexdigest()
if sha != '467b5a7e08dedc7901d3f52576232c0c889000d5c65a0470b0f23ed231a62d66': raise SystemExit('Bundle changed since inspection; refusing to continue')
with zipfile.ZipFile(p) as z:
 manifest=json.loads(z.read('manifest.json'))
 if manifest.get('package_name') != 'com.transsion.magicshow' or str(manifest.get('version_code')) != '83033': raise SystemExit('Unexpected bundle identity')
 splits=manifest['split_apks']; (work/'splits').mkdir()
 rows=[]
 for entry in splits:
  name=entry['file']; ident=entry['id']
  if Path(name).name != name or not name.endswith('.apk') or '/' in ident or '..' in ident: raise SystemExit('Unsafe split filename')
  target=work/'splits'/name
  with z.open(name) as src, target.open('wb') as dst: shutil.copyfileobj(src,dst)
  h=hashlib.sha256()
  with target.open('rb') as f:
   for c in iter(lambda:f.read(1024*1024),b''):h.update(c)
  rows.append({'id':ident,'file':name,'sha256':h.hexdigest(),'size':target.stat().st_size})
 shutil.copyfile(work/'splits/com.transsion.magicshow.apk',work/'input.apk')
 (report/'bundle.json').write_text(json.dumps({'bundle_sha256':sha,'bundle_size':p.stat().st_size,'manifest':manifest,'splits':rows},indent=2)+'\n')
PY
python3 - "$WORK/input.apk" "$report" <<'PY'
import hashlib,json,sys,zipfile
from pathlib import Path
p=Path(sys.argv[1]); h=hashlib.sha256()
with p.open('rb') as f:
 for chunk in iter(lambda:f.read(1024*1024),b''): h.update(chunk)
with zipfile.ZipFile(p) as z:
 names=z.namelist()
 info={'sha256':h.hexdigest(),'bytes':p.stat().st_size,'entries':len(names),'dex_files':[n for n in names if n.startswith('classes') and n.endswith('.dex')]}
Path(sys.argv[2], 'input.json').write_text(json.dumps(info,indent=2)+'\n')
PY
BT="$(find "${ANDROID_HOME:?}/build-tools" -mindepth 1 -maxdepth 1 -type d | sort -V | tail -1)"
"$BT/aapt" dump badging "$WORK/input.apk" > "$report/badging.txt" 2>&1
if ! grep -q "^package: name='com.transsion.magicshow' " "$report/badging.txt"; then echo 'Unexpected package; refusing to publish.' >&2; exit 1; fi
"$BT/apksigner" verify --verbose --print-certs "$WORK/input.apk" > "$report/signature.txt" 2>&1 || true
curl -fsSL --retry 3 -o "$WORK/tools/apktool.jar" https://github.com/iBotPeaches/Apktool/releases/download/v3.0.3/apktool_3.0.3.jar
curl -fsSL --retry 3 -o "$WORK/tools/jadx.zip" https://github.com/skylot/jadx/releases/download/v1.5.6/jadx-1.5.6.zip
printf '%s  %s\n%s  %s\n' dbf930b076c6b9be08d57c449cacefc3bdd6b71ebd59b3066fc0e1f5b14f9423 "$WORK/tools/apktool.jar" 545ea2be9c242511bc145755cf4bda2485ade42966e096f8b4d3da2a230e8974 "$WORK/tools/jadx.zip" | sha256sum -c - > "$report/tool-hashes.txt"
unzip -q "$WORK/tools/jadx.zip" -d "$WORK/tools/jadx"
chmod +x "$WORK/tools/jadx/bin/jadx"
test ! -e Visha_decompile
mkdir -p Visha_decompile
set +e
timeout 1100 java -Xmx5g -jar "$WORK/tools/apktool.jar" d -f -o Visha_decompile/apktool "$WORK/input.apk" > "$report/apktool.log" 2>&1
apktool_rc=$?
export JADX_OPTS='-Xmx6g -XX:+UseG1GC'
timeout 1300 "$WORK/tools/jadx/bin/jadx" --no-res --show-bad-code --comments-level warn --threads-count 4 --output-dir Visha_decompile/jadx "$WORK/input.apk" > "$report/jadx.log" 2>&1
jadx_rc=$?
set -e
printf 'apktool_exit=%s\njadx_exit=%s\n' "$apktool_rc" "$jadx_rc" > "$report/decompile-status.txt"
find Visha_decompile -type f -name '*.java' | wc -l | xargs printf 'java_files=%s\n' >> "$report/decompile-status.txt"
find Visha_decompile -type f -name '*.smali' | wc -l | xargs printf 'smali_files=%s\n' >> "$report/decompile-status.txt"
# JADX exit 3 means some decompilation errors; keep output but mark it partial.
if (( apktool_rc != 0 || (jadx_rc != 0 && jadx_rc != 3) )); then echo 'A decompiler failed or timed out.' >&2; exit 1; fi
if ! test -d Visha_decompile/jadx/sources || ! test -f Visha_decompile/apktool/AndroidManifest.xml; then echo 'Expected output missing.' >&2; exit 1; fi
# Decode configuration splits; retain a labelled raw fallback if decoding fails.
mkdir -p Visha_decompile/splits
: > "$report/split-status.tsv"
for split in "$WORK"/splits/config.*.apk; do
  name="$(basename "$split" .apk)"
  if timeout 120 java -Xmx3g -jar "$WORK/tools/apktool.jar" d -f -o "Visha_decompile/splits/$name" "$split" > "$report/split-$name.log" 2>&1; then
    printf '%s\tdecoded\n' "$name" >> "$report/split-status.tsv"
  else
    mkdir -p "Visha_decompile/splits/$name-raw"
    SPLIT="$split" DEST="Visha_decompile/splits/$name-raw" python3 - <<'PY'
import os,stat,zipfile
from pathlib import PurePosixPath
with zipfile.ZipFile(os.environ['SPLIT']) as z:
 for i in z.infolist():
  p=PurePosixPath(i.filename)
  if p.is_absolute() or '..' in p.parts or stat.S_ISLNK(i.external_attr >> 16): raise SystemExit('Unsafe split content')
 z.extractall(os.environ['DEST'])
PY
    printf '%s\traw-fallback\n' "$name" >> "$report/split-status.tsv"
  fi
done
cp -a "$report" Visha_decompile/report
cat > Visha_decompile/LISEZ-MOI.md <<'TXT'
# Visha Video Player décompilé

- `apktool/` : manifest décodé, ressources et Smali.
- `jadx/` : code Java reconstruit, qui ne correspond pas nécessairement au code source original.
- `splits/` : configurations du XAPK (langues, arm64 et densité). Voir `report/split-status.tsv` ; `raw-fallback` signifie non décodé.
- `report/` : empreinte de l'APK, signature, identité et journaux de décompilation.

Les erreurs ou avertissements de JADX sont consignés dans `report/jadx.log` et son code de retour dans `report/decompile-status.txt`. Consulter le Smali pour les parties incertaines. Aucune exécution de l'application n'a été effectuée.
TXT
python3 - <<'PY'
from pathlib import Path
for p in Path('Visha_decompile').rglob('*'):
 if p.is_file() and p.stat().st_size > 95_000_000:
  raise SystemExit(f'File exceeds GitHub size limit: {p}')
PY
cat "$report/decompile-status.txt"
