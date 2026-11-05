#!/usr/bin/env python3
"""Locate splash-screen APIs in decoded revision 5; runner only."""
import os,re,json,shutil
from pathlib import Path
root=Path(os.environ['WORK_ROOT'])/'decoded'; out=Path(os.environ['REPORT_DIR']); out.mkdir(parents=True,exist_ok=True)
patterns={
 'platform':re.compile(r'getSplashScreen|setOnExitAnimationListener|clearOnExitAnimationListener|SplashScreenView|setSplashScreenTheme|android/window/SplashScreen',re.I),
 'androidx':re.compile(r'androidx/core/splashscreen|installSplashScreen|setKeepOnScreenCondition|setOnExitAnimationListener',re.I),
 'draw':re.compile(r'reportFullyDrawn|OnPreDrawListener|setDecorFitsSystemWindows|setDrawsSystemBarBackgrounds',re.I),
 'resource':re.compile(r'windowSplashScreen|postSplashScreenTheme|windowBackground|windowActionModeOverlay',re.I),
}
rows=[]
for f in root.rglob('*'):
 if not f.is_file() or f.suffix not in ('.smali','.xml'): continue
 if f.suffix=='.xml' and f.name not in ('styles.xml','AndroidManifest.xml'): continue
 s=f.read_text(encoding='utf-8',errors='replace'); lines=s.splitlines()
 hits=[]
 for n,line in enumerate(lines,1):
  kinds=[k for k,p in patterns.items() if p.search(line)]
  if kinds: hits.append({'line':n,'kinds':kinds,'text':line.strip()[:500]})
 if hits:
  rel=f.relative_to(root); rows.append({'path':str(rel),'hits':hits})
  if f.suffix=='.smali' and len(rows)<800:
   dest=out/'files'/rel; dest.parent.mkdir(parents=True,exist_ok=True); shutil.copyfile(f,dest)
(out/'hits.json').write_text(json.dumps(rows,indent=2)+'\n')
print('matching files',len(rows))
