package com.google.android.exoplayer2;

import android.os.Handler;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import com.google.common.collect.ImmutableList;
import defpackage.b88;
import defpackage.cb;
import defpackage.kb;
import defpackage.ks8;
import defpackage.rva;
import defpackage.sva;
import defpackage.wk6;
import defpackage.yk6;
import defpackage.zi;

public final class p {
    public final a0.b a = new a0.b();
    public final a0.d b = new a0.d();
    public final kb c;
    public final Handler d;
    public long e;
    public int f;
    public boolean g;
    public wk6 h;
    public wk6 i;
    public wk6 j;
    public int k;
    public Object l;
    public long m;

    public p(kb kbVar, Handler handler) {
        this.c = kbVar;
        this.d = handler;
    }

    public static com.google.android.exoplayer2.source.i.b A(a0 a0Var, Object obj, long j, long j2, a0.d dVar, a0.b bVar) {
        a0Var.l(obj, bVar);
        a0Var.r(bVar.d, dVar);
        int iF = a0Var.f(obj);
        Object objE = obj;
        while (bVar.e == 0 && bVar.f() > 0 && bVar.t(bVar.r()) && bVar.h(0L) == -1) {
            int i = iF + 1;
            if (iF >= dVar.q) {
                break;
            }
            a0Var.k(i, bVar, true);
            objE = zi.e(bVar.c);
            iF = i;
        }
        a0Var.l(objE, bVar);
        int iH = bVar.h(j);
        return iH == -1 ? new com.google.android.exoplayer2.source.i.b(objE, j2, bVar.g(j)) : new com.google.android.exoplayer2.source.i.b(objE, iH, bVar.n(iH), j2);
    }

    public com.google.android.exoplayer2.source.i.b B(a0 a0Var, Object obj, long j) {
        long jC = C(a0Var, obj);
        a0Var.l(obj, this.a);
        a0Var.r(this.a.d, this.b);
        boolean z = false;
        for (int iF = a0Var.f(obj); iF >= this.b.p; iF--) {
            a0Var.k(iF, this.a, true);
            boolean z2 = this.a.f() > 0;
            z |= z2;
            a0.b bVar = this.a;
            if (bVar.h(bVar.e) != -1) {
                obj = zi.e(this.a.c);
            }
            if (z && (!z2 || this.a.e != 0)) {
                break;
            }
        }
        return A(a0Var, obj, j, jC, this.b, this.a);
    }

    public final long C(a0 a0Var, Object obj) {
        int iF;
        int i = a0Var.l(obj, this.a).d;
        Object obj2 = this.l;
        if (obj2 != null && (iF = a0Var.f(obj2)) != -1 && a0Var.j(iF, this.a).d == i) {
            return this.m;
        }
        for (wk6 wk6VarJ = this.h; wk6VarJ != null; wk6VarJ = wk6VarJ.j()) {
            if (wk6VarJ.b.equals(obj)) {
                return wk6VarJ.f.a.d;
            }
        }
        for (wk6 wk6VarJ2 = this.h; wk6VarJ2 != null; wk6VarJ2 = wk6VarJ2.j()) {
            int iF2 = a0Var.f(wk6VarJ2.b);
            if (iF2 != -1 && a0Var.j(iF2, this.a).d == i) {
                return wk6VarJ2.f.a.d;
            }
        }
        long j = this.e;
        this.e = 1 + j;
        if (this.h == null) {
            this.l = obj;
            this.m = j;
        }
        return j;
    }

    public boolean D() {
        wk6 wk6Var = this.j;
        return wk6Var == null || (!wk6Var.f.i && wk6Var.q() && this.j.f.e != C.TIME_UNSET && this.k < 100);
    }

    public final boolean E(a0 a0Var) {
        wk6 wk6VarJ = this.h;
        if (wk6VarJ == null) {
            return true;
        }
        int iF = a0Var.f(wk6VarJ.b);
        while (true) {
            iF = a0Var.h(iF, this.a, this.b, this.f, this.g);
            while (wk6VarJ.j() != null && !wk6VarJ.f.g) {
                wk6VarJ = wk6VarJ.j();
            }
            wk6 wk6VarJ2 = wk6VarJ.j();
            if (iF == -1 || wk6VarJ2 == null || a0Var.f(wk6VarJ2.b) != iF) {
                break;
            }
            wk6VarJ = wk6VarJ2;
        }
        boolean z = z(wk6VarJ);
        wk6VarJ.f = r(a0Var, wk6VarJ.f);
        return !z;
    }

    public boolean F(a0 a0Var, long j, long j2) {
        yk6 yk6VarR;
        wk6 wk6VarJ = this.h;
        wk6 wk6Var = null;
        while (wk6VarJ != null) {
            yk6 yk6Var = wk6VarJ.f;
            if (wk6Var != null) {
                yk6 yk6VarI = i(a0Var, wk6Var, j);
                if (yk6VarI != null && e(yk6Var, yk6VarI)) {
                    yk6VarR = yk6VarI;
                }
                return !z(wk6Var);
            }
            yk6VarR = r(a0Var, yk6Var);
            wk6VarJ.f = yk6VarR.a(yk6Var.c);
            if (!d(yk6Var.e, yk6VarR.e)) {
                wk6VarJ.A();
                long j3 = yk6VarR.e;
                return (z(wk6VarJ) || (wk6VarJ == this.i && !wk6VarJ.f.f && ((j2 > Long.MIN_VALUE ? 1 : (j2 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j2 > ((j3 > C.TIME_UNSET ? 1 : (j3 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : wk6VarJ.z(j3)) ? 1 : (j2 == ((j3 > C.TIME_UNSET ? 1 : (j3 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : wk6VarJ.z(j3)) ? 0 : -1)) >= 0))) ? false : true;
            }
            wk6Var = wk6VarJ;
            wk6VarJ = wk6VarJ.j();
        }
        return true;
    }

    public boolean G(a0 a0Var, int i) {
        this.f = i;
        return E(a0Var);
    }

    public boolean H(a0 a0Var, boolean z) {
        this.g = z;
        return E(a0Var);
    }

    public wk6 b() {
        wk6 wk6Var = this.h;
        if (wk6Var == null) {
            return null;
        }
        if (wk6Var == this.i) {
            this.i = wk6Var.j();
        }
        this.h.t();
        int i = this.k - 1;
        this.k = i;
        if (i == 0) {
            this.j = null;
            wk6 wk6Var2 = this.h;
            this.l = wk6Var2.b;
            this.m = wk6Var2.f.a.d;
        }
        this.h = this.h.j();
        x();
        return this.h;
    }

    public wk6 c() {
        wk6 wk6Var = this.i;
        zi.g((wk6Var == null || wk6Var.j() == null) ? false : true);
        this.i = this.i.j();
        x();
        return this.i;
    }

    public final boolean d(long j, long j2) {
        return j == C.TIME_UNSET || j == j2;
    }

    public final boolean e(yk6 yk6Var, yk6 yk6Var2) {
        return yk6Var.b == yk6Var2.b && yk6Var.a.equals(yk6Var2.a);
    }

    public void f() {
        if (this.k == 0) {
            return;
        }
        wk6 wk6VarJ = (wk6) zi.i(this.h);
        this.l = wk6VarJ.b;
        this.m = wk6VarJ.f.a.d;
        while (wk6VarJ != null) {
            wk6VarJ.t();
            wk6VarJ = wk6VarJ.j();
        }
        this.h = null;
        this.j = null;
        this.i = null;
        this.k = 0;
        x();
    }

    public wk6 g(ks8[] ks8VarArr, rva rvaVar, cb cbVar, q qVar, yk6 yk6Var, sva svaVar) {
        wk6 wk6Var = this.j;
        wk6 wk6Var2 = new wk6(ks8VarArr, wk6Var == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : (wk6Var.l() + this.j.f.e) - yk6Var.b, rvaVar, cbVar, qVar, yk6Var, svaVar);
        wk6 wk6Var3 = this.j;
        if (wk6Var3 != null) {
            wk6Var3.w(wk6Var2);
        } else {
            this.h = wk6Var2;
            this.i = wk6Var2;
        }
        this.l = null;
        this.j = wk6Var2;
        this.k++;
        x();
        return wk6Var2;
    }

    public final yk6 h(b88 b88Var) {
        return k(b88Var.a, b88Var.b, b88Var.c, b88Var.r);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e4  */
    public final yk6 i(a0 a0Var, wk6 wk6Var, long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        boolean z;
        long j6;
        yk6 yk6Var = wk6Var.f;
        long jL = (wk6Var.l() + yk6Var.e) - j;
        if (!yk6Var.g) {
            com.google.android.exoplayer2.source.i.b bVar = yk6Var.a;
            a0Var.l(bVar.a, this.a);
            if (!bVar.b()) {
                int iN = this.a.n(bVar.e);
                boolean z2 = this.a.t(bVar.e) && this.a.k(bVar.e, iN) == 3;
                if (iN == this.a.d(bVar.e) || z2) {
                    return m(a0Var, bVar.a, n(a0Var, bVar.a, bVar.e), yk6Var.e, bVar.d);
                }
                return l(a0Var, bVar.a, bVar.e, iN, yk6Var.e, bVar.d);
            }
            int i = bVar.b;
            int iD = this.a.d(i);
            if (iD == -1) {
                return null;
            }
            int iO = this.a.o(i, bVar.c);
            if (iO < iD) {
                return l(a0Var, bVar.a, i, iO, yk6Var.c, bVar.d);
            }
            long jLongValue = yk6Var.c;
            if (jLongValue == C.TIME_UNSET) {
                a0.d dVar = this.b;
                a0.b bVar2 = this.a;
                Pair pairO = a0Var.o(dVar, bVar2, bVar2.d, C.TIME_UNSET, Math.max(0L, jL));
                if (pairO == null) {
                    return null;
                }
                jLongValue = ((Long) pairO.second).longValue();
            }
            return m(a0Var, bVar.a, Math.max(n(a0Var, bVar.a, bVar.b), jLongValue), yk6Var.c, bVar.d);
        }
        int iH = a0Var.h(a0Var.f(yk6Var.a.a), this.a, this.b, this.f, this.g);
        if (iH == -1) {
            return null;
        }
        int i2 = a0Var.k(iH, this.a, true).d;
        Object objE = zi.e(this.a.c);
        long j7 = yk6Var.a.d;
        if (a0Var.r(i2, this.b).p == iH) {
            Pair pairO2 = a0Var.o(this.b, this.a, i2, C.TIME_UNSET, Math.max(0L, jL));
            if (pairO2 == null) {
                return null;
            }
            objE = pairO2.first;
            long jLongValue2 = ((Long) pairO2.second).longValue();
            wk6 wk6VarJ = wk6Var.j();
            if (wk6VarJ == null || !wk6VarJ.b.equals(objE)) {
                j6 = this.e;
                this.e = 1 + j6;
            } else {
                j6 = wk6VarJ.f.a.d;
            }
            j2 = jLongValue2;
            j3 = -9223372036854775807L;
            j7 = j6;
        } else {
            j2 = 0;
            j3 = 0;
        }
        com.google.android.exoplayer2.source.i.b bVarA = A(a0Var, objE, j2, j7, this.b, this.a);
        if (j3 == C.TIME_UNSET || yk6Var.c == C.TIME_UNSET) {
            j4 = j2;
            j5 = j3;
        } else {
            if (a0Var.l(yk6Var.a.a, this.a).f() > 0) {
                a0.b bVar3 = this.a;
                z = bVar3.t(bVar3.r());
            }
            if (bVarA.b() && z) {
                j5 = yk6Var.c;
                j4 = j2;
            } else {
                if (z) {
                    j4 = yk6Var.c;
                } else {
                    j4 = j2;
                }
                j5 = j3;
            }
        }
        return k(a0Var, bVarA, j5, j4);
    }

    public wk6 j() {
        return this.j;
    }

    public final yk6 k(a0 a0Var, com.google.android.exoplayer2.source.i.b bVar, long j, long j2) {
        a0Var.l(bVar.a, this.a);
        return bVar.b() ? l(a0Var, bVar.a, bVar.b, bVar.c, j, bVar.d) : m(a0Var, bVar.a, j2, j, bVar.d);
    }

    public final yk6 l(a0 a0Var, Object obj, int i, int i2, long j, long j2) {
        com.google.android.exoplayer2.source.i.b bVar = new com.google.android.exoplayer2.source.i.b(obj, i, i2, j2);
        long jE = a0Var.l(bVar.a, this.a).e(bVar.b, bVar.c);
        long j3 = i2 == this.a.n(i) ? this.a.j() : 0L;
        return new yk6(bVar, (jE == C.TIME_UNSET || j3 < jE) ? j3 : Math.max(0L, jE - 1), j, C.TIME_UNSET, jE, this.a.t(bVar.b), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b6  */
    public final yk6 m(a0 a0Var, Object obj, long j, long j2, long j3) {
        boolean z;
        long j4;
        long jI;
        long j5;
        long jMax;
        a0Var.l(obj, this.a);
        int iG = this.a.g(j);
        int i = 1;
        if (iG == -1) {
            if (this.a.f() > 0) {
                a0.b bVar = this.a;
                if (bVar.t(bVar.r())) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
        } else if (this.a.t(iG)) {
            long jI2 = this.a.i(iG);
            a0.b bVar2 = this.a;
            if (jI2 == bVar2.e && bVar2.s(iG)) {
                z = true;
                iG = -1;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        com.google.android.exoplayer2.source.i.b bVar3 = new com.google.android.exoplayer2.source.i.b(obj, j3, iG);
        boolean zS = s(bVar3);
        boolean zU = u(a0Var, bVar3);
        boolean zT = t(a0Var, bVar3, zS);
        boolean z2 = iG != -1 && this.a.t(iG);
        if (iG == -1) {
            if (z) {
                jI = this.a.e;
            } else {
                j4 = -9223372036854775807L;
            }
            if (j4 != C.TIME_UNSET || j4 == Long.MIN_VALUE) {
                j5 = this.a.e;
            } else {
                j5 = j4;
            }
            if (j5 != C.TIME_UNSET || j < j5) {
                jMax = j;
            } else {
                if (!zT && z) {
                    i = 0;
                }
                jMax = Math.max(0L, j5 - ((long) i));
            }
            return new yk6(bVar3, jMax, j2, j4, j5, z2, zS, zU, zT);
        }
        jI = this.a.i(iG);
        j4 = jI;
        if (j4 != C.TIME_UNSET) {
            j5 = this.a.e;
        } else {
            j5 = this.a.e;
        }
        if (j5 != C.TIME_UNSET) {
            jMax = j;
        } else {
            jMax = j;
        }
        return new yk6(bVar3, jMax, j2, j4, j5, z2, zS, zU, zT);
    }

    public final long n(a0 a0Var, Object obj, int i) {
        a0Var.l(obj, this.a);
        long jI = this.a.i(i);
        return jI == Long.MIN_VALUE ? this.a.e : jI + this.a.l(i);
    }

    public yk6 o(long j, b88 b88Var) {
        wk6 wk6Var = this.j;
        return wk6Var == null ? h(b88Var) : i(b88Var.a, wk6Var, j);
    }

    public wk6 p() {
        return this.h;
    }

    public wk6 q() {
        return this.i;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    public yk6 r(a0 a0Var, yk6 yk6Var) {
        long jM;
        long j;
        int i;
        boolean zT;
        int i2;
        com.google.android.exoplayer2.source.i.b bVar = yk6Var.a;
        boolean zS = s(bVar);
        boolean zU = u(a0Var, bVar);
        boolean zT2 = t(a0Var, bVar, zS);
        a0Var.l(yk6Var.a.a, this.a);
        long jI = (bVar.b() || (i2 = bVar.e) == -1) ? -9223372036854775807L : this.a.i(i2);
        if (!bVar.b()) {
            if (jI == C.TIME_UNSET || jI == Long.MIN_VALUE) {
                jM = this.a.m();
            } else {
                j = jI;
            }
            if (bVar.b()) {
                zT = this.a.t(bVar.b);
            } else {
                i = bVar.e;
                if (i == -1 && this.a.t(i)) {
                    zT = true;
                } else {
                    zT = false;
                }
            }
            return new yk6(bVar, yk6Var.b, yk6Var.c, jI, j, zT, zS, zU, zT2);
        }
        jM = this.a.e(bVar.b, bVar.c);
        j = jM;
        if (bVar.b()) {
            zT = this.a.t(bVar.b);
        } else {
            i = bVar.e;
            if (i == -1) {
                zT = false;
            } else {
                zT = false;
            }
        }
        return new yk6(bVar, yk6Var.b, yk6Var.c, jI, j, zT, zS, zU, zT2);
    }

    public final boolean s(com.google.android.exoplayer2.source.i.b bVar) {
        return !bVar.b() && bVar.e == -1;
    }

    public final boolean t(a0 a0Var, com.google.android.exoplayer2.source.i.b bVar, boolean z) {
        int iF = a0Var.f(bVar.a);
        return !a0Var.r(a0Var.j(iF, this.a).d, this.b).j && a0Var.v(iF, this.a, this.b, this.f, this.g) && z;
    }

    public final boolean u(a0 a0Var, com.google.android.exoplayer2.source.i.b bVar) {
        if (s(bVar)) {
            return a0Var.r(a0Var.l(bVar.a, this.a).d, this.b).q == a0Var.f(bVar.a);
        }
        return false;
    }

    public boolean v(com.google.android.exoplayer2.source.h hVar) {
        wk6 wk6Var = this.j;
        return wk6Var != null && wk6Var.a == hVar;
    }

    public final void w(ImmutableList.a aVar, com.google.android.exoplayer2.source.i.b bVar) {
        this.c.q(aVar.e(), bVar);
    }

    public final void x() {
        final ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (wk6 wk6VarJ = this.h; wk6VarJ != null; wk6VarJ = wk6VarJ.j()) {
            aVarBuilder.a(wk6VarJ.f.a);
        }
        wk6 wk6Var = this.i;
        final com.google.android.exoplayer2.source.i.b bVar = wk6Var == null ? null : wk6Var.f.a;
        this.d.post(new Runnable() {
            @Override
            public final void run() {
                this.b.w(aVarBuilder, bVar);
            }
        });
    }

    public void y(long j) {
        wk6 wk6Var = this.j;
        if (wk6Var != null) {
            wk6Var.s(j);
        }
    }

    public boolean z(wk6 wk6Var) {
        boolean z = false;
        zi.g(wk6Var != null);
        if (wk6Var.equals(this.j)) {
            return false;
        }
        this.j = wk6Var;
        while (wk6Var.j() != null) {
            wk6Var = wk6Var.j();
            if (wk6Var == this.i) {
                this.i = this.h;
                z = true;
            }
            wk6Var.t();
            this.k--;
        }
        this.j.w(null);
        x();
        return z;
    }
}
