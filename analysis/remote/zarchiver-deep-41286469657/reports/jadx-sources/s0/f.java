package s0;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class f extends g {

    public List<h0.h> f2013i;

    public List<String> f2014j;

    public List<String> f2015k;

    public List<h0.h> f2016l;

    public List<String> f2017m;

    public f(ZArchiverService zArchiverService, int i2) {
        super(zArchiverService, (byte) 1, i2);
    }

    @Override
    public final void a(String str) {
    }

    @Override
    public final void c(long j2) {
    }

    /* JADX WARN: Code duplicated, block: B:153:0x0335  */
    /* JADX WARN: Code duplicated, block: B:81:0x01fa  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v29 */
    @Override
    public final void p() {
        int i2;
        int i3;
        h0.h hVar;
        boolean z2;
        boolean z3;
        int length;
        List<h0.h> list = this.f2013i;
        ?? r4 = 1;
        if (list == null || this.f2016l == null || this.f2014j == null || !((this.f2015k == null || list.size() == this.f2015k.size()) && this.f2013i.size() == this.f2016l.size() && this.f2013i.size() == this.f2014j.size())) {
            q(1179648);
            this.f2018a.l(this, true, null, null);
            return;
        }
        boolean z4 = false;
        boolean z5 = (this.f2021d & (-2)) == 0;
        int i4 = 2;
        if (z5) {
            Iterator<h0.h> it = this.f2013i.iterator();
            while (it.hasNext()) {
                if (!d(it.next(), false)) {
                    return;
                }
            }
            if (!f(a0.c.y(this.f2013i.get(0).f1108c), this.f2016l, 3)) {
                return;
            }
        } else {
            Iterator<h0.h> it2 = this.f2013i.iterator();
            while (it2.hasNext()) {
                if (!e(2, 0, null, it2.next())) {
                    return;
                }
            }
            if (k(64)) {
                r((byte) 14);
            } else {
                r((byte) 5);
            }
        }
        if (k(16)) {
            if (this.f2013i.size() == 1) {
                ZArchiverService zArchiverService = this.f2018a;
                this.f2016l.get(0);
                this.f2015k.get(0);
                zArchiverService.getClass();
            }
            i2 = 1;
        } else {
            i2 = 0;
        }
        int size = this.f2013i.size();
        int i5 = 0;
        boolean z6 = true;
        boolean z7 = false;
        while (true) {
            if (i5 >= size) {
                i3 = 92;
                z4 = z6;
                break;
            }
            h0.h hVar2 = this.f2016l.get(i5);
            if (this.f2013i.size() > r4 && this.f2017m != null) {
                String[] strArr = C2JBridge.f1621k;
                strArr[this.f2020c] = this.f2017m.get(i5) + " (" + (i5 + 1) + "/" + this.f2017m.size() + ")";
                ZArchiverService zArchiverService2 = this.f2018a;
                int i6 = this.f2020c;
                zArchiverService2.o(i6, strArr[i6]);
            }
            String str = this.f2013i.get(i5).f1108c;
            e0.a.b(this.f2020c, r4, str);
            List<String> list2 = this.f2015k;
            String str2 = list2 != null ? list2.get(i5) : "";
            if (isCancelled()) {
                i3 = 92;
                break;
            }
            if (!k(r4)) {
                i3 = 92;
                if (h()) {
                    r0.c cVarC = r0.c.c(hVar2, false);
                    if (cVarC != null) {
                        byte[] bArr = a0.c.f19k;
                        int i7 = this.f2020c;
                        bArr[i7] = (byte) (bArr[i7] | (-128));
                    }
                    if (cVarC == null && hVar2.o()) {
                        String str3 = hVar2.f1108c;
                        int i8 = 1;
                        while (i8 < 10) {
                            h0.f fVarU = h0.f.u(hVar2);
                            if (!fVarU.d() || fVarU.k()) {
                                break;
                            }
                            i8++;
                            hVar2 = new h0.h(hVar2.f1106a, a0.c.i(a0.c.A(str3), a0.c.y(str3) + "~" + i8));
                        }
                    }
                    hVar = hVar2;
                    i3 = 92;
                    boolean zCExtract = C2JBridge.cExtract(this.f2020c, str, this.f2014j.get(i5), str2, cVarC != null ? cVarC.f1428b : hVar.f1108c, i2);
                    if (cVarC != null) {
                        try {
                            this.f2018a.e(this.f2020c, -1);
                        } catch (Exception unused) {
                        }
                        if (cVarC.a(this)) {
                            z2 = false;
                        } else {
                            z2 = false;
                            e0.a.d(this.f2020c, 0, "Failed to move files to destination");
                        }
                    } else {
                        z2 = false;
                    }
                    z3 = zCExtract;
                }
                z4 = false;
                break;
            }
            o0.a aVarJ = j();
            String str4 = this.f2014j.get(i5);
            String str5 = hVar2.f1108c;
            ArrayList<o0.a> arrayList = r0.a.f1423a;
            if (aVarJ.f()) {
                r0.a.b(aVarJ);
                String strB = v0.c.b(str);
                String strB2 = v0.c.b(str5);
                String strG = r0.a.g(aVarJ, strB2, r4);
                String strE = r0.a.e(str4);
                String strE2 = r0.a.e(str2);
                boolean zI = ZArchiverService.i(i4);
                if (aVarJ.b("cd " + strB2)) {
                    aVarJ.k(z4);
                    StringBuilder sb = new StringBuilder();
                    sb.append(a0.c.r());
                    sb.append(zI ? " xp '" : " x '");
                    sb.append(strB.replace("'", "'\\''"));
                    sb.append("' ");
                    sb.append(strE);
                    sb.append(" '-o");
                    sb.append(strB2.replace("'", "'\\''"));
                    sb.append("' -- ");
                    sb.append(strE2);
                    if (aVarJ.b(sb.toString()) && a0.c.S(aVarJ) == 2) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                } else {
                    z3 = false;
                }
                if (strG != null) {
                    r0.a.g(aVarJ, strG, false);
                }
                r0.a.d(aVarJ);
            } else {
                z3 = false;
            }
            boolean z8 = ZArchiverService.i(4) && p0.f.a(hVar2);
            boolean z9 = !z8 && x0.g.e(hVar2.f1108c);
            if ((z8 || z9) && !str2.isEmpty()) {
                String[] strArrH = v0.h.h(this.f2014j.get(i5), '\\');
                int length2 = strArrH.length;
                int i9 = 0;
                while (true) {
                    if (i9 >= length2) {
                        length = 0;
                        break;
                    }
                    String str6 = strArrH[i9];
                    if (str6.startsWith("-z")) {
                        length = (str6.length() - 2) + 1;
                        break;
                    }
                    i9++;
                }
                i3 = 92;
                String[] strArrH2 = v0.h.h(str2, '\\');
                if (z8) {
                    for (String strSubstring : strArrH2) {
                        o0.a aVarJ2 = j();
                        if (length != 0) {
                            strSubstring = strSubstring.substring(length);
                        }
                        a0.c.d0(aVarJ2, hVar2, strSubstring);
                    }
                } else {
                    for (String strSubstring2 : strArrH2) {
                        o0.a aVarJ3 = j();
                        if (length != 0) {
                            strSubstring2 = strSubstring2.substring(length);
                        }
                        a0.c.c0(aVarJ3, hVar2, strSubstring2);
                    }
                }
            } else {
                i3 = 92;
            }
            hVar = hVar2;
            z2 = false;
            if (isCancelled()) {
                z4 = false;
                break;
            }
            if (!z3) {
                e0.a.c(this.f2020c, z2);
            }
            n();
            z6 = z6 && z3;
            if (!z7) {
                z7 = x0.g.b(hVar) == 1 && q0.f.b(hVar);
            }
            i5++;
            r4 = 1;
            z4 = false;
            i4 = 2;
        }
        if (z5 && z7) {
            int size2 = this.f2013i.size();
            for (int i10 = 0; i10 < size2; i10++) {
                h0.h hVar3 = this.f2016l.get(i10);
                if (x0.g.b(hVar3) == 1 && q0.f.b(hVar3)) {
                    q0.f.a(hVar3.f1108c, true);
                }
            }
        }
        q(z4 ? 1179648 : 1114112);
        this.f2018a.l(this, z4, this.f2025h, null);
        if (z5) {
            this.f2018a.m(this.f2020c, 1, null);
        } else if (isCancelled()) {
            return;
        }
        if (k(16)) {
            if (s(!z4 || l()) != null) {
                String strSubstring3 = "";
                String str7 = this.f2014j.get(0);
                if (str7.contains("\\-p")) {
                    strSubstring3 = str7.substring(str7.indexOf("\\-p") + 3);
                    if (strSubstring3.contains("\\")) {
                        strSubstring3 = strSubstring3.substring(0, strSubstring3.indexOf(i3));
                    }
                }
                if (v0.h.e(strSubstring3)) {
                    String[] strArr2 = C2JBridge.f1616f;
                    if (!v0.h.e(strArr2[this.f2020c])) {
                        String str8 = strArr2[this.f2020c];
                    }
                }
                ZArchiverService zArchiverService3 = this.f2018a;
                int i11 = this.f2020c;
                this.f2013i.get(0);
                zArchiverService3.k(i11, null, this.f2021d & 8);
                return;
            }
            return;
        }
        if (!k(32)) {
            if (k(128)) {
                if (s(!z4 || l()) != null) {
                    ZArchiverService zArchiverService4 = this.f2018a;
                    int i12 = this.f2020c;
                    this.f2013i.get(0);
                    zArchiverService4.k(i12, null, 128);
                    return;
                }
                return;
            }
            return;
        }
        ZArchiverService zArchiverService5 = this.f2018a;
        int i13 = this.f2020c;
        h0.h hVar4 = this.f2013i.get(0);
        h0.h hVar5 = this.f2016l.get(0);
        synchronized (zArchiverService5) {
            Intent intentH = ZArchiverService.h(i13, 0);
            intentH.putExtra("iAction", 23);
            intentH.putExtra("oPath", hVar5);
            intentH.putExtra("sFilePath", hVar4);
            zArchiverService5.sendBroadcast(intentH);
        }
    }

    public final String s(boolean z2) {
        List<String> list = this.f2015k;
        if (list == null) {
            return null;
        }
        String strSubstring = list.get(0);
        if (!strSubstring.isEmpty() && strSubstring.charAt(0) == '\\') {
            strSubstring = strSubstring.substring(1);
        }
        if (z2 && n0.e.g(strSubstring) <= 0) {
            return null;
        }
        return strSubstring;
    }
}
