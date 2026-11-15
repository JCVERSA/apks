package com.google.android.exoplayer2;

import android.os.Handler;
import android.util.Pair;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class f2 {

    private final l3.b f24431a = new l3.b();

    private final l3.d f24432b = new l3.d();

    private final g9.a f24433c;

    private final Handler f24434d;

    private long f24435e;

    private int f24436f;

    private boolean f24437g;

    private c2 f24438h;

    private c2 f24439i;

    private c2 f24440j;

    private int f24441k;

    private Object f24442l;

    private long f24443m;

    public f2(g9.a aVar, Handler handler) {
        this.f24433c = aVar;
        this.f24434d = handler;
    }

    private static com.google.android.exoplayer2.source.o.b A(l3 l3Var, Object obj, long j10, long j11, l3.d dVar, l3.b bVar) {
        l3Var.l(obj, bVar);
        l3Var.r(bVar.f24525c, dVar);
        int iF = l3Var.f(obj);
        Object objE = obj;
        while (bVar.f24526d == 0 && bVar.f() > 0 && bVar.t(bVar.r()) && bVar.h(0L) == -1) {
            int i10 = iF + 1;
            if (iF >= dVar.f24553p) {
                break;
            }
            l3Var.k(i10, bVar, true);
            objE = com.google.android.exoplayer2.util.a.e(bVar.f24524b);
            iF = i10;
        }
        l3Var.l(objE, bVar);
        int iH = bVar.h(j10);
        return iH == -1 ? new com.google.android.exoplayer2.source.o.b(objE, j11, bVar.g(j10)) : new com.google.android.exoplayer2.source.o.b(objE, iH, bVar.n(iH), j11);
    }

    private long C(l3 l3Var, Object obj) {
        int iF;
        int i10 = l3Var.l(obj, this.f24431a).f24525c;
        Object obj2 = this.f24442l;
        if (obj2 != null && (iF = l3Var.f(obj2)) != -1 && l3Var.j(iF, this.f24431a).f24525c == i10) {
            return this.f24443m;
        }
        for (c2 c2VarJ = this.f24438h; c2VarJ != null; c2VarJ = c2VarJ.j()) {
            if (c2VarJ.f24169b.equals(obj)) {
                return c2VarJ.f24173f.f24185a.f73507d;
            }
        }
        for (c2 c2VarJ2 = this.f24438h; c2VarJ2 != null; c2VarJ2 = c2VarJ2.j()) {
            int iF2 = l3Var.f(c2VarJ2.f24169b);
            if (iF2 != -1 && l3Var.j(iF2, this.f24431a).f24525c == i10) {
                return c2VarJ2.f24173f.f24185a.f73507d;
            }
        }
        long j10 = this.f24435e;
        this.f24435e = 1 + j10;
        if (this.f24438h == null) {
            this.f24442l = obj;
            this.f24443m = j10;
        }
        return j10;
    }

    private boolean E(l3 l3Var) {
        c2 c2VarJ = this.f24438h;
        if (c2VarJ == null) {
            return true;
        }
        int iF = l3Var.f(c2VarJ.f24169b);
        while (true) {
            iF = l3Var.h(iF, this.f24431a, this.f24432b, this.f24436f, this.f24437g);
            while (c2VarJ.j() != null && !c2VarJ.f24173f.f24191g) {
                c2VarJ = c2VarJ.j();
            }
            c2 c2VarJ2 = c2VarJ.j();
            if (iF == -1 || c2VarJ2 == null || l3Var.f(c2VarJ2.f24169b) != iF) {
                break;
            }
            c2VarJ = c2VarJ2;
        }
        boolean z10 = z(c2VarJ);
        c2VarJ.f24173f = r(l3Var, c2VarJ.f24173f);
        return !z10;
    }

    private boolean d(long j10, long j11) {
        return j10 == C.TIME_UNSET || j10 == j11;
    }

    private boolean e(d2 d2Var, d2 d2Var2) {
        return d2Var.f24186b == d2Var2.f24186b && d2Var.f24185a.equals(d2Var2.f24185a);
    }

    private d2 h(m2 m2Var) {
        return k(m2Var.f24633a, m2Var.f24634b, m2Var.f24635c, m2Var.f24650r);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e5  */
    private d2 i(l3 l3Var, c2 c2Var, long j10) {
        long j11;
        long j12;
        long j13;
        long j14;
        boolean z10;
        long j15;
        d2 d2Var = c2Var.f24173f;
        long jL = (c2Var.l() + d2Var.f24189e) - j10;
        if (!d2Var.f24191g) {
            com.google.android.exoplayer2.source.o.b bVar = d2Var.f24185a;
            l3Var.l(bVar.f73504a, this.f24431a);
            if (!bVar.b()) {
                int iN = this.f24431a.n(bVar.f73508e);
                boolean z11 = this.f24431a.t(bVar.f73508e) && this.f24431a.k(bVar.f73508e, iN) == 3;
                if (iN == this.f24431a.d(bVar.f73508e) || z11) {
                    return m(l3Var, bVar.f73504a, n(l3Var, bVar.f73504a, bVar.f73508e), d2Var.f24189e, bVar.f73507d);
                }
                return l(l3Var, bVar.f73504a, bVar.f73508e, iN, d2Var.f24189e, bVar.f73507d);
            }
            int i10 = bVar.f73505b;
            int iD = this.f24431a.d(i10);
            if (iD == -1) {
                return null;
            }
            int iO = this.f24431a.o(i10, bVar.f73506c);
            if (iO < iD) {
                return l(l3Var, bVar.f73504a, i10, iO, d2Var.f24187c, bVar.f73507d);
            }
            long jLongValue = d2Var.f24187c;
            if (jLongValue == C.TIME_UNSET) {
                l3.d dVar = this.f24432b;
                l3.b bVar2 = this.f24431a;
                Pair pairO = l3Var.o(dVar, bVar2, bVar2.f24525c, C.TIME_UNSET, Math.max(0L, jL));
                if (pairO == null) {
                    return null;
                }
                jLongValue = ((Long) pairO.second).longValue();
            }
            return m(l3Var, bVar.f73504a, Math.max(n(l3Var, bVar.f73504a, bVar.f73505b), jLongValue), d2Var.f24187c, bVar.f73507d);
        }
        int iH = l3Var.h(l3Var.f(d2Var.f24185a.f73504a), this.f24431a, this.f24432b, this.f24436f, this.f24437g);
        if (iH == -1) {
            return null;
        }
        int i11 = l3Var.k(iH, this.f24431a, true).f24525c;
        Object objE = com.google.android.exoplayer2.util.a.e(this.f24431a.f24524b);
        long j16 = d2Var.f24185a.f73507d;
        if (l3Var.r(i11, this.f24432b).f24552o == iH) {
            Pair pairO2 = l3Var.o(this.f24432b, this.f24431a, i11, C.TIME_UNSET, Math.max(0L, jL));
            if (pairO2 == null) {
                return null;
            }
            objE = pairO2.first;
            long jLongValue2 = ((Long) pairO2.second).longValue();
            c2 c2VarJ = c2Var.j();
            if (c2VarJ == null || !c2VarJ.f24169b.equals(objE)) {
                j15 = this.f24435e;
                this.f24435e = 1 + j15;
            } else {
                j15 = c2VarJ.f24173f.f24185a.f73507d;
            }
            j11 = jLongValue2;
            j12 = -9223372036854775807L;
            j16 = j15;
        } else {
            j11 = 0;
            j12 = 0;
        }
        com.google.android.exoplayer2.source.o.b bVarA = A(l3Var, objE, j11, j16, this.f24432b, this.f24431a);
        if (j12 == C.TIME_UNSET || d2Var.f24187c == C.TIME_UNSET) {
            j13 = j11;
            j14 = j12;
        } else {
            if (l3Var.l(d2Var.f24185a.f73504a, this.f24431a).f() > 0) {
                l3.b bVar3 = this.f24431a;
                z10 = bVar3.t(bVar3.r());
            }
            if (bVarA.b() && z10) {
                j14 = d2Var.f24187c;
                j13 = j11;
            } else {
                if (z10) {
                    j13 = d2Var.f24187c;
                } else {
                    j13 = j11;
                }
                j14 = j12;
            }
        }
        return k(l3Var, bVarA, j14, j13);
    }

    private d2 k(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar, long j10, long j11) {
        l3Var.l(bVar.f73504a, this.f24431a);
        return bVar.b() ? l(l3Var, bVar.f73504a, bVar.f73505b, bVar.f73506c, j10, bVar.f73507d) : m(l3Var, bVar.f73504a, j11, j10, bVar.f73507d);
    }

    private d2 l(l3 l3Var, Object obj, int i10, int i11, long j10, long j11) {
        com.google.android.exoplayer2.source.o.b bVar = new com.google.android.exoplayer2.source.o.b(obj, i10, i11, j11);
        long jE = l3Var.l(bVar.f73504a, this.f24431a).e(bVar.f73505b, bVar.f73506c);
        long j12 = i11 == this.f24431a.n(i10) ? this.f24431a.j() : 0L;
        return new d2(bVar, (jE == C.TIME_UNSET || j12 < jE) ? j12 : Math.max(0L, jE - 1), j10, C.TIME_UNSET, jE, this.f24431a.t(bVar.f73505b), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    private d2 m(l3 l3Var, Object obj, long j10, long j11, long j12) {
        boolean z10;
        long j13;
        long jI;
        long j14;
        long jMax = j10;
        l3Var.l(obj, this.f24431a);
        int iG = this.f24431a.g(jMax);
        int i10 = 1;
        if (iG == -1) {
            if (this.f24431a.f() > 0) {
                l3.b bVar = this.f24431a;
                if (bVar.t(bVar.r())) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
        } else if (this.f24431a.t(iG)) {
            long jI2 = this.f24431a.i(iG);
            l3.b bVar2 = this.f24431a;
            if (jI2 == bVar2.f24526d && bVar2.s(iG)) {
                z10 = true;
                iG = -1;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        com.google.android.exoplayer2.source.o.b bVar3 = new com.google.android.exoplayer2.source.o.b(obj, j12, iG);
        boolean zS = s(bVar3);
        boolean zU = u(l3Var, bVar3);
        boolean zT = t(l3Var, bVar3, zS);
        boolean z11 = iG != -1 && this.f24431a.t(iG);
        if (iG == -1) {
            if (z10) {
                jI = this.f24431a.f24526d;
            } else {
                j13 = -9223372036854775807L;
            }
            if (j13 != C.TIME_UNSET || j13 == Long.MIN_VALUE) {
                j14 = this.f24431a.f24526d;
            } else {
                j14 = j13;
            }
            if (j14 != C.TIME_UNSET && jMax >= j14) {
                if (!zT && z10) {
                    i10 = 0;
                }
                jMax = Math.max(0L, j14 - ((long) i10));
            }
            return new d2(bVar3, jMax, j11, j13, j14, z11, zS, zU, zT);
        }
        jI = this.f24431a.i(iG);
        j13 = jI;
        if (j13 != C.TIME_UNSET) {
            j14 = this.f24431a.f24526d;
        } else {
            j14 = this.f24431a.f24526d;
        }
        if (j14 != C.TIME_UNSET) {
            if (!zT) {
                i10 = 0;
            }
            jMax = Math.max(0L, j14 - ((long) i10));
        }
        return new d2(bVar3, jMax, j11, j13, j14, z11, zS, zU, zT);
    }

    private long n(l3 l3Var, Object obj, int i10) {
        l3Var.l(obj, this.f24431a);
        long jI = this.f24431a.i(i10);
        return jI == Long.MIN_VALUE ? this.f24431a.f24526d : jI + this.f24431a.l(i10);
    }

    private boolean s(com.google.android.exoplayer2.source.o.b bVar) {
        return !bVar.b() && bVar.f73508e == -1;
    }

    private boolean t(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar, boolean z10) {
        int iF = l3Var.f(bVar.f73504a);
        return !l3Var.r(l3Var.j(iF, this.f24431a).f24525c, this.f24432b).f24546i && l3Var.v(iF, this.f24431a, this.f24432b, this.f24436f, this.f24437g) && z10;
    }

    private boolean u(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar) {
        if (s(bVar)) {
            return l3Var.r(l3Var.l(bVar.f73504a, this.f24431a).f24525c, this.f24432b).f24553p == l3Var.f(bVar.f73504a);
        }
        return false;
    }

    public void w(ImmutableList.a aVar, com.google.android.exoplayer2.source.o.b bVar) {
        this.f24433c.x(aVar.e(), bVar);
    }

    private void x() {
        final ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (c2 c2VarJ = this.f24438h; c2VarJ != null; c2VarJ = c2VarJ.j()) {
            aVarBuilder.a(c2VarJ.f24173f.f24185a);
        }
        c2 c2Var = this.f24439i;
        final com.google.android.exoplayer2.source.o.b bVar = c2Var == null ? null : c2Var.f24173f.f24185a;
        this.f24434d.post(new Runnable() {
            @Override
            public final void run() {
                this.f24383a.w(aVarBuilder, bVar);
            }
        });
    }

    public com.google.android.exoplayer2.source.o.b B(l3 l3Var, Object obj, long j10) {
        long jC = C(l3Var, obj);
        l3Var.l(obj, this.f24431a);
        l3Var.r(this.f24431a.f24525c, this.f24432b);
        boolean z10 = false;
        for (int iF = l3Var.f(obj); iF >= this.f24432b.f24552o; iF--) {
            l3Var.k(iF, this.f24431a, true);
            boolean z11 = this.f24431a.f() > 0;
            z10 |= z11;
            l3.b bVar = this.f24431a;
            if (bVar.h(bVar.f24526d) != -1) {
                obj = com.google.android.exoplayer2.util.a.e(this.f24431a.f24524b);
            }
            if (z10 && (!z11 || this.f24431a.f24526d != 0)) {
                break;
            }
        }
        return A(l3Var, obj, j10, jC, this.f24432b, this.f24431a);
    }

    public boolean D() {
        c2 c2Var = this.f24440j;
        return c2Var == null || (!c2Var.f24173f.f24193i && c2Var.q() && this.f24440j.f24173f.f24189e != C.TIME_UNSET && this.f24441k < 100);
    }

    public boolean F(l3 l3Var, long j10, long j11) {
        d2 d2VarR;
        c2 c2VarJ = this.f24438h;
        c2 c2Var = null;
        while (c2VarJ != null) {
            d2 d2Var = c2VarJ.f24173f;
            if (c2Var == null) {
                d2VarR = r(l3Var, d2Var);
            } else {
                d2 d2VarI = i(l3Var, c2Var, j10);
                if (d2VarI == null) {
                    return !z(c2Var);
                }
                if (!e(d2Var, d2VarI)) {
                    return !z(c2Var);
                }
                d2VarR = d2VarI;
            }
            c2VarJ.f24173f = d2VarR.a(d2Var.f24187c);
            if (!d(d2Var.f24189e, d2VarR.f24189e)) {
                c2VarJ.A();
                long j12 = d2VarR.f24189e;
                return (z(c2VarJ) || (c2VarJ == this.f24439i && !c2VarJ.f24173f.f24190f && ((j11 > Long.MIN_VALUE ? 1 : (j11 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j11 > ((j12 > C.TIME_UNSET ? 1 : (j12 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : c2VarJ.z(j12)) ? 1 : (j11 == ((j12 > C.TIME_UNSET ? 1 : (j12 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : c2VarJ.z(j12)) ? 0 : -1)) >= 0))) ? false : true;
            }
            c2Var = c2VarJ;
            c2VarJ = c2VarJ.j();
        }
        return true;
    }

    public boolean G(l3 l3Var, int i10) {
        this.f24436f = i10;
        return E(l3Var);
    }

    public boolean H(l3 l3Var, boolean z10) {
        this.f24437g = z10;
        return E(l3Var);
    }

    public c2 b() {
        c2 c2Var = this.f24438h;
        if (c2Var == null) {
            return null;
        }
        if (c2Var == this.f24439i) {
            this.f24439i = c2Var.j();
        }
        this.f24438h.t();
        int i10 = this.f24441k - 1;
        this.f24441k = i10;
        if (i10 == 0) {
            this.f24440j = null;
            c2 c2Var2 = this.f24438h;
            this.f24442l = c2Var2.f24169b;
            this.f24443m = c2Var2.f24173f.f24185a.f73507d;
        }
        this.f24438h = this.f24438h.j();
        x();
        return this.f24438h;
    }

    public c2 c() {
        c2 c2Var = this.f24439i;
        com.google.android.exoplayer2.util.a.g((c2Var == null || c2Var.j() == null) ? false : true);
        this.f24439i = this.f24439i.j();
        x();
        return this.f24439i;
    }

    public void f() {
        if (this.f24441k == 0) {
            return;
        }
        c2 c2VarJ = (c2) com.google.android.exoplayer2.util.a.i(this.f24438h);
        this.f24442l = c2VarJ.f24169b;
        this.f24443m = c2VarJ.f24173f.f24185a.f73507d;
        while (c2VarJ != null) {
            c2VarJ.t();
            c2VarJ = c2VarJ.j();
        }
        this.f24438h = null;
        this.f24440j = null;
        this.f24439i = null;
        this.f24441k = 0;
        x();
    }

    public c2 g(a3[] a3VarArr, na.b0 b0Var, com.google.android.exoplayer2.upstream.b bVar, i2 i2Var, d2 d2Var, na.c0 c0Var) {
        c2 c2Var = this.f24440j;
        c2 c2Var2 = new c2(a3VarArr, c2Var == null ? 1000000000000L : (c2Var.l() + this.f24440j.f24173f.f24189e) - d2Var.f24186b, b0Var, bVar, i2Var, d2Var, c0Var);
        c2 c2Var3 = this.f24440j;
        if (c2Var3 != null) {
            c2Var3.w(c2Var2);
        } else {
            this.f24438h = c2Var2;
            this.f24439i = c2Var2;
        }
        this.f24442l = null;
        this.f24440j = c2Var2;
        this.f24441k++;
        x();
        return c2Var2;
    }

    public c2 j() {
        return this.f24440j;
    }

    public d2 o(long j10, m2 m2Var) {
        c2 c2Var = this.f24440j;
        return c2Var == null ? h(m2Var) : i(m2Var.f24633a, c2Var, j10);
    }

    public c2 p() {
        return this.f24438h;
    }

    public c2 q() {
        return this.f24439i;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    public d2 r(l3 l3Var, d2 d2Var) {
        long jM;
        long j10;
        int i10;
        boolean zT;
        int i11;
        com.google.android.exoplayer2.source.o.b bVar = d2Var.f24185a;
        boolean zS = s(bVar);
        boolean zU = u(l3Var, bVar);
        boolean zT2 = t(l3Var, bVar, zS);
        l3Var.l(d2Var.f24185a.f73504a, this.f24431a);
        long jI = (bVar.b() || (i11 = bVar.f73508e) == -1) ? -9223372036854775807L : this.f24431a.i(i11);
        if (!bVar.b()) {
            if (jI == C.TIME_UNSET || jI == Long.MIN_VALUE) {
                jM = this.f24431a.m();
            } else {
                j10 = jI;
            }
            if (bVar.b()) {
                zT = this.f24431a.t(bVar.f73505b);
            } else {
                i10 = bVar.f73508e;
                if (i10 == -1 && this.f24431a.t(i10)) {
                    zT = true;
                } else {
                    zT = false;
                }
            }
            return new d2(bVar, d2Var.f24186b, d2Var.f24187c, jI, j10, zT, zS, zU, zT2);
        }
        jM = this.f24431a.e(bVar.f73505b, bVar.f73506c);
        j10 = jM;
        if (bVar.b()) {
            zT = this.f24431a.t(bVar.f73505b);
        } else {
            i10 = bVar.f73508e;
            if (i10 == -1) {
                zT = false;
            } else {
                zT = false;
            }
        }
        return new d2(bVar, d2Var.f24186b, d2Var.f24187c, jI, j10, zT, zS, zU, zT2);
    }

    public boolean v(com.google.android.exoplayer2.source.n nVar) {
        c2 c2Var = this.f24440j;
        return c2Var != null && c2Var.f24168a == nVar;
    }

    public void y(long j10) {
        c2 c2Var = this.f24440j;
        if (c2Var != null) {
            c2Var.s(j10);
        }
    }

    public boolean z(c2 c2Var) {
        boolean z10 = false;
        com.google.android.exoplayer2.util.a.g(c2Var != null);
        if (c2Var.equals(this.f24440j)) {
            return false;
        }
        this.f24440j = c2Var;
        while (c2Var.j() != null) {
            c2Var = c2Var.j();
            if (c2Var == this.f24439i) {
                this.f24439i = this.f24438h;
                z10 = true;
            }
            c2Var.t();
            this.f24441k--;
        }
        this.f24440j.w(null);
        x();
        return z10;
    }
}
