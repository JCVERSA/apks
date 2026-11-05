#!/usr/bin/env python3
"""Exercise revision 5 launcher lifecycle only on a disposable emulator."""
import argparse, hashlib, json, re, time
from pathlib import Path
from emulator_ab_test import Variant, adb, shell, redact
p=argparse.ArgumentParser(); p.add_argument('--apk',required=True); p.add_argument('--out',required=True); a=p.parse_args()
out=Path(a.out); v=Variant('revision5',a.apk,out)
adb('wait-for-device', timeout=180); adb('root',timeout=60); adb('wait-for-device',timeout=180)
shell('svc power stayon true'); shell('pm uninstall com.snaptube.premium')
rc,data=adb('install','-r','-g',a.apk,timeout=240)
v.event('install',rc=rc,output=redact(data.decode(errors='replace')),sha256=hashlib.sha256(Path(a.apk).read_bytes()).hexdigest())
if rc: raise RuntimeError('install failed')
for perm in ('POST_NOTIFICATIONS','READ_EXTERNAL_STORAGE','WRITE_EXTERNAL_STORAGE'):
    shell(f'pm grant com.snaptube.premium android.permission.{perm} >/dev/null 2>&1')
for op in ('MANAGE_EXTERNAL_STORAGE','SYSTEM_ALERT_WINDOW','WRITE_SETTINGS'):
    shell(f'appops set com.snaptube.premium {op} allow >/dev/null 2>&1')
shell('logcat -c')
def launch(stage):
    rc,data=shell('monkey -p com.snaptube.premium -c android.intent.category.LAUNCHER 1')
    v.event('launch',stage=stage,rc=rc,output=redact(data.decode(errors='replace')[-500:]))
    for i in range(8):
        time.sleep(8 if i < 3 else 15)
        v.capture(f'{stage}-{i}')
        rc,pid=shell('pidof com.snaptube.premium')
        v.event('pid',stage=stage,iteration=i,running=rc==0 and bool(pid.strip()))
        if stage=='first': v.tap_safe(allow_dismiss=True)
    rc,data=shell('dumpsys activity activities')
    lines=[redact(x) for x in data.decode(errors='replace').splitlines() if re.search(r'snaptube|mResumed|topResumed|mCurrentFocus',x,re.I)]
    (v.root/f'activity-{stage}.txt').write_text('\n'.join(lines)+'\n')
try:
    launch('first')
    shell('input keyevent KEYCODE_HOME'); time.sleep(3)
    launch('resume-home')
    shell('am force-stop com.snaptube.premium'); time.sleep(3)
    launch('cold-relaunch-1')
    shell('am force-stop com.snaptube.premium'); time.sleep(3)
    launch('cold-relaunch-2')
finally:
    rc,raw=adb('logcat','-b','crash','-d','-v','threadtime',timeout=90)
    blocks=re.split(r'(?=\d\d-\d\d \d\d:\d\d:\d\d\.\d+\s+\d+\s+\d+ [FE] (?:AndroidRuntime|DEBUG)\s*: (?:FATAL EXCEPTION|\*\*\*))',raw.decode(errors='replace'))
    (v.root/'crash-buffer-filtered.txt').write_text('\n'.join(redact(b) for b in blocks if 'com.snaptube.premium' in b)[-200000:]+'\n')
    v.finish()
    (out/'summary.json').write_text(json.dumps({'status':'EVIDENCE_COLLECTED_REVIEW_REQUIRED','scope':'revision 5 only; isolated Android 12 emulator, no account; launcher first start and relaunches'},indent=2)+'\n')
