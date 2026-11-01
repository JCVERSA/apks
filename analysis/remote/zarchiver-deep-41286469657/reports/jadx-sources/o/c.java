package o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import q.j;

public final class c implements g {

    public final m.a f1274a = new m.a();

    public List<m.b> f1275b = Collections.emptyList();

    public final q.g f1276c;

    public final Locale f1277d;

    public c(q.g gVar, Locale locale) {
        this.f1276c = gVar;
        this.f1277d = locale;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:33:0x0062  */
    @Override
    public final void a(d dVar) {
        byte b2;
        r.a aVar;
        e.c cVar = (e.c) dVar.f1281d;
        String str = (String) dVar.f1280c;
        str.getClass();
        switch (str) {
            case "permission":
                b2 = 0;
                break;
            case "uses-sdk":
                b2 = 1;
                break;
            case "manifest":
                b2 = 2;
                break;
            case "uses-permission":
                b2 = 3;
                break;
            case "supports-screens":
                b2 = 4;
                break;
            case "application":
                b2 = 5;
                break;
            case "uses-feature":
                b2 = 6;
                break;
            default:
                b2 = -1;
                break;
        }
        m.a aVar2 = this.f1274a;
        switch (b2) {
            case 0:
                cVar.i("name");
                cVar.i("label");
                cVar.i("icon");
                cVar.i("description");
                cVar.i("group");
                cVar.i("android:protectionLevel");
                aVar2.f1216l.add(new a0.c());
                break;
            case 1:
                String strI = cVar.i("minSdkVersion");
                if (strI != null) {
                    aVar2.f1211g = strI;
                }
                String strI2 = cVar.i("targetSdkVersion");
                if (strI2 != null) {
                    aVar2.f1212h = strI2;
                }
                String strI3 = cVar.i("maxSdkVersion");
                if (strI3 != null) {
                    aVar2.f1213i = strI3;
                }
                break;
            case 2:
                aVar2.f1205a = cVar.i("package");
                aVar2.f1208d = cVar.i("versionName");
                cVar.h("revisionCode");
                aVar2.f1210f = cVar.i("split");
                cVar.i("configForSplit");
                cVar.g("isFeatureSplit");
                cVar.g("isSplitRequired");
                cVar.g("isolatedSplits");
                Long lH = cVar.h("versionCodeMajor");
                Long lH2 = cVar.h("versionCode");
                if (lH != null) {
                    if (lH2 == null) {
                        lH2 = 0L;
                    }
                    lH2 = Long.valueOf((lH.longValue() << 32) | (4294967295L & lH2.longValue()));
                }
                aVar2.f1209e = lH2;
                cVar.i("installLocation");
                cVar.i("compileSdkVersion");
                cVar.i("compileSdkVersionCodename");
                cVar.i("platformBuildVersionCode");
                cVar.i("platformBuildVersionName");
                break;
            case 3:
                aVar2.f1214j.add(cVar.i("name"));
                break;
            case 4:
                cVar.g("anyDensity");
                aVar2.getClass();
                cVar.g("smallScreens");
                cVar.g("normalScreens");
                cVar.g("largeScreens");
                break;
            case 5:
                cVar.g("debuggable");
                aVar2.getClass();
                String strI4 = cVar.i("label");
                if (strI4 != null) {
                    aVar2.f1206b = strI4;
                }
                r.a[] aVarArr = (r.a[]) cVar.f588a;
                int length = aVarArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        aVar = aVarArr[i2];
                        if (!aVar.f1419b.equals("icon")) {
                            i2++;
                        }
                    } else {
                        aVar = null;
                    }
                }
                if (aVar != null) {
                    p.b bVar = aVar.f1421d;
                    if (bVar instanceof p.b.i) {
                        long j2 = ((long) ((p.b.i) bVar).f1313a) & 4294967295L;
                        q.g gVar = this.f1276c;
                        List<q.g.a> listA = gVar.a(j2);
                        if (!listA.isEmpty()) {
                            ArrayList arrayList = new ArrayList();
                            boolean z2 = false;
                            for (q.g.a aVar3 : listA) {
                                j jVar = aVar3.f1354b;
                                String strA = aVar3.f1355c.a(gVar, this.f1277d);
                                int i3 = jVar.f1363g;
                                if (i3 == 0) {
                                    aVar2.f1207c = strA;
                                    z2 = true;
                                }
                                arrayList.add(new m.b(i3, strA));
                            }
                            if (!z2) {
                                aVar2.f1207c = ((m.b) arrayList.get(0)).f1217a;
                            }
                            this.f1275b = arrayList;
                        }
                    } else {
                        String str2 = aVar.f1422e;
                        if (str2 != null) {
                            aVar2.f1207c = str2;
                            this.f1275b = Collections.singletonList(new m.b(0, str2));
                        }
                    }
                }
                break;
            case 6:
                String strI5 = cVar.i("name");
                cVar.g("required");
                if (strI5 != null) {
                    aVar2.f1215k.add(new m.c(strI5));
                }
                break;
        }
    }

    @Override
    public final void b() {
    }

    @Override
    public final void c() {
    }

    @Override
    public final void d() {
    }
}
