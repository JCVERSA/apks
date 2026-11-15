package com.google.android.exoplayer2.source;

import android.util.Pair;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class m extends c {

    private final o f25570k;

    private final boolean f25571l;

    private final l3.d f25572m;

    private final l3.b f25573n;

    private a f25574o;

    private l f25575p;

    private boolean f25576q;

    private boolean f25577r;

    private boolean f25578s;

    private static final class a extends j {

        public static final Object f25579f = new Object();

        private final Object f25580d;

        private final Object f25581e;

        private a(l3 l3Var, Object obj, Object obj2) {
            super(l3Var);
            this.f25580d = obj;
            this.f25581e = obj2;
        }

        public static a A(w1 w1Var) {
            return new a(new b(w1Var), l3.d.f24534r, f25579f);
        }

        public static a B(l3 l3Var, Object obj, Object obj2) {
            return new a(l3Var, obj, obj2);
        }

        @Override
        public int f(Object obj) {
            Object obj2;
            l3 l3Var = this.f25555c;
            if (f25579f.equals(obj) && (obj2 = this.f25581e) != null) {
                obj = obj2;
            }
            return l3Var.f(obj);
        }

        @Override
        public l3.b k(int i10, l3.b bVar, boolean z10) {
            this.f25555c.k(i10, bVar, z10);
            if (p0.c(bVar.f24524b, this.f25581e) && z10) {
                bVar.f24524b = f25579f;
            }
            return bVar;
        }

        @Override
        public Object q(int i10) {
            Object objQ = this.f25555c.q(i10);
            return p0.c(objQ, this.f25581e) ? f25579f : objQ;
        }

        @Override
        public l3.d s(int i10, l3.d dVar, long j10) {
            this.f25555c.s(i10, dVar, j10);
            if (p0.c(dVar.f24538a, this.f25580d)) {
                dVar.f24538a = l3.d.f24534r;
            }
            return dVar;
        }

        public a z(l3 l3Var) {
            return new a(l3Var, this.f25580d, this.f25581e);
        }
    }

    public static final class b extends l3 {

        private final w1 f25582c;

        public b(w1 w1Var) {
            this.f25582c = w1Var;
        }

        @Override
        public int f(Object obj) {
            return obj == a.f25579f ? 0 : -1;
        }

        @Override
        public l3.b k(int i10, l3.b bVar, boolean z10) {
            bVar.w(z10 ? 0 : null, z10 ? a.f25579f : null, 0, C.TIME_UNSET, 0L, w9.c.f74222g, true);
            return bVar;
        }

        @Override
        public int m() {
            return 1;
        }

        @Override
        public Object q(int i10) {
            return a.f25579f;
        }

        @Override
        public l3.d s(int i10, l3.d dVar, long j10) {
            dVar.k(l3.d.f24534r, this.f25582c, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
            dVar.f24549l = true;
            return dVar;
        }

        @Override
        public int t() {
            return 1;
        }
    }

    public m(o oVar, boolean z10) {
        this.f25570k = oVar;
        this.f25571l = z10 && oVar.b();
        this.f25572m = new l3.d();
        this.f25573n = new l3.b();
        l3 l3VarC = oVar.c();
        if (l3VarC == null) {
            this.f25574o = a.A(oVar.a());
        } else {
            this.f25574o = a.B(l3VarC, null, null);
            this.f25578s = true;
        }
    }

    private Object M(Object obj) {
        return (this.f25574o.f25581e == null || !this.f25574o.f25581e.equals(obj)) ? obj : a.f25579f;
    }

    private Object N(Object obj) {
        return (this.f25574o.f25581e == null || !obj.equals(a.f25579f)) ? obj : this.f25574o.f25581e;
    }

    private void R(long j10) {
        l lVar = this.f25575p;
        int iF = this.f25574o.f(lVar.f25561a.f73504a);
        if (iF == -1) {
            return;
        }
        long j11 = this.f25574o.j(iF, this.f25573n).f24526d;
        if (j11 != C.TIME_UNSET && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        lVar.l(j10);
    }

    @Override
    public void B(k0 k0Var) {
        super.B(k0Var);
        if (this.f25571l) {
            return;
        }
        this.f25576q = true;
        K(null, this.f25570k);
    }

    @Override
    public void D() {
        this.f25577r = false;
        this.f25576q = false;
        super.D();
    }

    @Override
    public l d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        l lVar = new l(bVar, bVar2, j10);
        lVar.n(this.f25570k);
        if (this.f25577r) {
            lVar.a(bVar.c(N(bVar.f73504a)));
        } else {
            this.f25575p = lVar;
            if (!this.f25576q) {
                this.f25576q = true;
                K(null, this.f25570k);
            }
        }
        return lVar;
    }

    @Override
    public o.b F(Void r10, o.b bVar) {
        return bVar.c(M(bVar.f73504a));
    }

    public l3 P() {
        return this.f25574o;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    @Override
    public void I(Void r13, o oVar, l3 l3Var) {
        long j10;
        o.b bVarC;
        if (this.f25577r) {
            this.f25574o = this.f25574o.z(l3Var);
            l lVar = this.f25575p;
            if (lVar != null) {
                R(lVar.c());
            }
        } else {
            if (!l3Var.u()) {
                l3Var.r(0, this.f25572m);
                long jF = this.f25572m.f();
                Object obj = this.f25572m.f24538a;
                l lVar2 = this.f25575p;
                if (lVar2 != null) {
                    long jI = lVar2.i();
                    this.f25574o.l(this.f25575p.f25561a.f73504a, this.f25573n);
                    long jQ = this.f25573n.q() + jI;
                    if (jQ != this.f25574o.r(0, this.f25572m).f()) {
                        j10 = jQ;
                    } else {
                        j10 = jF;
                    }
                } else {
                    j10 = jF;
                }
                Pair pairN = l3Var.n(this.f25572m, this.f25573n, 0, j10);
                Object obj2 = pairN.first;
                long jLongValue = ((Long) pairN.second).longValue();
                this.f25574o = this.f25578s ? this.f25574o.z(l3Var) : a.B(l3Var, obj, obj2);
                l lVar3 = this.f25575p;
                if (lVar3 != null) {
                    R(jLongValue);
                    o.b bVar = lVar3.f25561a;
                    bVarC = bVar.c(N(bVar.f73504a));
                }
                this.f25578s = true;
                this.f25577r = true;
                C(this.f25574o);
                if (bVarC != null) {
                    ((l) com.google.android.exoplayer2.util.a.e(this.f25575p)).a(bVarC);
                }
            }
            this.f25574o = this.f25578s ? this.f25574o.z(l3Var) : a.B(l3Var, l3.d.f24534r, a.f25579f);
        }
        bVarC = null;
        this.f25578s = true;
        this.f25577r = true;
        C(this.f25574o);
        if (bVarC != null) {
            ((l) com.google.android.exoplayer2.util.a.e(this.f25575p)).a(bVarC);
        }
    }

    @Override
    public w1 a() {
        return this.f25570k.a();
    }

    @Override
    public void i(n nVar) {
        ((l) nVar).m();
        if (nVar == this.f25575p) {
            this.f25575p = null;
        }
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }
}
