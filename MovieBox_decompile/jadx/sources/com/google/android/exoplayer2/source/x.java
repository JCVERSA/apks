package com.google.android.exoplayer2.source;

import android.os.Looper;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.u1;

public final class x extends com.google.android.exoplayer2.source.a implements w.b {

    private final w1 f26030h;

    private final w1.h f26031i;

    private final com.google.android.exoplayer2.upstream.k.a f26032j;

    private final r.a f26033k;

    private final com.google.android.exoplayer2.drm.u f26034l;

    private final com.google.android.exoplayer2.upstream.z f26035m;

    private final int f26036n;

    private boolean f26037o;

    private long f26038p;

    private boolean f26039q;

    private boolean f26040r;

    private k0 f26041s;

    class a extends j {
        a(x xVar, l3 l3Var) {
            super(l3Var);
        }

        @Override
        public l3.b k(int i10, l3.b bVar, boolean z10) {
            super.k(i10, bVar, z10);
            bVar.f24528f = true;
            return bVar;
        }

        @Override
        public l3.d s(int i10, l3.d dVar, long j10) {
            super.s(i10, dVar, j10);
            dVar.f24549l = true;
            return dVar;
        }
    }

    public static final class b implements o.a {

        private final com.google.android.exoplayer2.upstream.k.a f26042a;

        private r.a f26043b;

        private com.google.android.exoplayer2.drm.x f26044c;

        private com.google.android.exoplayer2.upstream.z f26045d;

        private int f26046e;

        private String f26047f;

        private Object f26048g;

        public b(com.google.android.exoplayer2.upstream.k.a aVar) {
            this(aVar, new i9.i());
        }

        public static r f(i9.r rVar, u1 u1Var) {
            return new v9.a(rVar);
        }

        @Override
        public x a(w1 w1Var) {
            com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
            w1.h hVar = w1Var.f27149b;
            boolean z10 = false;
            boolean z11 = hVar.f27219h == null && this.f26048g != null;
            if (hVar.f27216e == null && this.f26047f != null) {
                z10 = true;
            }
            if (z11 && z10) {
                w1Var = w1Var.b().h(this.f26048g).b(this.f26047f).a();
            } else if (z11) {
                w1Var = w1Var.b().h(this.f26048g).a();
            } else if (z10) {
                w1Var = w1Var.b().b(this.f26047f).a();
            }
            w1 w1Var2 = w1Var;
            return new x(w1Var2, this.f26042a, this.f26043b, this.f26044c.a(w1Var2), this.f26045d, this.f26046e, null);
        }

        @Override
        public b b(com.google.android.exoplayer2.drm.x xVar) {
            this.f26044c = (com.google.android.exoplayer2.drm.x) com.google.android.exoplayer2.util.a.f(xVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public b c(com.google.android.exoplayer2.upstream.z zVar) {
            this.f26045d = (com.google.android.exoplayer2.upstream.z) com.google.android.exoplayer2.util.a.f(zVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, final i9.r rVar) {
            this(aVar, new r.a() {
                @Override
                public final com.google.android.exoplayer2.source.r a(u1 u1Var) {
                    return com.google.android.exoplayer2.source.x.b.f(rVar, u1Var);
                }
            });
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, r.a aVar2) {
            this(aVar, aVar2, new com.google.android.exoplayer2.drm.j(), new com.google.android.exoplayer2.upstream.v(), 1048576);
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, r.a aVar2, com.google.android.exoplayer2.drm.x xVar, com.google.android.exoplayer2.upstream.z zVar, int i10) {
            this.f26042a = aVar;
            this.f26043b = aVar2;
            this.f26044c = xVar;
            this.f26045d = zVar;
            this.f26046e = i10;
        }
    }

    x(w1 w1Var, com.google.android.exoplayer2.upstream.k.a aVar, r.a aVar2, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.upstream.z zVar, int i10, a aVar3) {
        this(w1Var, aVar, aVar2, uVar, zVar, i10);
    }

    private void E() {
        l3 uVar = new v9.u(this.f26038p, this.f26039q, false, this.f26040r, null, this.f26030h);
        if (this.f26037o) {
            uVar = new a(this, uVar);
        }
        C(uVar);
    }

    @Override
    protected void B(k0 k0Var) {
        this.f26041s = k0Var;
        this.f26034l.prepare();
        this.f26034l.b((Looper) com.google.android.exoplayer2.util.a.e(Looper.myLooper()), z());
        E();
    }

    @Override
    protected void D() {
        this.f26034l.release();
    }

    @Override
    public w1 a() {
        return this.f26030h;
    }

    @Override
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        com.google.android.exoplayer2.upstream.k kVarCreateDataSource = this.f26032j.createDataSource();
        k0 k0Var = this.f26041s;
        if (k0Var != null) {
            kVarCreateDataSource.e(k0Var);
        }
        return new w(this.f26031i.f27212a, kVarCreateDataSource, this.f26033k.a(z()), this.f26034l, t(bVar), this.f26035m, v(bVar), this, bVar2, this.f26031i.f27216e, this.f26036n);
    }

    @Override
    public void i(n nVar) {
        ((w) nVar).S();
    }

    @Override
    public void p(long j10, boolean z10, boolean z11) {
        if (j10 == C.TIME_UNSET) {
            j10 = this.f26038p;
        }
        if (!this.f26037o && this.f26038p == j10 && this.f26039q == z10 && this.f26040r == z11) {
            return;
        }
        this.f26038p = j10;
        this.f26039q = z10;
        this.f26040r = z11;
        this.f26037o = false;
        E();
    }

    private x(w1 w1Var, com.google.android.exoplayer2.upstream.k.a aVar, r.a aVar2, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.upstream.z zVar, int i10) {
        this.f26031i = (w1.h) com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
        this.f26030h = w1Var;
        this.f26032j = aVar;
        this.f26033k = aVar2;
        this.f26034l = uVar;
        this.f26035m = zVar;
        this.f26036n = i10;
        this.f26037o = true;
        this.f26038p = C.TIME_UNSET;
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }
}
