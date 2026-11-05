#!/usr/bin/env python3
"""Patch only the rev5 splash keep-on-screen predicate; no entitlement changes."""
import os, re
from pathlib import Path
p=Path(os.environ['WORK_ROOT'])/'decoded/smali_classes3/com/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2.smali'
s=p.read_text()
old='''.method public static final b()Z
    .locals 1

    invoke-static {}, Lcom/snaptube/ads/SplashScreenWrapper;->b()Z

    move-result v0

    return v0
.end method'''
new='''.method public static final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method'''
if s.count(old)!=1: raise SystemExit('Expected exact revision 5 splash predicate not found; refusing to patch')
p.write_text(s.replace(old,new))
print('Patched one predicate; false allows the pre-draw listener to remove itself.')
