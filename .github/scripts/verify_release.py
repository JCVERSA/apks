#!/usr/bin/env python3
"""Independently verify the published revision-5 release asset (not the build tree)."""
from __future__ import annotations
import hashlib, importlib.util, json, sys, zipfile
from pathlib import Path

EXPECTED_APK_SHA = "19b8a9a7b0524922b21c6a8d62864bc211c3552befe91bc42599cdf9de56eaca"
EXPECTED_ORIGIN_SHA = "b478bd1a741743382d2f0f1621e2de6895dd0c6de1a339ec369bfece7a99f2ee"
EXPECTED_ORIGIN_SIZE = 27677460


def sha(p: Path) -> str:
    h = hashlib.sha256()
    with p.open('rb') as f:
        for c in iter(lambda: f.read(1 << 20), b''):
            h.update(c)
    return h.hexdigest()


def main():
    apk = Path(sys.argv[1]).resolve()
    decoded = Path(sys.argv[2]).resolve()
    out = Path(sys.argv[3]).resolve()
    out.mkdir(parents=True, exist_ok=True)
    spec = importlib.util.spec_from_file_location('patch_apk', Path(__file__).with_name('patch_apk.py'))
    pa = importlib.util.module_from_spec(spec); spec.loader.exec_module(pa)

    apk_sha = sha(apk)
    with zipfile.ZipFile(apk) as z:
        names = z.namelist()
        origin = z.read('google/origin.apk')
    origin_sha = hashlib.sha256(origin).hexdigest()
    roundtrip = [pa.verify_roundtrip_method(decoded, p) for p in pa.PATCHES]
    summary = {
        'apk': str(apk),
        'apk_sha256': apk_sha,
        'apk_sha256_matches': apk_sha == EXPECTED_APK_SHA,
        'zip_members': len(names),
        'origin_apk_size': len(origin),
        'origin_apk_size_matches': len(origin) == EXPECTED_ORIGIN_SIZE,
        'origin_apk_sha256': origin_sha,
        'origin_apk_sha256_matches': origin_sha == EXPECTED_ORIGIN_SHA,
        'patched_method_count': len(pa.PATCHES),
        'roundtrip_ok_count': sum(1 for r in roundtrip if r['ok']),
        'all_roundtrip_ok': all(r['ok'] for r in roundtrip),
    }
    (out / 'release-verify.json').write_text(json.dumps(summary, indent=2) + '\n')
    (out / 'release-roundtrip.json').write_text(json.dumps(roundtrip, indent=2) + '\n')
    print(json.dumps(summary, indent=2))
    ok = (summary['apk_sha256_matches'] and summary['origin_apk_sha256_matches']
          and summary['origin_apk_size_matches'] and summary['all_roundtrip_ok'])
    return 0 if ok else 1


if __name__ == '__main__':
    raise SystemExit(main())
