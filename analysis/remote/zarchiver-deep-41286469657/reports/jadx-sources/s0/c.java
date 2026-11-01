package s0;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class c extends g {

    public List<h0.h> f2001i;

    public List<String> f2002j;

    public h0.h f2003k;

    public String f2004l;

    public c(ZArchiverService zArchiverService, int i2) {
        super(zArchiverService, (byte) 3, i2);
    }

    @Override
    public final void a(String str) {
    }

    @Override
    public final void c(long j2) {
    }

    /* JADX WARN: Code duplicated, block: B:196:0x0459  */
    /* JADX WARN: Code duplicated, block: B:47:0x00db  */
    /* JADX WARN: Code duplicated, block: B:83:0x0240  */
    @Override
    public final void p() {
        h0.h[] hVarArr;
        int i2;
        ZArchiverService zArchiverService;
        boolean z2;
        String strE;
        int i3;
        String str;
        h0.h[] hVarArr2;
        h0.h[] hVarArr3;
        String str2;
        boolean z3;
        List<h0.h> list = this.f2001i;
        ZArchiverService zArchiverService2 = this.f2018a;
        int i4 = 1;
        if (list == null || list.isEmpty() || this.f2002j == null || this.f2003k == null || (this.f2001i.size() > 1 && this.f2001i.size() != this.f2002j.size())) {
            q(1179648);
            zArchiverService2.l(this, true, null, null);
            return;
        }
        int i5 = k(4) ? 4 : 3;
        Iterator<h0.h> it = this.f2001i.iterator();
        while (it.hasNext()) {
            if (!d(it.next(), true)) {
                return;
            }
        }
        if (g(this.f2003k, this.f2002j, i5, 1)) {
            boolean z4 = false;
            String str3 = "";
            if (k(4)) {
                ArrayList arrayList = new ArrayList(this.f2001i.size());
                String strD = a0.c.d(this.f2003k.r());
                for (h0.h hVar : this.f2001i) {
                    String strR = hVar.r();
                    for (String str4 : this.f2002j) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str4.startsWith("/") ? "" : strD);
                        sb.append(str4);
                        sb.append("/");
                        if (strR.startsWith(sb.toString())) {
                            arrayList.add(hVar);
                            break;
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    hVarArr = (h0.h[]) arrayList.toArray(new h0.h[0]);
                } else {
                    hVarArr = null;
                }
            } else {
                hVarArr = null;
            }
            int size = this.f2001i.size();
            int i6 = 0;
            boolean z5 = true;
            while (true) {
                i2 = this.f2020c;
                if (i6 < size) {
                    h0.h hVar2 = this.f2001i.get(i6);
                    String str5 = hVar2.f1108c;
                    if (this.f2001i.size() > i4) {
                        String[] strArr = C2JBridge.f1621k;
                        String str6 = hVar2.e() + " (" + (i6 + 1) + "/" + this.f2001i.size() + ")";
                        strArr[i2] = str6;
                        zArchiverService2.o(i2, str6);
                        strE = "\\" + this.f2002j.get(i6);
                    } else {
                        strE = e0.b.e(this.f2002j);
                    }
                    e0.a.b(i2, z4, str5);
                    if (!isCancelled()) {
                        int i7 = 100;
                        if (!k(i4)) {
                            i3 = size;
                            zArchiverService = zArchiverService2;
                            str3 = str3;
                            if (!h()) {
                                z2 = false;
                                break;
                            }
                            r0.c cVarC = r0.c.c(hVar2, true);
                            if (cVarC == null) {
                                if (!k(2)) {
                                    str = str5;
                                    break;
                                }
                                String strA = a0.c.A(str5);
                                h0.f fVarU = h0.f.u(new h0.h(a0.c.A(str5)));
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= 100) {
                                        str = str5;
                                        break;
                                    }
                                    if (!fVarU.f(strA + ".t" + i8)) {
                                        str = str5 + ".t" + i8;
                                        break;
                                    }
                                    i8++;
                                }
                            } else {
                                byte[] bArr = a0.c.f19k;
                                bArr[i2] = (byte) (bArr[i2] | (-128));
                                str = cVarC.f1428b;
                            }
                            boolean z6 = C2JBridge.cCompress(i2, str, this.f2004l, strE, this.f2003k.f1108c) && z5;
                            if (k(4) && z6 && !l()) {
                                h0.h hVar3 = cVarC == null ? hVar2 : cVarC.f1429c;
                                if (this.f2004l.contains("\\-v")) {
                                    hVar3 = new h0.h(hVar2.f1106a, hVar2.f1108c + ".001");
                                }
                                h0.f fVarU2 = h0.f.u(hVar3);
                                if (fVarU2.d() && fVarU2.o() > 200) {
                                    if (hVarArr != null && k(2) && cVarC == null) {
                                        hVarArr3 = (h0.h[]) Arrays.copyOf(hVarArr, hVarArr.length + 1);
                                        hVarArr3[hVarArr3.length - 1] = new h0.h(str);
                                    } else {
                                        hVarArr3 = hVarArr;
                                    }
                                    boolean z7 = this.f2003k.j() && x0.g.b(this.f2003k) == 1;
                                    boolean z8 = (hVarArr3 == null || hVarArr3.length == 0) ? false : true;
                                    for (int size2 = (i6 == 0 && this.f2001i.size() == 1) ? this.f2002j.size() : i6 + 1; i6 < size2 && !isCancelled(); size2 = size2) {
                                        String str7 = this.f2002j.get(i6);
                                        h0.h hVar4 = str7.startsWith("/") ? new h0.h(str7) : new h0.h(str7, this.f2003k);
                                        h0.f fVarU3 = h0.f.u(hVar4);
                                        if (fVarU3.d()) {
                                            r0.b.g(this, fVarU3, hVarArr3);
                                            if (z7) {
                                                q0.f.c(hVar4.f1108c, fVarU3.k(), z8);
                                            }
                                        }
                                        i6++;
                                        hVarArr = hVarArr;
                                    }
                                }
                            }
                            hVarArr2 = hVarArr;
                            if (cVarC != null) {
                                if (!cVarC.a(this)) {
                                    e0.a.d(i2, 0, "Failed to move archive to destination");
                                }
                            } else if (!str.equals(str5)) {
                                h0.h hVar5 = new h0.h(str);
                                if (z6) {
                                    try {
                                        h0.f.u(hVar2).c();
                                        h0.f.u(hVar5).y(hVar2.e());
                                    } catch (IOException unused) {
                                        e0.a.d(i2, 0, "Failed to rename output file to original");
                                    }
                                } else {
                                    h0.f.u(hVar5).c();
                                }
                            }
                            z5 = z6;
                        } else {
                            if (!k(2)) {
                                i3 = size;
                                zArchiverService = zArchiverService2;
                                str2 = str5;
                                break;
                            }
                            o0.a aVarJ = j();
                            ArrayList arrayList2 = new ArrayList();
                            int i9 = 0;
                            while (true) {
                                if (i9 >= i7) {
                                    i3 = size;
                                    zArchiverService = zArchiverService2;
                                    str2 = str5;
                                    break;
                                }
                                str2 = str5 + ".t" + i9;
                                arrayList2.clear();
                                i3 = size;
                                zArchiverService = zArchiverService2;
                                if (!p0.d.d(aVarJ, arrayList2, str2, 5, true) || arrayList2.isEmpty()) {
                                    break;
                                }
                                i9++;
                                size = i3;
                                zArchiverService2 = zArchiverService;
                                i7 = 100;
                            }
                            o0.a aVarJ2 = j();
                            String str8 = this.f2004l;
                            String str9 = this.f2003k.f1108c;
                            ArrayList<o0.a> arrayList3 = r0.a.f1423a;
                            if (aVarJ2.f()) {
                                r0.a.b(aVarJ2);
                                String strB = v0.c.b(str2);
                                String strB2 = v0.c.b(str9);
                                String strReplace = str8.replace("\\-m0=FLZMA2", str3);
                                String strG = r0.a.g(aVarJ2, strB, true);
                                String strE2 = r0.a.e(strReplace);
                                String strE3 = r0.a.e(strE);
                                if (aVarJ2.b("cd " + strB2)) {
                                    aVarJ2.k(false);
                                    if (aVarJ2.b(a0.c.r() + " a '" + strB.replace("'", "'\\''") + "' " + strE2 + " -- " + strE3) && a0.c.S(aVarJ2) == 2) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                } else {
                                    z3 = false;
                                }
                                if (strG != null) {
                                    r0.a.g(aVarJ2, strG, false);
                                }
                                r0.a.d(aVarJ2);
                            } else {
                                z3 = false;
                            }
                            boolean z9 = z3 && z5;
                            if (!str2.equals(str5)) {
                                if (z9) {
                                    z9 = p0.b.c(j(), true, 17, true, str2, str5) >= -1;
                                } else {
                                    p0.g.c(j(), str2, false);
                                }
                            }
                            z5 = z9;
                            hVarArr2 = hVarArr;
                        }
                    } else {
                        hVarArr2 = hVarArr;
                        i3 = size;
                        zArchiverService = zArchiverService2;
                        str3 = str3;
                        z5 = false;
                    }
                    n();
                    if (!isCancelled()) {
                        if (x0.g.b(this.f2001i.get(i6)) == 1) {
                            h0.h hVar6 = this.f2001i.get(i6);
                            if (q0.f.b(hVar6)) {
                                q0.f.a(hVar6.f1108c, false);
                            }
                        }
                        i6++;
                        hVarArr = hVarArr2;
                        size = i3;
                        zArchiverService2 = zArchiverService;
                        str3 = str3;
                        i4 = 1;
                        z4 = false;
                    }
                } else {
                    zArchiverService = zArchiverService2;
                }
                z2 = z5;
                break;
            }
            q(z2 ? 1179648 : 1114112);
            ZArchiverService zArchiverService3 = zArchiverService;
            zArchiverService3.l(this, z2, this.f2025h, null);
            zArchiverService3.m(i2, 1, null);
        }
    }
}
