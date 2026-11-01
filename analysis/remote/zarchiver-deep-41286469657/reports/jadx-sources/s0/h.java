package s0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class h extends g {

    public h0.h f2026i;

    public h0.h f2027j;

    public List<String> f2028k;

    public List<h0.h> f2029l;

    public long f2030m;

    public long f2031n;

    public int f2032o;

    public long f2033p;

    public long f2034q;

    public h(ZArchiverService zArchiverService, boolean z2, int i2) {
        super(zArchiverService, z2 ? (byte) 10 : (byte) 4, i2);
        this.f2031n = 0L;
        this.f2030m = 0L;
        this.f2034q = 0L;
        this.f2033p = 0L;
    }

    @Override
    public final void a(String str) {
        String[] strArr = C2JBridge.f1617g;
        int i2 = this.f2020c;
        strArr[i2] = str;
        try {
            this.f2018a.a(i2, str);
        } catch (Exception unused) {
        }
    }

    @Override
    public final void c(long j2) {
        if (this.f2030m == 0) {
            return;
        }
        this.f2031n += j2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = this.f2031n;
        int i2 = (int) ((100 * j3) / this.f2030m);
        if (i2 > 100) {
            i2 = 100;
        }
        int[] iArr = C2JBridge.f1618h;
        int i3 = this.f2020c;
        if (i2 != iArr[i3] || jCurrentTimeMillis > this.f2034q + 2000) {
            iArr[i3] = i2;
            long j4 = this.f2034q;
            if (jCurrentTimeMillis > 500 + j4) {
                if (j4 == 0) {
                    this.f2032o = 0;
                } else {
                    int i4 = (int) (((j3 - this.f2033p) / (jCurrentTimeMillis - j4)) * 100.0f);
                    long j5 = jCurrentTimeMillis - j4;
                    if (j5 < 2000) {
                        int i5 = this.f2032o;
                        this.f2032o = (int) (((j5 * ((long) (i4 - i5))) / 2000) + ((long) i5));
                    } else {
                        this.f2032o = i4;
                    }
                }
                this.f2033p = j3;
                this.f2034q = jCurrentTimeMillis;
            }
            try {
                ZArchiverService zArchiverService = this.f2018a;
                int i6 = this.f2032o;
                synchronized (zArchiverService) {
                    zArchiverService.f1717d.obtainMessage(i3, 4, i2, Integer.valueOf(i6)).sendToTarget();
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:298:0x03bc A[EDGE_INSN: B:298:0x03bc->B:223:0x03bc BREAK  A[LOOP:6: B:207:0x037c->B:301:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:301:? A[LOOP:6: B:207:0x037c->B:301:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a4  */
    @Override
    public final void p() {
        List<String> list;
        ArrayList arrayList;
        int i2;
        ZArchiverService zArchiverService;
        int iA;
        int iA2;
        ArrayList arrayList2;
        byte b2 = this.f2019b;
        ZArchiverService zArchiverService2 = this.f2018a;
        if ((b2 == 10 && this.f2027j.equals(this.f2026i)) || ((list = this.f2028k) == null && this.f2029l == null)) {
            q(1179648);
            zArchiverService2.l(this, true, null, null);
            return;
        }
        String strY = this.f2026i == null ? a0.c.y(this.f2029l.get(0).f1108c) : list != null ? list.get(0) : "";
        if (this.f2019b == 10) {
            h0.h hVar = this.f2026i;
            if (hVar == null) {
                if (this.f2029l.size() > 0 && x0.g.b(this.f2029l.get(0)) == 1 && q0.f.b(this.f2029l.get(0))) {
                    arrayList2 = new ArrayList(this.f2029l.size());
                } else {
                    arrayList2 = null;
                }
            } else if (x0.g.b(hVar) == 1 && q0.f.b(this.f2026i)) {
                arrayList2 = new ArrayList(this.f2028k.size());
            } else {
                arrayList2 = null;
            }
            arrayList = arrayList2;
            i2 = 4;
        } else {
            arrayList = null;
            i2 = 3;
        }
        if (this.f2026i == null) {
            for (h0.h hVar2 : this.f2029l) {
                if (a0.c.M(hVar2.t(), this.f2027j.t())) {
                    s(hVar2.e());
                    return;
                }
            }
            if (!f(null, this.f2029l, i2)) {
                return;
            }
        } else {
            List<String> list2 = this.f2028k;
            if (list2 != null) {
                for (String str : list2) {
                    if (a0.c.M(new h0.h(str, this.f2026i).t(), this.f2027j.t())) {
                        s(str);
                        return;
                    }
                }
                if (!g(this.f2026i, this.f2028k, i2, 0)) {
                    return;
                }
            }
        }
        if (e(3, 0, strY, this.f2027j)) {
            int iC = !ZArchiverService.i(1) ? 17 : 0;
            if (k(1)) {
                boolean z2 = ZArchiverService.i(4) && p0.f.a(this.f2027j);
                boolean z3 = !z2 && x0.g.e(this.f2027j.f1108c);
                String strG = k(1) ? r0.a.g(j(), this.f2027j.f1108c, true) : null;
                if (this.f2026i == null) {
                    for (h0.h hVar3 : this.f2029l) {
                        if (isCancelled()) {
                            break;
                        }
                        byte b3 = this.f2019b;
                        if (b3 == 4) {
                            iC = r0.a.c(j(), hVar3, this.f2027j, iC);
                        } else if (b3 == 10 && (iC = r0.a.f(j(), hVar3, this.f2027j, iC)) >= 0 && arrayList != null) {
                            arrayList.add(hVar3);
                        }
                        if (iC < 0) {
                            o(hVar3.e());
                            break;
                        } else if (z2) {
                            a0.c.d0(j(), this.f2027j, hVar3.e());
                        } else if (z3) {
                            a0.c.c0(j(), this.f2027j, hVar3.e());
                        }
                    }
                } else {
                    for (String str2 : this.f2028k) {
                        if (isCancelled()) {
                            break;
                        }
                        h0.h hVar4 = new h0.h(str2, this.f2026i);
                        byte b4 = this.f2019b;
                        if (b4 == 4) {
                            iC = r0.a.c(j(), hVar4, this.f2027j, iC);
                        } else if (b4 == 10 && (iC = r0.a.f(j(), hVar4, this.f2027j, iC)) >= 0 && arrayList != null) {
                            arrayList.add(hVar4);
                        }
                        if (iC < 0) {
                            break;
                        }
                        if (z2) {
                            a0.c.d0(j(), this.f2027j, str2);
                        } else if (z3) {
                            a0.c.c0(j(), this.f2027j, str2);
                        }
                    }
                }
                if (strG != null) {
                    r0.a.g(j(), strG, false);
                }
                zArchiverService = zArchiverService2;
            } else {
                h0.h hVar5 = this.f2026i;
                if (hVar5 != null) {
                    zArchiverService = zArchiverService2;
                    h0.e.b bVarF = h0.e.f(hVar5, (String[]) this.f2028k.toArray(new String[0]), this);
                    if (bVarF != null) {
                        this.f2030m = bVarF.f1090c;
                    }
                    if (!this.f2026i.k() || !this.f2027j.k() || !v0.h.f(this.f2026i.f1110e, this.f2027j.f1110e)) {
                        int length = this.f2026i.f1108c.length() + 1;
                        iA = iC;
                        for (String str3 : this.f2028k) {
                            if (isCancelled()) {
                                break;
                            }
                            h0.h hVar6 = new h0.h(str3, this.f2026i);
                            byte b5 = this.f2019b;
                            if (b5 != 4) {
                                if (b5 == 10) {
                                    iA2 = r0.b.j(this, hVar6, this.f2027j, iA, length);
                                    if (iA2 >= 0 && arrayList != null) {
                                        arrayList.add(hVar6);
                                    }
                                }
                                if (iA < 0) {
                                    break;
                                }
                            } else {
                                iA2 = r0.b.a(this, h0.f.u(hVar6), this.f2027j, iA, length, 0);
                            }
                            iA = iA2;
                            if (iA < 0) {
                                break;
                                break;
                            }
                        }
                    } else {
                        for (String str4 : this.f2028k) {
                            if (isCancelled()) {
                                break;
                            }
                            a(str4);
                            h0.f fVarU = h0.f.u(new h0.h(str4, this.f2026i));
                            iC = (this.f2019b != 10 ? !fVarU.a(this.f2027j) : !fVarU.t(this.f2027j)) ? -1 : 0;
                            if (iC < 0) {
                                break;
                            }
                        }
                    }
                } else {
                    Iterator<h0.h> it = this.f2029l.iterator();
                    while (it.hasNext()) {
                        h0.e.b bVarE = h0.e.e(it.next(), this);
                        if (bVarE != null) {
                            this.f2030m += bVarE.f1090c;
                            zArchiverService2 = zArchiverService2;
                        }
                    }
                    zArchiverService = zArchiverService2;
                    boolean zK = this.f2027j.k();
                    iA = iC;
                    for (h0.h hVar7 : this.f2029l) {
                        if (isCancelled()) {
                            break;
                        }
                        if (zK && hVar7.k() && v0.h.f(hVar7.f1110e, this.f2027j.f1110e)) {
                            a(this.f2027j.e());
                            h0.f fVarU2 = h0.f.u(hVar7);
                            iA = (this.f2019b != 10 ? !fVarU2.a(this.f2027j) : !fVarU2.t(this.f2027j)) ? -1 : 0;
                        } else {
                            byte b6 = this.f2019b;
                            if (b6 == 4) {
                                a0.b.c(hVar7);
                                a0.b.c(this.f2027j);
                                iA = r0.b.a(this, h0.f.u(hVar7), this.f2027j, iA, 1, 0);
                            } else if (b6 == 10) {
                                int iJ = r0.b.j(this, hVar7, this.f2027j, iA, 1);
                                if (iJ >= 0 && arrayList != null) {
                                    arrayList.add(hVar7);
                                }
                                iA = iJ;
                            }
                        }
                        if (iA < 0) {
                            break;
                        }
                    }
                }
                iC = iA;
            }
            if (arrayList != null) {
                String[] strArr = q0.f.f1383a;
                try {
                    Executors.newSingleThreadExecutor().execute(new q0.f.c(arrayList));
                } catch (Throwable unused) {
                }
            }
            if (x0.g.b(this.f2027j) == 1) {
                h0.h hVar8 = this.f2027j;
                if (q0.f.b(hVar8)) {
                    q0.f.a(hVar8.f1108c, true);
                }
            }
            if (iC == -2) {
                q(15);
            }
            q(iC >= 0 ? 1179648 : 1114112);
            zArchiverService.l(this, iC >= 0, this.f2025h, null);
            byte b7 = this.f2019b;
            int i3 = this.f2020c;
            if (b7 == 10) {
                h0.h hVar9 = this.f2026i;
                if (hVar9 != null) {
                    zArchiverService.m(i3, 2, hVar9);
                } else {
                    List<h0.h> list3 = this.f2029l;
                    if (list3 != null) {
                        zArchiverService.m(i3, 2, list3.get(0).f());
                    }
                }
            }
            zArchiverService.m(i3, 1, this.f2027j);
        }
    }

    public final void s(String str) {
        StringBuilder sb = new StringBuilder("Can't ");
        sb.append(this.f2019b == 10 ? "move" : "copy");
        sb.append(" a directory to its own subdirectory!");
        m(str, sb.toString());
    }
}
