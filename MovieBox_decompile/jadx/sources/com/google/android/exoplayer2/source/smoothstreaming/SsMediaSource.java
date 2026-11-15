package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.exoplayer2.drm.j;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.drm.x;
import com.google.android.exoplayer2.n1;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import v9.d;
import v9.e;
import v9.h;
import v9.i;

public final class SsMediaSource extends com.google.android.exoplayer2.source.a implements Loader.b {
    private Handler A;

    private final boolean f25868h;

    private final Uri f25869i;

    private final w1.h f25870j;

    private final w1 f25871k;

    private final k.a f25872l;

    private final b.a f25873m;

    private final d f25874n;

    private final u f25875o;

    private final z f25876p;

    private final long f25877q;

    private final p.a f25878r;

    private final b0.a f25879s;

    private final ArrayList f25880t;

    private k f25881u;

    private Loader f25882v;

    private a0 f25883w;

    private k0 f25884x;

    private long f25885y;

    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a f25886z;

    public static final class Factory implements o.a {

        private final b.a f25887a;

        private final k.a f25888b;

        private d f25889c;

        private x f25890d;

        private z f25891e;

        private long f25892f;

        private b0.a f25893g;

        public Factory(k.a aVar) {
            this(new com.google.android.exoplayer2.source.smoothstreaming.a.C0353a(aVar), aVar);
        }

        @Override
        public SsMediaSource a(w1 w1Var) {
            com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
            b0.a ssManifestParser = this.f25893g;
            if (ssManifestParser == null) {
                ssManifestParser = new SsManifestParser();
            }
            List list = w1Var.f27149b.f27215d;
            return new SsMediaSource(w1Var, null, this.f25888b, !list.isEmpty() ? new com.google.android.exoplayer2.offline.d(ssManifestParser, list) : ssManifestParser, this.f25887a, this.f25889c, this.f25890d.a(w1Var), this.f25891e, this.f25892f);
        }

        @Override
        public Factory b(x xVar) {
            this.f25890d = (x) com.google.android.exoplayer2.util.a.f(xVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public Factory c(z zVar) {
            this.f25891e = (z) com.google.android.exoplayer2.util.a.f(zVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public Factory(b.a aVar, k.a aVar2) {
            this.f25887a = (b.a) com.google.android.exoplayer2.util.a.e(aVar);
            this.f25888b = aVar2;
            this.f25890d = new j();
            this.f25891e = new v();
            this.f25892f = 30000L;
            this.f25889c = new e();
        }
    }

    static {
        n1.a("goog.exo.smoothstreaming");
    }

    private void I() {
        v9.u uVar;
        for (int i10 = 0; i10 < this.f25880t.size(); i10++) {
            ((c) this.f25880t.get(i10)).l(this.f25886z);
        }
        long jMax = Long.MIN_VALUE;
        long jMax2 = Long.MAX_VALUE;
        for (com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar : this.f25886z.f25956f) {
            if (bVar.f25972k > 0) {
                jMax2 = Math.min(jMax2, bVar.e(0));
                jMax = Math.max(jMax, bVar.e(bVar.f25972k - 1) + bVar.c(bVar.f25972k - 1));
            }
        }
        if (jMax2 == Long.MAX_VALUE) {
            long j10 = this.f25886z.f25954d ? -9223372036854775807L : 0L;
            com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar = this.f25886z;
            boolean z10 = aVar.f25954d;
            uVar = new v9.u(j10, 0L, 0L, 0L, true, z10, z10, aVar, this.f25871k);
        } else {
            com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar2 = this.f25886z;
            if (aVar2.f25954d) {
                long j11 = aVar2.f25958h;
                if (j11 != C.TIME_UNSET && j11 > 0) {
                    jMax2 = Math.max(jMax2, jMax - j11);
                }
                long j12 = jMax2;
                long j13 = jMax - j12;
                long jB0 = j13 - p0.B0(this.f25877q);
                if (jB0 < 5000000) {
                    jB0 = Math.min(5000000L, j13 / 2);
                }
                uVar = new v9.u(C.TIME_UNSET, j13, j12, jB0, true, true, true, this.f25886z, this.f25871k);
            } else {
                long j14 = aVar2.f25957g;
                long j15 = j14 != C.TIME_UNSET ? j14 : jMax - jMax2;
                uVar = new v9.u(jMax2 + j15, j15, jMax2, 0L, true, false, false, this.f25886z, this.f25871k);
            }
        }
        C(uVar);
    }

    private void J() {
        if (this.f25886z.f25954d) {
            this.A.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f16787a.K();
                }
            }, Math.max(0L, (this.f25885y + 5000) - SystemClock.elapsedRealtime()));
        }
    }

    public void K() {
        if (this.f25882v.h()) {
            return;
        }
        b0 b0Var = new b0(this.f25881u, this.f25869i, 4, this.f25879s);
        this.f25878r.z(new h(b0Var.f26499a, b0Var.f26500b, this.f25882v.m(b0Var, this, this.f25876p.a(b0Var.f26501c))), b0Var.f26501c);
    }

    @Override
    protected void B(k0 k0Var) {
        this.f25884x = k0Var;
        this.f25875o.prepare();
        this.f25875o.b(Looper.myLooper(), z());
        if (this.f25868h) {
            this.f25883w = new a0.a();
            I();
            return;
        }
        this.f25881u = this.f25872l.createDataSource();
        Loader loader = new Loader("SsMediaSource");
        this.f25882v = loader;
        this.f25883w = loader;
        this.A = p0.w();
        K();
    }

    @Override
    protected void D() {
        this.f25886z = this.f25868h ? this.f25886z : null;
        this.f25881u = null;
        this.f25885y = 0L;
        Loader loader = this.f25882v;
        if (loader != null) {
            loader.k();
            this.f25882v = null;
        }
        Handler handler = this.A;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.A = null;
        }
        this.f25875o.release();
    }

    @Override
    public void j(b0 b0Var, long j10, long j11, boolean z10) {
        h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        this.f25876p.b(b0Var.f26499a);
        this.f25878r.q(hVar, b0Var.f26501c);
    }

    @Override
    public void l(b0 b0Var, long j10, long j11) {
        h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        this.f25876p.b(b0Var.f26499a);
        this.f25878r.t(hVar, b0Var.f26501c);
        this.f25886z = (com.google.android.exoplayer2.source.smoothstreaming.manifest.a) b0Var.c();
        this.f25885y = j10 - j11;
        I();
        J();
    }

    @Override
    public Loader.c n(b0 b0Var, long j10, long j11, IOException iOException, int i10) {
        h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        long jC = this.f25876p.c(new z.c(hVar, new i(b0Var.f26501c), iOException, i10));
        Loader.c cVarG = jC == C.TIME_UNSET ? Loader.f26475g : Loader.g(false, jC);
        boolean zC = cVarG.c();
        this.f25878r.x(hVar, b0Var.f26501c, iOException, !zC);
        if (!zC) {
            this.f25876p.b(b0Var.f26499a);
        }
        return cVarG;
    }

    @Override
    public w1 a() {
        return this.f25871k;
    }

    @Override
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        p.a aVarV = v(bVar);
        c cVar = new c(this.f25886z, this.f25873m, this.f25884x, this.f25874n, this.f25875o, t(bVar), this.f25876p, aVarV, this.f25883w, bVar2);
        this.f25880t.add(cVar);
        return cVar;
    }

    @Override
    public void i(n nVar) {
        ((c) nVar).k();
        this.f25880t.remove(nVar);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
        this.f25883w.maybeThrowError();
    }

    private SsMediaSource(w1 w1Var, com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, k.a aVar2, b0.a aVar3, b.a aVar4, d dVar, u uVar, z zVar, long j10) {
        com.google.android.exoplayer2.util.a.g(aVar == null || !aVar.f25954d);
        this.f25871k = w1Var;
        w1.h hVar = (w1.h) com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
        this.f25870j = hVar;
        this.f25886z = aVar;
        this.f25869i = hVar.f27212a.equals(Uri.EMPTY) ? null : p0.B(hVar.f27212a);
        this.f25872l = aVar2;
        this.f25879s = aVar3;
        this.f25873m = aVar4;
        this.f25874n = dVar;
        this.f25875o = uVar;
        this.f25876p = zVar;
        this.f25877q = j10;
        this.f25878r = v(null);
        this.f25868h = aVar != null;
        this.f25880t = new ArrayList();
    }
}
