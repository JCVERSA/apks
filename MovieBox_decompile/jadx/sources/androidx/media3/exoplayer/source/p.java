package androidx.media3.exoplayer.source;

import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

public final class p extends l0 {

    private final boolean f12559m;

    private final androidx.media3.common.e0.c f12560n;

    private final androidx.media3.common.e0.b f12561o;

    private a f12562p;

    private o f12563q;

    private boolean f12564r;

    private boolean f12565s;

    private boolean f12566t;

    private static final class a extends m {

        public static final Object f12567h = new Object();

        private final Object f12568f;

        private final Object f12569g;

        private a(androidx.media3.common.e0 e0Var, Object obj, Object obj2) {
            super(e0Var);
            this.f12568f = obj;
            this.f12569g = obj2;
        }

        public static a u(androidx.media3.common.t tVar) {
            return new a(new b(tVar), androidx.media3.common.e0.c.f9629q, f12567h);
        }

        public static a v(androidx.media3.common.e0 e0Var, Object obj, Object obj2) {
            return new a(e0Var, obj, obj2);
        }

        @Override
        public int b(Object obj) {
            Object obj2;
            androidx.media3.common.e0 e0Var = this.f12544e;
            if (f12567h.equals(obj) && (obj2 = this.f12569g) != null) {
                obj = obj2;
            }
            return e0Var.b(obj);
        }

        @Override
        public androidx.media3.common.e0.b g(int i10, androidx.media3.common.e0.b bVar, boolean z10) {
            this.f12544e.g(i10, bVar, z10);
            if (Objects.equals(bVar.f9623b, this.f12569g) && z10) {
                bVar.f9623b = f12567h;
            }
            return bVar;
        }

        @Override
        public Object m(int i10) {
            Object objM = this.f12544e.m(i10);
            return Objects.equals(objM, this.f12569g) ? f12567h : objM;
        }

        @Override
        public androidx.media3.common.e0.c o(int i10, androidx.media3.common.e0.c cVar, long j10) {
            this.f12544e.o(i10, cVar, j10);
            if (Objects.equals(cVar.f9639a, this.f12568f)) {
                cVar.f9639a = androidx.media3.common.e0.c.f9629q;
            }
            return cVar;
        }

        public a t(androidx.media3.common.e0 e0Var) {
            return new a(e0Var, this.f12568f, this.f12569g);
        }
    }

    public static final class b extends androidx.media3.common.e0 {

        private final androidx.media3.common.t f12570e;

        public b(androidx.media3.common.t tVar) {
            this.f12570e = tVar;
        }

        @Override
        public int b(Object obj) {
            return obj == a.f12567h ? 0 : -1;
        }

        @Override
        public androidx.media3.common.e0.b g(int i10, androidx.media3.common.e0.b bVar, boolean z10) {
            bVar.u(z10 ? 0 : null, z10 ? a.f12567h : null, 0, C.TIME_UNSET, 0L, androidx.media3.common.b.f9561g, true);
            return bVar;
        }

        @Override
        public int i() {
            return 1;
        }

        @Override
        public Object m(int i10) {
            return a.f12567h;
        }

        @Override
        public androidx.media3.common.e0.c o(int i10, androidx.media3.common.e0.c cVar, long j10) {
            cVar.g(androidx.media3.common.e0.c.f9629q, this.f12570e, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
            cVar.f9649k = true;
            return cVar;
        }

        @Override
        public int p() {
            return 1;
        }
    }

    public p(r rVar, boolean z10) {
        super(rVar);
        this.f12559m = z10 && rVar.b();
        this.f12560n = new androidx.media3.common.e0.c();
        this.f12561o = new androidx.media3.common.e0.b();
        androidx.media3.common.e0 e0VarC = rVar.c();
        if (e0VarC == null) {
            this.f12562p = a.u(rVar.a());
        } else {
            this.f12562p = a.v(e0VarC, null, null);
            this.f12566t = true;
        }
    }

    private Object U(Object obj) {
        return (this.f12562p.f12569g == null || !this.f12562p.f12569g.equals(obj)) ? obj : a.f12567h;
    }

    private Object V(Object obj) {
        return (this.f12562p.f12569g == null || !obj.equals(a.f12567h)) ? obj : this.f12562p.f12569g;
    }

    private boolean X(long j10) {
        o oVar = this.f12563q;
        int iB = this.f12562p.b(oVar.f12550a.f12571a);
        if (iB == -1) {
            return false;
        }
        long j11 = this.f12562p.f(iB, this.f12561o).f9625d;
        if (j11 != C.TIME_UNSET && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        oVar.m(j10);
        return true;
    }

    @Override
    public void B() {
        this.f12565s = false;
        this.f12564r = false;
        super.B();
    }

    @Override
    protected r.b J(r.b bVar) {
        return bVar.a(U(bVar.f12571a));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    /* JADX WARN: Code duplicated, block: B:32:0x00be  */
    /* JADX WARN: Code duplicated, block: B:34:? A[RETURN, SYNTHETIC] */
    @Override
    protected void P(androidx.media3.common.e0 e0Var) {
        long j10;
        r.b bVarA;
        if (this.f12565s) {
            this.f12562p = this.f12562p.t(e0Var);
            o oVar = this.f12563q;
            if (oVar != null) {
                X(oVar.i());
            }
        } else {
            if (!e0Var.q()) {
                e0Var.n(0, this.f12560n);
                long jC = this.f12560n.c();
                Object obj = this.f12560n.f9639a;
                o oVar2 = this.f12563q;
                if (oVar2 != null) {
                    long j11 = oVar2.j();
                    this.f12562p.h(this.f12563q.f12550a.f12571a, this.f12561o);
                    long jO = this.f12561o.o() + j11;
                    if (jO != this.f12562p.n(0, this.f12560n).c()) {
                        j10 = jO;
                    } else {
                        j10 = jC;
                    }
                } else {
                    j10 = jC;
                }
                Pair pairJ = e0Var.j(this.f12560n, this.f12561o, 0, j10);
                Object obj2 = pairJ.first;
                long jLongValue = ((Long) pairJ.second).longValue();
                this.f12562p = this.f12566t ? this.f12562p.t(e0Var) : a.v(e0Var, obj, obj2);
                o oVar3 = this.f12563q;
                if (oVar3 != null && X(jLongValue)) {
                    r.b bVar = oVar3.f12550a;
                    bVarA = bVar.a(V(bVar.f12571a));
                }
                this.f12566t = true;
                this.f12565s = true;
                A(this.f12562p);
                if (bVarA != null) {
                    ((o) androidx.media3.common.util.a.e(this.f12563q)).c(bVarA);
                }
            }
            this.f12562p = this.f12566t ? this.f12562p.t(e0Var) : a.v(e0Var, androidx.media3.common.e0.c.f9629q, a.f12567h);
        }
        bVarA = null;
        this.f12566t = true;
        this.f12565s = true;
        A(this.f12562p);
        if (bVarA != null) {
            ((o) androidx.media3.common.util.a.e(this.f12563q)).c(bVarA);
        }
    }

    @Override
    public void S() {
        if (this.f12559m) {
            return;
        }
        this.f12564r = true;
        R();
    }

    @Override
    public o g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        o oVar = new o(bVar, bVar2, j10);
        oVar.o(this.f12543k);
        if (this.f12565s) {
            oVar.c(bVar.a(V(bVar.f12571a)));
        } else {
            this.f12563q = oVar;
            if (!this.f12564r) {
                this.f12564r = true;
                R();
            }
        }
        return oVar;
    }

    public androidx.media3.common.e0 W() {
        return this.f12562p;
    }

    @Override
    public void k(q qVar) {
        ((o) qVar).n();
        if (qVar == this.f12563q) {
            this.f12563q = null;
        }
    }

    @Override
    public void n(androidx.media3.common.t tVar) {
        if (this.f12566t) {
            this.f12562p = this.f12562p.t(new f2.x(this.f12562p.f12544e, tVar));
        } else {
            this.f12562p = a.u(tVar);
        }
        this.f12543k.n(tVar);
    }

    @Override
    public boolean q(androidx.media3.common.t tVar) {
        return this.f12543k.q(tVar);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }
}
