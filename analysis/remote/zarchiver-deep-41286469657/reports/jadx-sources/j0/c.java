package j0;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import d0.i;
import h0.h;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

public final class c implements h0.b {

    public int f1153a = 0;

    public o0.a f1154b = null;

    public static void l(String str, ArrayList arrayList, d0.b bVar) {
        byte b2;
        byte b3;
        byte bN = a.n(str, true);
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                p0.d.a aVar = (p0.d.a) it.next();
                String str2 = aVar.f1323a;
                if (str2 != null) {
                    if (aVar.f1329g) {
                        byte bL = a.l(str2, bN);
                        if (bL == 0) {
                            bL = a.m(str + '/' + aVar.f1323a);
                        }
                        b3 = bL;
                        b2 = 4;
                    } else {
                        b2 = -1;
                        b3 = 0;
                    }
                    bVar.add(new d0.d(aVar.f1323a, b2, b3, aVar.f1325c, aVar.f1330h ? -2L : aVar.f1324b));
                }
            }
        } catch (Exception unused) {
        }
    }

    public static h0.e.b m(o0.a aVar, File file) {
        if (aVar == null || file == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!p0.d.d(aVar, arrayList, file.getAbsolutePath(), 5, true) || arrayList.isEmpty()) {
            return null;
        }
        h0.e.b bVar = new h0.e.b();
        p0.d.a aVar2 = (p0.d.a) arrayList.get(0);
        String str = aVar2.f1323a;
        if (str != null && str.endsWith(file.getName())) {
            bVar.f1088a = !aVar2.f1329g;
            bVar.f1089b = aVar2.f1325c;
            bVar.f1090c = aVar2.f1324b;
            bVar.f1092e = aVar2.f1330h;
            bVar.f1093f = aVar2.f1331i;
            bVar.f1094g = aVar2.f1328f;
            bVar.f1095h = aVar2.f1327e;
            bVar.f1096i = aVar2.f1326d;
        }
        return bVar;
    }

    @Override
    public final int a(h hVar) {
        return 0;
    }

    @Override
    public final i b(i iVar) {
        int size = iVar.size();
        String[] strArr = new String[size];
        Iterator<d0.d> it = iVar.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            d0.f fVar = (d0.f) it.next();
            strArr[i2] = fVar.f552k.f1108c + '/' + fVar.f539a;
            i2++;
        }
        ArrayList<p0.d.a> arrayList = new ArrayList(size);
        n();
        p0.d.e(this.f1154b, arrayList, "", strArr, 6, false);
        o0.a aVar = this.f1154b;
        if (aVar != null) {
            aVar.close();
            this.f1154b = null;
        }
        i iVar2 = new i(iVar.size());
        for (p0.d.a aVar2 : arrayList) {
            iVar2.i(new d0.f(new h("root", a0.c.A(aVar2.f1323a)), a0.c.y(aVar2.f1323a), null, aVar2.f1329g ? (byte) 4 : (byte) -1, aVar2.f1330h ? -2L : aVar2.f1324b, aVar2.f1325c));
        }
        return iVar2;
    }

    @Override
    public final int c(String str, h hVar) {
        return -1;
    }

    @Override
    public final boolean d(h hVar) {
        return false;
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [boolean] */
    @Override
    public final boolean e(h hVar, String str, int[] iArr, int i2, h0.e.c cVar, v0.d dVar) {
        String str2;
        h hVar2;
        String str3;
        boolean z2 = false;
        int i3 = 0;
        z2 = false;
        if (!hVar.j()) {
            return false;
        }
        n();
        String[] strArrC = v0.h.c(str, true);
        o0.a aVar = this.f1154b;
        String str4 = hVar.f1108c;
        ?? K = a0.c.K(i2, 1);
        if (str4 == null) {
            z2 = false;
        } else if (p0.a.b()) {
            StringBuilder sb = new StringBuilder();
            sb.append(p0.a.a());
            sb.append(" find '");
            sb.append(str4.replace("'", "'\\''"));
            sb.append("' -name '");
            sb.append(strArrC[0].replace("'", "'\\''"));
            sb.append("'");
            if (K > 0) {
                sb.append(" -maxdepth ");
                sb.append(K == true ? 1 : 0);
            }
            if (aVar.b(sb.toString())) {
                String strD = a0.c.d(str4);
                Pattern patternCompile = (strArrC.length <= 1 || (str3 = strArrC[1]) == null) ? null : Pattern.compile(str3);
                while (true) {
                    try {
                        String strK = aVar.k(true);
                        if (strK == null) {
                            break;
                        }
                        if (dVar == null || !dVar.isCancelled()) {
                            if (strK.length() >= 2 && strK.charAt(i3) == '~') {
                                String[] strArrH = v0.h.h(strK, '\t');
                                if (strArrH.length >= 2 && (str2 = strArrH[1]) != null) {
                                    if (h0.e.g(str2, iArr)) {
                                        int iLastIndexOf = strArrH[1].lastIndexOf(47);
                                        String strSubstring = iLastIndexOf < 1 ? strArrH[1] : strArrH[1].substring(iLastIndexOf + 1);
                                        if (patternCompile == null || patternCompile.matcher(strSubstring.toLowerCase(Locale.getDefault())).matches()) {
                                            h0.e.b bVar = new h0.e.b();
                                            long jJ0 = a0.c.j0(0L, strArrH[2]);
                                            bVar.f1090c = jJ0;
                                            bVar.f1088a = jJ0 != -1;
                                            bVar.f1089b = a0.c.j0(0L, strArrH[3]) * 1000;
                                            bVar.f1095h = strArrH[4];
                                            bVar.f1094g = strArrH[5];
                                            if (iLastIndexOf < 1) {
                                                hVar2 = new h("root", strD);
                                            } else {
                                                hVar2 = new h("root", strD + strArrH[1].substring(0, iLastIndexOf));
                                            }
                                            cVar.d(bVar, hVar2, strSubstring, null);
                                        }
                                    }
                                }
                            }
                            patternCompile = patternCompile;
                            i3 = 0;
                        } else {
                            aVar.m("$C\n");
                        }
                        patternCompile = patternCompile;
                        i3 = 0;
                    } catch (Exception unused) {
                    }
                }
                z2 = true;
            }
        }
        o0.a aVar2 = this.f1154b;
        if (aVar2 != null) {
            aVar2.close();
            this.f1154b = null;
        }
        return z2;
    }

    @Override
    public final int f() {
        return this.f1153a;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:88:0x017c  */
    /* JADX WARN: Code duplicated, block: B:89:0x0186 A[PHI: r20 r24
      0x0186: PHI (r20v5 java.util.Iterator<java.lang.String>) = (r20v2 java.util.Iterator<java.lang.String>), (r20v8 java.util.Iterator<java.lang.String>) binds: [B:87:0x017a, B:80:0x0167] A[DONT_GENERATE, DONT_INLINE]
      0x0186: PHI (r24v7 java.lang.String) = (r24v4 java.lang.String), (r24v9 java.lang.String) binds: [B:87:0x017a, B:80:0x0167] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:99:0x01a2  */
    @Override
    public final boolean g(h hVar, d0.b bVar, int i2) {
        o0.a aVarC;
        boolean z2;
        String str;
        Iterator<String> it;
        boolean z3;
        byte b2;
        byte b3;
        long j2;
        boolean z4;
        this.f1153a = 0;
        File file = hVar.toFile();
        if (file == null) {
            return false;
        }
        bVar.clear();
        if (file.getParent() != null && a0.c.K(i2, 4)) {
            bVar.add(new d0.d("..", (byte) 3));
        }
        int size = bVar.size();
        if (t0.b.i(hVar.f1108c)) {
            aVarC = o0.a.c(t0.b.f2092m);
            if (!aVarC.f()) {
                if (aVarC.f1296j == 2) {
                    ZApp.i(R.string.MES_SHIZUKU_IS_NOT_RUNNING);
                }
                aVarC = null;
            }
        } else {
            aVarC = null;
        }
        if (aVarC == null) {
            aVarC = o0.a.c(0);
        }
        String absolutePath = file.getAbsolutePath();
        boolean zK = a0.c.K(i2, 32);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 30 && absolutePath.startsWith("/data/data")) {
            absolutePath = absolutePath.replaceFirst("/data/data", "/data_mirror/data_ce/null/0");
        }
        ArrayList arrayList = new ArrayList();
        boolean zD = p0.d.d(aVarC, arrayList, absolutePath, (zK ? 4 : 0) | 8, false);
        int iD = aVarC.d();
        if (!zD || (iD != 1 && iD != 3 && arrayList.isEmpty())) {
            if (iD != 1 && iD != 3) {
                if (i3 < 21) {
                    ArrayList<String> arrayListB = g.b(absolutePath, aVarC);
                    if (arrayListB.size() > 0) {
                        arrayList.clear();
                        z2 = true;
                        p0.d.e(aVarC, arrayList, absolutePath, (String[]) arrayListB.toArray(new String[0]), (zK ? 4 : 0) | 2, false);
                        if (arrayList.size() > 0) {
                            l(absolutePath, arrayList, bVar);
                        }
                    } else {
                        z2 = true;
                    }
                } else {
                    z2 = true;
                    byte bN = a.n(absolutePath, true);
                    String strD = a0.c.d(absolutePath);
                    for (Iterator<String> it2 = g.b(strD, aVarC).iterator(); it2.hasNext(); it2 = it) {
                        String next = it2.next();
                        String str2 = strD + next;
                        try {
                            StructStat structStatLstat = Os.lstat(str2);
                            if (OsConstants.S_ISLNK(structStatLstat.st_mode)) {
                                try {
                                    structStatLstat = Os.stat(str2);
                                    z3 = true;
                                } catch (Exception unused) {
                                    str = strD;
                                    it = it2;
                                    str2 = str2;
                                    if ("/storage/emulated".equals(str2)) {
                                        bVar.add(new d0.d(next, (byte) 4));
                                    }
                                    strD = str;
                                }
                            } else {
                                z3 = false;
                            }
                            if (OsConstants.S_ISDIR(structStatLstat.st_mode)) {
                                byte bL = a.l(next, bN);
                                if (bL == 0) {
                                    bL = a.m(str2);
                                }
                                b3 = bL;
                                b2 = 4;
                            } else {
                                b2 = -1;
                                b3 = 0;
                            }
                            str = strD;
                            try {
                                long j3 = structStatLstat.st_mtime * 1000;
                                if (z3) {
                                    j2 = -2;
                                    it = it2;
                                } else {
                                    it = it2;
                                    try {
                                        j2 = structStatLstat.st_size;
                                    } catch (Exception unused2) {
                                        if ("/storage/emulated".equals(str2)) {
                                            bVar.add(new d0.d(next, (byte) 4));
                                        }
                                        strD = str;
                                    }
                                }
                                try {
                                    bVar.add(new d0.d(next, b2, b3, j3, j2));
                                } catch (Exception unused3) {
                                    if ("/storage/emulated".equals(str2)) {
                                        bVar.add(new d0.d(next, (byte) 4));
                                    }
                                    strD = str;
                                }
                            } catch (Exception unused4) {
                                it = it2;
                                if ("/storage/emulated".equals(str2)) {
                                    bVar.add(new d0.d(next, (byte) 4));
                                }
                                strD = str;
                            }
                        } catch (Exception unused5) {
                            str = strD;
                        }
                        strD = str;
                    }
                }
                zD = bVar.size() > size;
                z4 = true;
            }
            aVarC.close();
            if (zD) {
                this.f1153a = R.string.MES_ACCESS_DENIED;
            } else if (aVarC.d() != 0 && !z4) {
                hVar.q("root");
            }
            return z2;
        }
        l(absolutePath, arrayList, bVar);
        if (bVar.size() <= size) {
            this.f1153a = R.string.MES_EMPTY_FOLDER;
        }
        z2 = true;
        z4 = false;
        aVarC.close();
        if (zD) {
            this.f1153a = R.string.MES_ACCESS_DENIED;
        } else if (aVarC.d() != 0) {
            hVar.q("root");
        }
        return z2;
    }

    @Override
    public final h0.e.a h(h hVar) {
        return null;
    }

    @Override
    public final h0.e.b i(h hVar, v0.d dVar) {
        if (!hVar.j()) {
            return null;
        }
        n();
        File file = hVar.toFile();
        h0.e.b bVarM = file != null ? m(this.f1154b, file) : null;
        if (bVarM != null && !bVarM.f1088a) {
            String absolutePath = file.getAbsolutePath();
            if (!"/".equals(absolutePath)) {
                o0.a aVar = this.f1154b;
                aVar.f1288b = "$C";
                p0.c.c(aVar, absolutePath, bVarM);
            }
        }
        o0.a aVar2 = this.f1154b;
        if (aVar2 != null) {
            aVar2.close();
            this.f1154b = null;
        }
        return bVarM;
    }

    @Override
    public final h0.e.b j(h hVar, String[] strArr, v0.d dVar) {
        h0.e.b bVar;
        if (!hVar.j()) {
            return null;
        }
        n();
        try {
            ArrayList<p0.d.a> arrayList = new ArrayList();
            if (p0.d.e(this.f1154b, arrayList, hVar.r(), strArr, 5, true) && !arrayList.isEmpty()) {
                bVar = new h0.e.b();
                try {
                    for (p0.d.a aVar : arrayList) {
                        if (dVar != null && dVar.isCancelled()) {
                            this.f1154b.m("$C");
                            return null;
                        }
                        if (aVar.f1329g) {
                            h0.e.b bVar2 = new h0.e.b();
                            if (p0.c.c(this.f1154b, a0.c.i(hVar.r(), aVar.f1323a), bVar2)) {
                                bVar.f1090c += bVar2.f1090c;
                                bVar.f1091d += bVar2.f1091d;
                            }
                        } else {
                            bVar.f1090c += aVar.f1324b;
                            bVar.f1091d++;
                        }
                    }
                } catch (Exception unused) {
                }
                o0.a aVar2 = this.f1154b;
                if (aVar2 != null) {
                    aVar2.close();
                    this.f1154b = null;
                }
                return bVar;
            }
            return null;
        } catch (Exception unused2) {
            bVar = null;
        }
    }

    @Override
    public final h0.e.b k(h[] hVarArr, String[] strArr, v0.d dVar) {
        return null;
    }

    public final void n() {
        if (o0.a.g(t0.b.f2092m)) {
            o0.a aVarC = o0.a.c(t0.b.f2092m);
            this.f1154b = aVarC;
            if (aVarC.f()) {
                return;
            }
            this.f1154b = null;
        }
    }
}
