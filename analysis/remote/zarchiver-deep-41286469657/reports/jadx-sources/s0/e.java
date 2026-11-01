package s0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class e extends g {

    public final int f2009i;

    public Object f2010j;

    public Object f2011k;

    public Object f2012l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ZArchiverService zArchiverService, int i2, int i3) {
        super(zArchiverService, (byte) 8, i2);
        this.f2009i = i3;
        if (i3 == 1) {
            super(zArchiverService, (byte) 11, i2);
        } else if (i3 != 2) {
        } else {
            super(zArchiverService, (byte) 6, i2);
        }
    }

    @Override
    public final void a(String str) {
        switch (this.f2009i) {
            case 2:
                String[] strArr = C2JBridge.f1617g;
                int i2 = this.f2020c;
                strArr[i2] = str;
                try {
                    this.f2018a.a(i2, str);
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:159:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:208:0x0493  */
    /* JADX WARN: Code duplicated, block: B:222:0x0180 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:45:0x016a  */
    /* JADX WARN: Code duplicated, block: B:49:0x0177  */
    /* JADX WARN: Code duplicated, block: B:87:0x025f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v19, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v20 */
    @Override
    public final void p() {
        List list;
        boolean z2;
        boolean zC;
        boolean zC2;
        boolean zCDelFiles;
        boolean z3;
        boolean zCTest;
        int i2 = this.f2009i;
        ZArchiverService zArchiverService = this.f2018a;
        int i3 = this.f2020c;
        ?? r6 = 1;
        switch (i2) {
            case 0:
                if (d((h0.h) this.f2010j, true)) {
                    e0.a.b(i3, false, ((h0.h) this.f2010j).f1108c);
                    if (isCancelled()) {
                        zCDelFiles = false;
                    } else if (k(1)) {
                        o0.a aVarJ = j();
                        String str = ((h0.h) this.f2010j).f1108c;
                        String str2 = (String) this.f2012l;
                        String str3 = (String) this.f2011k;
                        String strA = a0.c.A(str);
                        ArrayList<o0.a> arrayList = r0.a.f1423a;
                        if (aVarJ.f()) {
                            r0.a.b(aVarJ);
                            String strB = v0.c.b(str);
                            String strB2 = v0.c.b(strA);
                            String strG = r0.a.g(aVarJ, strB2, true);
                            boolean zG0 = a0.c.g0(strB, r0.a.e(str2), r0.a.e(str3), strB2, aVarJ, false);
                            if (strG != null) {
                                r0.a.g(aVarJ, strG, false);
                            }
                            r0.a.d(aVarJ);
                            zCDelFiles = zG0;
                        } else {
                            zCDelFiles = false;
                        }
                    } else if (h()) {
                        r0.c cVarC = r0.c.c(new h0.h(((h0.h) this.f2010j).f1108c), true);
                        if (cVarC != null) {
                            byte[] bArr = a0.c.f19k;
                            bArr[i3] = (byte) (bArr[i3] | (-128));
                            if (!cVarC.b(this)) {
                                e0.a.d(i3, 0, "Failed to write to archive");
                                cVarC = null;
                            }
                        }
                        zCDelFiles = C2JBridge.cDelFiles(i3, cVarC != null ? cVarC.f1428b : ((h0.h) this.f2010j).f1108c, (String) this.f2012l, (String) this.f2011k, a0.c.A(((h0.h) this.f2010j).f1108c));
                        if (cVarC != null) {
                            cVarC.a(this);
                        }
                    } else {
                        zCDelFiles = false;
                    }
                    n();
                    q(zCDelFiles ? 1179648 : 1114112);
                    zArchiverService.l(this, zCDelFiles, this.f2025h, null);
                    if (zCDelFiles) {
                        zArchiverService.m(i3, 2, null);
                        return;
                    }
                    return;
                }
                return;
            case 1:
                List list2 = (List) this.f2010j;
                if (list2 == null || ((List) this.f2011k) == null || list2.size() != ((List) this.f2011k).size()) {
                    q(1179648);
                    zArchiverService.l(this, true, null, null);
                    return;
                }
                Iterator it = ((List) this.f2010j).iterator();
                while (it.hasNext()) {
                    if (!d((h0.h) it.next(), false)) {
                        return;
                    }
                }
                ArrayList<e0.i> arrayList2 = new ArrayList<>(((List) this.f2010j).size());
                int size = ((List) this.f2010j).size();
                int i4 = 0;
                boolean z4 = true;
                while (true) {
                    if (i4 < size) {
                        if (((List) this.f2012l) != null) {
                            String[] strArr = C2JBridge.f1621k;
                            String str4 = ((String) ((List) this.f2012l).get(i4)) + " (" + (i4 + 1) + "/" + ((List) this.f2012l).size() + ")";
                            strArr[i3] = str4;
                            zArchiverService.o(i3, str4);
                        }
                        e0.a.b(i3, r6, ((h0.h) ((List) this.f2010j).get(i4)).f1108c);
                        e0.i[] iVarArr = C2JBridge.f1622l;
                        iVarArr[i3] = new e0.i(((h0.h) ((List) this.f2010j).get(i4)).f1108c);
                        if (isCancelled()) {
                            zCTest = false;
                            n();
                            if (isCancelled()) {
                                arrayList2.add(iVarArr[i3]);
                                iVarArr[i3] = null;
                                if (z4) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                i4++;
                                r6 = 1;
                            }
                        } else {
                            if (k(r6)) {
                                o0.a aVarJ2 = j();
                                String str5 = ((h0.h) ((List) this.f2010j).get(i4)).f1108c;
                                String str6 = (String) ((List) this.f2011k).get(i4);
                                ArrayList<o0.a> arrayList3 = r0.a.f1423a;
                                if (aVarJ2.f()) {
                                    r0.a.b(aVarJ2);
                                    String strB3 = v0.c.b(str5);
                                    String strE = r0.a.e(str6);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(a0.c.r());
                                    sb.append(" t '");
                                    sb.append(strB3.replace("'", "'\\''"));
                                    sb.append("' ");
                                    sb.append(strE);
                                    zCTest = aVarJ2.b(sb.toString()) && a0.c.S(aVarJ2) == 2;
                                    r0.a.d(aVarJ2);
                                } else {
                                    zCTest = false;
                                }
                            } else if (h()) {
                                zCTest = C2JBridge.cTest(i3, ((h0.h) ((List) this.f2010j).get(i4)).f1108c, (String) ((List) this.f2011k).get(i4));
                            } else {
                                z3 = false;
                            }
                            n();
                            if (isCancelled()) {
                                arrayList2.add(iVarArr[i3]);
                                iVarArr[i3] = null;
                                if (z4 || !zCTest) {
                                    z4 = false;
                                } else {
                                    z4 = true;
                                }
                                i4++;
                                r6 = 1;
                            }
                        }
                    }
                    z3 = z4;
                }
                q(z3 ? 1179648 : 1114112);
                zArchiverService.l(this, z3, this.f2025h, arrayList2);
                return;
            default:
                List list3 = (List) this.f2011k;
                if ((list3 == null || list3.isEmpty()) && ((list = (List) this.f2012l) == null || list.isEmpty())) {
                    q(1179648);
                    zArchiverService.l(this, true, null, null);
                    return;
                }
                h0.h hVar = (h0.h) this.f2010j;
                if (hVar != null) {
                    List list4 = (List) this.f2011k;
                    if (list4 != null && !g(hVar, list4, 4, 0)) {
                        return;
                    }
                } else if (!f(null, (List) this.f2012l, 4)) {
                    return;
                }
                h0.h hVar2 = (h0.h) this.f2010j;
                String[] strArr2 = C2JBridge.f1617g;
                if (hVar2 == null) {
                    boolean zJ = ((h0.h) ((List) this.f2012l).get(0)).j();
                    boolean z5 = !k(1) && q0.f.b((h0.h) ((List) this.f2012l).get(0));
                    String strG2 = k(1) ? r0.a.g(j(), ((h0.h) ((List) this.f2012l).get(0)).f1108c, true) : null;
                    int i5 = 0;
                    z2 = true;
                    for (h0.h hVar3 : (List) this.f2012l) {
                        String strE2 = hVar3.e();
                        strArr2[i3] = strE2;
                        if (zJ) {
                            zArchiverService.a(i3, strE2);
                        } else {
                            zArchiverService.p(i3, (i5 * 100) / ((List) this.f2012l).size(), strE2);
                        }
                        if (!isCancelled()) {
                            if (hVar3.k()) {
                                z2 = r0.b.f(h0.f.u(hVar3)) && z2;
                            } else if (k(1)) {
                                o0.a aVarJ3 = j();
                                ArrayList<o0.a> arrayList4 = r0.a.f1423a;
                                if (aVarJ3.f()) {
                                    r0.a.b(aVarJ3);
                                    zC2 = p0.g.c(aVarJ3, v0.c.b(hVar3.f1108c), true);
                                    r0.a.d(aVarJ3);
                                } else {
                                    zC2 = false;
                                }
                                if (!zC2) {
                                    o(strE2);
                                }
                            } else {
                                h0.f fVarU = h0.f.u(hVar3);
                                if (fVarU.d()) {
                                    r0.b.e(this, fVarU, a0.c.A(fVarU.g()).length());
                                    if (z5) {
                                        q0.f.c(hVar3.f1108c, true, false);
                                    }
                                }
                            }
                            i5++;
                        } else if (strG2 != null) {
                            r0.a.g(j(), strG2, false);
                        }
                    }
                    if (strG2 != null) {
                        r0.a.g(j(), strG2, false);
                    }
                } else {
                    boolean zK = hVar2.k();
                    boolean zJ2 = ((h0.h) this.f2010j).j();
                    boolean z6 = !k(1) && q0.f.b((h0.h) this.f2010j);
                    String strG3 = k(1) ? r0.a.g(j(), ((h0.h) this.f2010j).f1108c, true) : null;
                    z2 = true;
                    int i6 = 0;
                    for (String str7 : (List) this.f2011k) {
                        strArr2[i3] = str7;
                        if (zJ2) {
                            zArchiverService.a(i3, str7);
                        } else {
                            int size2 = (i6 * 100) / ((List) this.f2011k).size();
                            synchronized (zArchiverService) {
                                zArchiverService.f1717d.obtainMessage(i3, 22, size2, str7).sendToTarget();
                            }
                        }
                        if (!isCancelled()) {
                            h0.h hVar4 = new h0.h(str7, (h0.h) this.f2010j);
                            if (zK) {
                                z2 = r0.b.f(h0.f.u(hVar4)) && z2;
                            } else if (k(1)) {
                                o0.a aVarJ4 = j();
                                ArrayList<o0.a> arrayList5 = r0.a.f1423a;
                                if (aVarJ4.f()) {
                                    r0.a.b(aVarJ4);
                                    zC = p0.g.c(aVarJ4, v0.c.b(hVar4.f1108c), true);
                                    r0.a.d(aVarJ4);
                                } else {
                                    zC = false;
                                }
                                if (!zC) {
                                    o(str7);
                                }
                            } else {
                                h0.f fVarU2 = h0.f.u(hVar4);
                                if (fVarU2.d()) {
                                    r0.b.e(this, fVarU2, a0.c.A(fVarU2.g()).length());
                                    if (z6) {
                                        q0.f.c(hVar4.f1108c, true, false);
                                    }
                                }
                            }
                            i6++;
                        } else if (strG3 != null) {
                            r0.a.g(j(), strG3, false);
                        }
                    }
                    if (strG3 != null) {
                        r0.a.g(j(), strG3, false);
                    }
                }
                q(z2 ? 1179648 : 1114112);
                zArchiverService.l(this, z2, this.f2025h, null);
                zArchiverService.m(i3, 2, (h0.h) this.f2010j);
                return;
        }
    }

    public final void s(int i2, String str) {
        switch (this.f2009i) {
            case 0:
                this.f2012l = str;
                this.f2021d = i2;
                break;
            default:
                ArrayList arrayList = new ArrayList(1);
                this.f2011k = arrayList;
                arrayList.add(str);
                this.f2021d = i2;
                break;
        }
    }
}
