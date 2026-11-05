#!/usr/bin/env python3
"""Revision 5 only: isolated fresh install, relaunches and public download attempts."""
import argparse, hashlib, json, re, time
from pathlib import Path
from emulator_ab_test import Variant, TEST_CASES, adb, shell, redact

p = argparse.ArgumentParser()
p.add_argument('--apk', required=True)
p.add_argument('--out', required=True)
a = p.parse_args()
out = Path(a.out); out.mkdir(parents=True, exist_ok=True)
v = Variant('revision5', a.apk, out)

def restart(stage):
    shell('am force-stop com.snaptube.premium')
    time.sleep(3)
    rc, result = shell('monkey -p com.snaptube.premium -c android.intent.category.LAUNCHER 1', timeout=90)
    v.event('launcher_start', stage=stage, rc=rc, output=redact(result.decode('utf-8', 'replace')[-500:]))
    for seconds in (8, 25):
        time.sleep(seconds)
        v.capture(f'{stage}-{seconds}')
        rc, pid = shell('pidof com.snaptube.premium')
        v.event('process_state', stage=stage, after_seconds=seconds, running=rc == 0 and bool(pid.strip()))

try:
    adb('wait-for-device', timeout=180)
    adb('root', timeout=60)
    adb('wait-for-device', timeout=180)
    shell('svc power stayon true')
    v.event('apk_sha256', value=hashlib.sha256(Path(a.apk).read_bytes()).hexdigest())
    v.install_and_prepare()
    restart('relaunch-before-download')
    for case in TEST_CASES:
        try:
            v.share_and_attempt_download(case)
        except Exception as e:
            v.event('attempt_error', tag=case['tag'], message=str(e))
    restart('relaunch-after-download')
    v.event('diagnostic_end')
finally:
    try:
        # Capture crash buffer for terminated processes as well as current PID.
        rc, raw = adb('logcat', '-b', 'crash', '-d', '-v', 'threadtime', timeout=90)
        lines = raw.decode('utf-8', 'replace').splitlines()
        # Only process-associated Java/native crash blocks; emulator is ephemeral.
        text = '\n'.join(lines)
        blocks = re.split(r'(?=\d\d-\d\d \d\d:\d\d:\d\d\.\d+\s+\d+\s+\d+ [FE] (?:AndroidRuntime|DEBUG)\s*: (?:FATAL EXCEPTION|\*\*\*))', text)
        relevant = [redact(b) for b in blocks if 'com.snaptube.premium' in b]
        (v.root / 'crash-buffer-filtered.txt').write_text('\n'.join(relevant)[-200000:] + '\n')
        v.finish()
    finally:
        (out / 'summary.json').write_text(json.dumps({'scope':'revision 5 only; isolated temporary emulator, public videos, no account', 'status':'EVIDENCE_COLLECTED_REVIEW_REQUIRED', 'test_cases':TEST_CASES}, indent=2)+'\n')
