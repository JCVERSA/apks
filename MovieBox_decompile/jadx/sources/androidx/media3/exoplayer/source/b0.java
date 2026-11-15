package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.source.b0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;
import k2.m0;
import x1.f4;

public final class b0 extends androidx.media3.exoplayer.source.a implements a0.c {

    private final androidx.media3.datasource.a.InterfaceC0085a f12380h;

    private final v.a f12381i;

    private final androidx.media3.exoplayer.drm.t f12382j;

    private final androidx.media3.exoplayer.upstream.m f12383k;

    private final int f12384l;

    private final int f12385m;

    private final androidx.media3.common.r f12386n;

    private final com.google.common.base.q f12387o;

    private boolean f12388p;

    private long f12389q;

    private boolean f12390r;

    private boolean f12391s;

    private w1.n f12392t;

    private androidx.media3.common.t f12393u;

    class a extends m {
        a(androidx.media3.common.e0 e0Var) {
            super(e0Var);
        }

        @Override
        public androidx.media3.common.e0.b g(int i10, androidx.media3.common.e0.b bVar, boolean z10) {
            super.g(i10, bVar, z10);
            bVar.f9627f = true;
            return bVar;
        }

        @Override
        public androidx.media3.common.e0.c o(int i10, androidx.media3.common.e0.c cVar, long j10) {
            super.o(i10, cVar, j10);
            cVar.f9649k = true;
            return cVar;
        }
    }

    public static final class b implements r.a {

        private final androidx.media3.datasource.a.InterfaceC0085a f12395a;

        private v.a f12396b;

        private androidx.media3.exoplayer.drm.w f12397c;

        private androidx.media3.exoplayer.upstream.m f12398d;

        private int f12399e;

        private com.google.common.base.q f12400f;

        private int f12401g;

        private androidx.media3.common.r f12402h;

        public b(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            this(interfaceC0085a, new k2.m());
        }

        public static v j(k2.x xVar, f4 f4Var) {
            return new f2.b(xVar);
        }

        @Override
        public r.a a(h3.s.a aVar) {
            return f2.l.c(this, aVar);
        }

        @Override
        public r.a b(int i10) {
            return f2.l.b(this, i10);
        }

        @Override
        public r.a c(boolean z10) {
            return f2.l.a(this, z10);
        }

        @Override
        public b0 d(androidx.media3.common.t tVar) {
            androidx.media3.common.util.a.e(tVar.f9899b);
            return new b0(tVar, this.f12395a, this.f12396b, this.f12397c.a(tVar), this.f12398d, this.f12399e, this.f12401g, this.f12402h, this.f12400f, null);
        }

        b i(int i10, androidx.media3.common.r rVar) {
            this.f12401g = i10;
            this.f12402h = (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar);
            return this;
        }

        @Override
        public b e(androidx.media3.exoplayer.drm.w wVar) {
            this.f12397c = (androidx.media3.exoplayer.drm.w) androidx.media3.common.util.a.f(wVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public b f(androidx.media3.exoplayer.upstream.m mVar) {
            this.f12398d = (androidx.media3.exoplayer.upstream.m) androidx.media3.common.util.a.f(mVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public b(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, final k2.x xVar) {
            this(interfaceC0085a, new v.a() {
                @Override
                public final androidx.media3.exoplayer.source.v a(f4 f4Var) {
                    return b0.b.j(xVar, f4Var);
                }
            });
        }

        public b(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, v.a aVar) {
            this(interfaceC0085a, aVar, new androidx.media3.exoplayer.drm.j(), new androidx.media3.exoplayer.upstream.k(), 1048576);
        }

        public b(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, v.a aVar, androidx.media3.exoplayer.drm.w wVar, androidx.media3.exoplayer.upstream.m mVar, int i10) {
            this.f12395a = interfaceC0085a;
            this.f12396b = aVar;
            this.f12397c = wVar;
            this.f12398d = mVar;
            this.f12399e = i10;
        }
    }

    b0(androidx.media3.common.t tVar, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, v.a aVar, androidx.media3.exoplayer.drm.t tVar2, androidx.media3.exoplayer.upstream.m mVar, int i10, int i11, androidx.media3.common.r rVar, com.google.common.base.q qVar, a aVar2) {
        this(tVar, interfaceC0085a, aVar, tVar2, mVar, i10, i11, rVar, qVar);
    }

    private androidx.media3.common.t.h C() {
        return (androidx.media3.common.t.h) androidx.media3.common.util.a.e(a().f9899b);
    }

    private void D() {
        androidx.media3.common.e0 wVar = new f2.w(this.f12389q, this.f12390r, false, this.f12391s, null, a());
        if (this.f12388p) {
            wVar = new a(wVar);
        }
        A(wVar);
    }

    @Override
    protected void B() {
        this.f12382j.release();
    }

    @Override
    public synchronized androidx.media3.common.t a() {
        return this.f12393u;
    }

    @Override
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        androidx.media3.datasource.a aVarCreateDataSource = this.f12380h.createDataSource();
        w1.n nVar = this.f12392t;
        if (nVar != null) {
            aVarCreateDataSource.c(nVar);
        }
        androidx.media3.common.t.h hVarC = C();
        Uri uri = hVarC.f9991a;
        v vVarA = this.f12381i.a(x());
        androidx.media3.exoplayer.drm.t tVar = this.f12382j;
        androidx.media3.exoplayer.drm.r.a aVarS = s(bVar);
        androidx.media3.exoplayer.upstream.m mVar = this.f12383k;
        s.a aVarU = u(bVar);
        String str = hVarC.f9995e;
        int i10 = this.f12384l;
        int i11 = this.f12385m;
        androidx.media3.common.r rVar = this.f12386n;
        long jR0 = a1.R0(hVarC.f9999i);
        com.google.common.base.q qVar = this.f12387o;
        return new a0(uri, aVarCreateDataSource, vVarA, tVar, aVarS, mVar, aVarU, this, bVar2, str, i10, i11, rVar, jR0, qVar != null ? (androidx.media3.exoplayer.util.c) qVar.get() : null);
    }

    @Override
    public void h(long j10, m0 m0Var, boolean z10) {
        if (j10 == C.TIME_UNSET) {
            j10 = this.f12389q;
        }
        boolean zIsSeekable = m0Var.isSeekable();
        if (!this.f12388p && this.f12389q == j10 && this.f12390r == zIsSeekable && this.f12391s == z10) {
            return;
        }
        this.f12389q = j10;
        this.f12390r = zIsSeekable;
        this.f12391s = z10;
        this.f12388p = false;
        D();
    }

    @Override
    public void k(q qVar) {
        ((a0) qVar).W();
    }

    @Override
    public synchronized void n(androidx.media3.common.t tVar) {
        this.f12393u = tVar;
    }

    @Override
    public boolean q(androidx.media3.common.t tVar) {
        androidx.media3.common.t.h hVarC = C();
        androidx.media3.common.t.h hVar = tVar.f9899b;
        return hVar != null && hVar.f9991a.equals(hVarC.f9991a) && hVar.f9999i == hVarC.f9999i && Objects.equals(hVar.f9995e, hVarC.f9995e);
    }

    @Override
    protected void z(w1.n nVar) {
        this.f12392t = nVar;
        this.f12382j.d((Looper) androidx.media3.common.util.a.e(Looper.myLooper()), x());
        this.f12382j.prepare();
        D();
    }

    private b0(androidx.media3.common.t tVar, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, v.a aVar, androidx.media3.exoplayer.drm.t tVar2, androidx.media3.exoplayer.upstream.m mVar, int i10, int i11, androidx.media3.common.r rVar, com.google.common.base.q qVar) {
        this.f12393u = tVar;
        this.f12380h = interfaceC0085a;
        this.f12381i = aVar;
        this.f12382j = tVar2;
        this.f12383k = mVar;
        this.f12384l = i10;
        this.f12386n = rVar;
        this.f12385m = i11;
        this.f12388p = true;
        this.f12389q = C.TIME_UNSET;
        this.f12387o = qVar;
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }
}
