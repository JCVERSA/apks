package com.google.android.exoplayer2.source.hls;

import android.os.Looper;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.drm.x;
import com.google.android.exoplayer2.n1;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

public final class HlsMediaSource extends com.google.android.exoplayer2.source.a implements HlsPlaylistTracker.c {

    private final g f25252h;

    private final w1.h f25253i;

    private final f f25254j;

    private final v9.d f25255k;

    private final u f25256l;

    private final z f25257m;

    private final boolean f25258n;

    private final int f25259o;

    private final boolean f25260p;

    private final HlsPlaylistTracker f25261q;

    private final long f25262r;

    private final w1 f25263s;

    private w1.g f25264t;

    private k0 f25265u;

    public static final class Factory implements com.google.android.exoplayer2.source.o.a {

        private final f f25266a;

        private g f25267b;

        private aa.e f25268c;

        private HlsPlaylistTracker.a f25269d;

        private v9.d f25270e;

        private x f25271f;

        private z f25272g;

        private boolean f25273h;

        private int f25274i;

        private boolean f25275j;

        private long f25276k;

        public Factory(com.google.android.exoplayer2.upstream.k.a aVar) {
            this(new c(aVar));
        }

        @Override
        public HlsMediaSource a(w1 w1Var) {
            com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
            aa.e cVar = this.f25268c;
            List list = w1Var.f27149b.f27215d;
            if (!list.isEmpty()) {
                cVar = new aa.c(cVar, list);
            }
            f fVar = this.f25266a;
            g gVar = this.f25267b;
            v9.d dVar = this.f25270e;
            u uVarA = this.f25271f.a(w1Var);
            z zVar = this.f25272g;
            return new HlsMediaSource(w1Var, fVar, gVar, dVar, uVarA, zVar, this.f25269d.a(this.f25266a, zVar, cVar), this.f25276k, this.f25273h, this.f25274i, this.f25275j);
        }

        @Override
        public Factory b(x xVar) {
            this.f25271f = (x) com.google.android.exoplayer2.util.a.f(xVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public Factory c(z zVar) {
            this.f25272g = (z) com.google.android.exoplayer2.util.a.f(zVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public Factory(f fVar) {
            this.f25266a = (f) com.google.android.exoplayer2.util.a.e(fVar);
            this.f25271f = new com.google.android.exoplayer2.drm.j();
            this.f25268c = new aa.a();
            this.f25269d = com.google.android.exoplayer2.source.hls.playlist.a.f25435p;
            this.f25267b = g.f25320a;
            this.f25272g = new v();
            this.f25270e = new v9.e();
            this.f25274i = 1;
            this.f25276k = C.TIME_UNSET;
            this.f25273h = true;
        }
    }

    static {
        n1.a("goog.exo.hls");
    }

    private v9.u E(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j10, long j11, h hVar) {
        long jB = dVar.f25469h - this.f25261q.b();
        long j12 = dVar.f25476o ? jB + dVar.f25482u : -9223372036854775807L;
        long jI = I(dVar);
        long j13 = this.f25264t.f27202a;
        L(dVar, p0.r(j13 != C.TIME_UNSET ? p0.B0(j13) : K(dVar, jI), jI, dVar.f25482u + jI));
        return new v9.u(j10, j11, C.TIME_UNSET, j12, dVar.f25482u, jB, J(dVar, jI), true, !dVar.f25476o, dVar.f25465d == 2 && dVar.f25467f, hVar, this.f25263s, this.f25264t);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    private v9.u F(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j10, long j11, h hVar) {
        long j12;
        if (dVar.f25466e == C.TIME_UNSET || dVar.f25479r.isEmpty()) {
            j12 = 0;
        } else if (dVar.f25468g) {
            j12 = dVar.f25466e;
        } else {
            long j13 = dVar.f25466e;
            if (j13 == dVar.f25482u) {
                j12 = dVar.f25466e;
            } else {
                j12 = H(dVar.f25479r, j13).f25495e;
            }
        }
        long j14 = j12;
        long j15 = dVar.f25482u;
        return new v9.u(j10, j11, C.TIME_UNSET, j15, j15, 0L, j14, true, false, true, hVar, this.f25263s, null);
    }

    private static com.google.android.exoplayer2.source.hls.playlist.d.b G(List list, long j10) {
        com.google.android.exoplayer2.source.hls.playlist.d.b bVar = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.google.android.exoplayer2.source.hls.playlist.d.b bVar2 = (com.google.android.exoplayer2.source.hls.playlist.d.b) list.get(i10);
            long j11 = bVar2.f25495e;
            if (j11 > j10 || !bVar2.f25484l) {
                if (j11 > j10) {
                    break;
                }
            } else {
                bVar = bVar2;
            }
        }
        return bVar;
    }

    private static com.google.android.exoplayer2.source.hls.playlist.d.C0350d H(List list, long j10) {
        return (com.google.android.exoplayer2.source.hls.playlist.d.C0350d) list.get(p0.g(list, Long.valueOf(j10), true, true));
    }

    private long I(com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        if (dVar.f25477p) {
            return p0.B0(p0.b0(this.f25262r)) - dVar.d();
        }
        return 0L;
    }

    private long J(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j10) {
        long jB0 = dVar.f25466e;
        if (jB0 == C.TIME_UNSET) {
            jB0 = (dVar.f25482u + j10) - p0.B0(this.f25264t.f27202a);
        }
        if (dVar.f25468g) {
            return jB0;
        }
        com.google.android.exoplayer2.source.hls.playlist.d.b bVarG = G(dVar.f25480s, jB0);
        if (bVarG != null) {
            return bVarG.f25495e;
        }
        if (dVar.f25479r.isEmpty()) {
            return 0L;
        }
        com.google.android.exoplayer2.source.hls.playlist.d.C0350d c0350dH = H(dVar.f25479r, jB0);
        com.google.android.exoplayer2.source.hls.playlist.d.b bVarG2 = G(c0350dH.f25490m, jB0);
        return bVarG2 != null ? bVarG2.f25495e : c0350dH.f25495e;
    }

    private static long K(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j10) {
        long j11;
        com.google.android.exoplayer2.source.hls.playlist.d.f fVar = dVar.f25483v;
        long j12 = dVar.f25466e;
        if (j12 != C.TIME_UNSET) {
            j11 = dVar.f25482u - j12;
        } else {
            long j13 = fVar.f25505d;
            if (j13 == C.TIME_UNSET || dVar.f25475n == C.TIME_UNSET) {
                long j14 = fVar.f25504c;
                j11 = j14 != C.TIME_UNSET ? j14 : dVar.f25474m * 3;
            } else {
                j11 = j13;
            }
        }
        return j11 + j10;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    private void L(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j10) {
        boolean z10;
        w1.g gVar = this.f25263s.f27151d;
        if (gVar.f27205d == -3.4028235E38f && gVar.f27206e == -3.4028235E38f) {
            com.google.android.exoplayer2.source.hls.playlist.d.f fVar = dVar.f25483v;
            if (fVar.f25504c == C.TIME_UNSET && fVar.f25505d == C.TIME_UNSET) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f25264t = new w1.g.a().k(p0.e1(j10)).j(z10 ? 1.0f : this.f25264t.f27205d).h(z10 ? 1.0f : this.f25264t.f27206e).f();
    }

    @Override
    protected void B(k0 k0Var) {
        this.f25265u = k0Var;
        this.f25256l.prepare();
        this.f25256l.b((Looper) com.google.android.exoplayer2.util.a.e(Looper.myLooper()), z());
        this.f25261q.o(this.f25253i.f27212a, v(null), this);
    }

    @Override
    protected void D() {
        this.f25261q.stop();
        this.f25256l.release();
    }

    @Override
    public w1 a() {
        return this.f25263s;
    }

    @Override
    public com.google.android.exoplayer2.source.n d(com.google.android.exoplayer2.source.o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        com.google.android.exoplayer2.source.p.a aVarV = v(bVar);
        return new k(this.f25252h, this.f25261q, this.f25254j, this.f25265u, this.f25256l, t(bVar), this.f25257m, aVarV, bVar2, this.f25255k, this.f25258n, this.f25259o, this.f25260p, z());
    }

    @Override
    public void f(com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        long jE1 = dVar.f25477p ? p0.e1(dVar.f25469h) : -9223372036854775807L;
        int i10 = dVar.f25465d;
        long j10 = (i10 == 2 || i10 == 1) ? jE1 : -9223372036854775807L;
        h hVar = new h((com.google.android.exoplayer2.source.hls.playlist.e) com.google.android.exoplayer2.util.a.e(this.f25261q.c()), dVar);
        C(this.f25261q.f() ? E(dVar, j10, jE1, hVar) : F(dVar, j10, jE1, hVar));
    }

    @Override
    public void i(com.google.android.exoplayer2.source.n nVar) {
        ((k) nVar).q();
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
        this.f25261q.h();
    }

    private HlsMediaSource(w1 w1Var, f fVar, g gVar, v9.d dVar, u uVar, z zVar, HlsPlaylistTracker hlsPlaylistTracker, long j10, boolean z10, int i10, boolean z11) {
        this.f25253i = (w1.h) com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
        this.f25263s = w1Var;
        this.f25264t = w1Var.f27151d;
        this.f25254j = fVar;
        this.f25252h = gVar;
        this.f25255k = dVar;
        this.f25256l = uVar;
        this.f25257m = zVar;
        this.f25261q = hlsPlaylistTracker;
        this.f25262r = j10;
        this.f25258n = z10;
        this.f25259o = i10;
        this.f25260p = z11;
    }
}
