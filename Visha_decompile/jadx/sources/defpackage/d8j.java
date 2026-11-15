package defpackage;

import androidx.media3.common.C;

public final class d8j {
    public final zmj a;
    public final Object b;
    public final yoj[] c;
    public boolean d;
    public boolean e;
    public boolean f;
    public f8j g;
    public boolean h;
    public final boolean[] i;
    public final aaj[] j;
    public final zqj k;
    public final m9j l;
    public d8j m;
    public npj n;
    public arj o;
    public long p;

    public d8j(aaj[] aajVarArr, long j, zqj zqjVar, nrj nrjVar, m9j m9jVar, f8j f8jVar, arj arjVar, long j2) {
        this.j = aajVarArr;
        this.p = j;
        this.k = zqjVar;
        this.l = m9jVar;
        bnj bnjVar = f8jVar.a;
        this.b = bnjVar.a;
        this.g = f8jVar;
        this.n = npj.d;
        this.o = arjVar;
        this.c = new yoj[2];
        this.i = new boolean[2];
        long j3 = f8jVar.b;
        long j4 = f8jVar.d;
        zmj zmjVarO = m9jVar.o(bnjVar, nrjVar, j3);
        this.a = j4 != C.TIME_UNSET ? new fmj(zmjVarO, true, 0L, j4) : zmjVarO;
    }

    public final long a(arj arjVar, long j, boolean z) {
        return b(arjVar, j, false, new boolean[2]);
    }

    public final long b(arj arjVar, long j, boolean z, boolean[] zArr) {
        aaj[] aajVarArr;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= arjVar.a) {
                break;
            }
            boolean[] zArr2 = this.i;
            if (z || !arjVar.a(this.o, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        int i2 = 0;
        while (true) {
            aajVarArr = this.j;
            if (i2 >= 2) {
                break;
            }
            aajVarArr[i2].zzb();
            i2++;
        }
        u();
        this.o = arjVar;
        v();
        zmj zmjVar = this.a;
        tqj[] tqjVarArr = arjVar.c;
        boolean[] zArr3 = this.i;
        yoj[] yojVarArr = this.c;
        long jM = zmjVar.m(tqjVarArr, zArr3, yojVarArr, zArr, j);
        for (int i3 = 0; i3 < 2; i3++) {
            aajVarArr[i3].zzb();
        }
        this.f = false;
        for (int i4 = 0; i4 < 2; i4++) {
            if (yojVarArr[i4] != null) {
                n7g.f(arjVar.b(i4));
                aajVarArr[i4].zzb();
                this.f = true;
            } else {
                n7g.f(tqjVarArr[i4] == null);
            }
        }
        return jM;
    }

    public final long c() {
        if (!this.e) {
            return this.g.b;
        }
        long jZzb = this.f ? this.a.zzb() : Long.MIN_VALUE;
        return jZzb == Long.MIN_VALUE ? this.g.e : jZzb;
    }

    public final long d() {
        if (this.e) {
            return this.a.zzc();
        }
        return 0L;
    }

    public final long e() {
        return this.p;
    }

    public final long f() {
        return this.g.b + this.p;
    }

    public final d8j g() {
        return this.m;
    }

    public final npj h() {
        return this.n;
    }

    public final arj i() {
        return this.o;
    }

    public final arj j(float f, w4f w4fVar, boolean z) {
        npj npjVar = this.n;
        bnj bnjVar = this.g.a;
        zqj zqjVar = this.k;
        aaj[] aajVarArr = this.j;
        arj arjVarF = zqjVar.f(aajVarArr, npjVar, bnjVar, w4fVar);
        for (int i = 0; i < arjVarF.a; i++) {
            boolean z2 = true;
            if (arjVarF.b(i)) {
                if (arjVarF.c[i] == null) {
                    aajVarArr[i].zzb();
                    z2 = false;
                }
                n7g.f(z2);
            } else {
                n7g.f(arjVarF.c[i] == null);
            }
        }
        for (tqj tqjVar : arjVarF.c) {
        }
        return arjVarF;
    }

    public final void k(z7j z7jVar) {
        n7g.f(w());
        this.a.b(z7jVar);
    }

    public final void l(float f, w4f w4fVar, boolean z) {
        this.e = true;
        this.n = this.a.zzg();
        arj arjVarJ = j(f, w4fVar, z);
        f8j f8jVar = this.g;
        long jMax = f8jVar.b;
        long j = f8jVar.e;
        if (j != C.TIME_UNSET && jMax >= j) {
            jMax = Math.max(0L, j - 1);
        }
        long jA = a(arjVarJ, jMax, false);
        long j2 = this.p;
        f8j f8jVar2 = this.g;
        this.p = j2 + (f8jVar2.b - jA);
        this.g = f8jVar2.b(jA);
    }

    public final void m(ymj ymjVar, long j) {
        this.d = true;
        this.a.d(ymjVar, j);
    }

    public final void n(long j) {
        n7g.f(w());
        if (this.e) {
            this.a.a(j - this.p);
        }
    }

    public final void o() {
        u();
        zmj zmjVar = this.a;
        try {
            boolean z = zmjVar instanceof fmj;
            m9j m9jVar = this.l;
            if (z) {
                m9jVar.i(((fmj) zmjVar).b);
            } else {
                m9jVar.i(zmjVar);
            }
        } catch (RuntimeException e) {
            zrg.d("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    public final void p(d8j d8jVar) {
        if (d8jVar == this.m) {
            return;
        }
        u();
        this.m = d8jVar;
        v();
    }

    public final void q(long j) {
        this.p = j;
    }

    public final void r() {
        zmj zmjVar = this.a;
        if (zmjVar instanceof fmj) {
            long j = this.g.d;
            if (j == C.TIME_UNSET) {
                j = Long.MIN_VALUE;
            }
            ((fmj) zmjVar).i(0L, j);
        }
    }

    public final boolean s() {
        if (this.e) {
            return !this.f || this.a.zzb() == Long.MIN_VALUE;
        }
        return false;
    }

    public final boolean t() {
        if (this.e) {
            return s() || c() - this.g.b >= C.TIME_UNSET;
        }
        return false;
    }

    public final void u() {
        if (!w()) {
            return;
        }
        int i = 0;
        while (true) {
            arj arjVar = this.o;
            if (i >= arjVar.a) {
                return;
            }
            arjVar.b(i);
            tqj tqjVar = this.o.c[i];
            i++;
        }
    }

    public final void v() {
        if (!w()) {
            return;
        }
        int i = 0;
        while (true) {
            arj arjVar = this.o;
            if (i >= arjVar.a) {
                return;
            }
            arjVar.b(i);
            tqj tqjVar = this.o.c[i];
            i++;
        }
    }

    public final boolean w() {
        return this.m == null;
    }
}
