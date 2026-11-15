package com.google.android.exoplayer2.source;

import android.util.Pair;
import androidx.media3.common.C;
import com.google.android.exoplayer2.a0;
import defpackage.blb;
import defpackage.cb;
import defpackage.m54;
import defpackage.u5b;
import defpackage.zi;

public final class g extends c {
    public final i k;
    public final boolean l;
    public final a0.d m;
    public final a0.b n;
    public a o;
    public f p;
    public boolean q;
    public boolean r;
    public boolean s;

    public static final class a extends m54 {
        public static final Object g = new Object();
        public final Object e;
        public final Object f;

        public a(a0 a0Var, Object obj, Object obj2) {
            super(a0Var);
            this.e = obj;
            this.f = obj2;
        }

        public static a A(com.google.android.exoplayer2.n nVar) {
            return new a(new b(nVar), a0.d.s, g);
        }

        public static a B(a0 a0Var, Object obj, Object obj2) {
            return new a(a0Var, obj, obj2);
        }

        @Override
        public int f(Object obj) {
            Object obj2;
            a0 a0Var = this.d;
            if (g.equals(obj) && (obj2 = this.f) != null) {
                obj = obj2;
            }
            return a0Var.f(obj);
        }

        @Override
        public a0.b k(int i, a0.b bVar, boolean z) {
            this.d.k(i, bVar, z);
            if (blb.c(bVar.c, this.f) && z) {
                bVar.c = g;
            }
            return bVar;
        }

        @Override
        public Object q(int i) {
            Object objQ = this.d.q(i);
            return blb.c(objQ, this.f) ? g : objQ;
        }

        @Override
        public a0.d s(int i, a0.d dVar, long j) {
            this.d.s(i, dVar, j);
            if (blb.c(dVar.b, this.e)) {
                dVar.b = a0.d.s;
            }
            return dVar;
        }

        public a z(a0 a0Var) {
            return new a(a0Var, this.e, this.f);
        }
    }

    public static final class b extends a0 {
        public final com.google.android.exoplayer2.n d;

        public b(com.google.android.exoplayer2.n nVar) {
            this.d = nVar;
        }

        @Override
        public int f(Object obj) {
            return obj == a.g ? 0 : -1;
        }

        @Override
        public a0.b k(int i, a0.b bVar, boolean z) {
            bVar.w(z ? 0 : null, z ? a.g : null, 0, C.TIME_UNSET, 0L, com.google.android.exoplayer2.source.ads.a.h, true);
            return bVar;
        }

        @Override
        public int m() {
            return 1;
        }

        @Override
        public Object q(int i) {
            return a.g;
        }

        @Override
        public a0.d s(int i, a0.d dVar, long j) {
            dVar.k(a0.d.s, this.d, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
            dVar.m = true;
            return dVar;
        }

        @Override
        public int t() {
            return 1;
        }
    }

    public g(i iVar, boolean z) {
        this.k = iVar;
        this.l = z && iVar.isSingleWindow();
        this.m = new a0.d();
        this.n = new a0.b();
        a0 initialTimeline = iVar.getInitialTimeline();
        if (initialTimeline == null) {
            this.o = a.A(iVar.getMediaItem());
        } else {
            this.o = a.B(initialTimeline, null, null);
            this.s = true;
        }
    }

    @Override
    public f c(i.b bVar, cb cbVar, long j) {
        f fVar = new f(bVar, cbVar, j);
        fVar.m(this.k);
        if (this.r) {
            fVar.e(bVar.c(F(bVar.a)));
        } else {
            this.p = fVar;
            if (!this.q) {
                this.q = true;
                C(null, this.k);
            }
        }
        return fVar;
    }

    public final Object E(Object obj) {
        return (this.o.f == null || !this.o.f.equals(obj)) ? obj : a.g;
    }

    public final Object F(Object obj) {
        return (this.o.f == null || !obj.equals(a.g)) ? obj : this.o.f;
    }

    @Override
    public i.b x(Void r1, i.b bVar) {
        return bVar.c(E(bVar.a));
    }

    public a0 H() {
        return this.o;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    @Override
    public void A(Void r13, i iVar, a0 a0Var) {
        long j;
        i.b bVarC;
        if (this.r) {
            this.o = this.o.z(a0Var);
            f fVar = this.p;
            if (fVar != null) {
                J(fVar.f());
            }
        } else {
            if (!a0Var.u()) {
                a0Var.r(0, this.m);
                long jF = this.m.f();
                Object obj = this.m.b;
                f fVar2 = this.p;
                if (fVar2 != null) {
                    long jH = fVar2.h();
                    this.o.l(this.p.b.a, this.n);
                    long jQ = this.n.q() + jH;
                    if (jQ != this.o.r(0, this.m).f()) {
                        j = jQ;
                    } else {
                        j = jF;
                    }
                } else {
                    j = jF;
                }
                Pair pairN = a0Var.n(this.m, this.n, 0, j);
                Object obj2 = pairN.first;
                long jLongValue = ((Long) pairN.second).longValue();
                this.o = this.s ? this.o.z(a0Var) : a.B(a0Var, obj, obj2);
                f fVar3 = this.p;
                if (fVar3 != null) {
                    J(jLongValue);
                    i.b bVar = fVar3.b;
                    bVarC = bVar.c(F(bVar.a));
                }
                this.s = true;
                this.r = true;
                u(this.o);
                if (bVarC != null) {
                    ((f) zi.e(this.p)).e(bVarC);
                }
            }
            this.o = this.s ? this.o.z(a0Var) : a.B(a0Var, a0.d.s, a.g);
        }
        bVarC = null;
        this.s = true;
        this.r = true;
        u(this.o);
        if (bVarC != null) {
            ((f) zi.e(this.p)).e(bVarC);
        }
    }

    public final void J(long j) {
        f fVar = this.p;
        int iF = this.o.f(fVar.b.a);
        if (iF == -1) {
            return;
        }
        long j2 = this.o.j(iF, this.n).e;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        fVar.k(j);
    }

    @Override
    public void e(h hVar) {
        ((f) hVar).l();
        if (hVar == this.p) {
            this.p = null;
        }
    }

    @Override
    public com.google.android.exoplayer2.n getMediaItem() {
        return this.k.getMediaItem();
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override
    public void t(u5b u5bVar) {
        super.t(u5bVar);
        if (this.l) {
            return;
        }
        this.q = true;
        C(null, this.k);
    }

    @Override
    public void v() {
        this.r = false;
        this.q = false;
        super.v();
    }
}
