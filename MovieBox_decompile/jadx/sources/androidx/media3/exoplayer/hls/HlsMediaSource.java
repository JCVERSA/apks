package androidx.media3.exoplayer.hls;

import android.os.Looper;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.drm.w;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;
import java.util.Objects;

public final class HlsMediaSource extends androidx.media3.exoplayer.source.a implements HlsPlaylistTracker.c {

    private final g f11349h;

    private final f f11350i;

    private final f2.e f11351j;

    private final androidx.media3.exoplayer.drm.t f11352k;

    private final androidx.media3.exoplayer.upstream.m f11353l;

    private final boolean f11354m;

    private final int f11355n;

    private final boolean f11356o;

    private final HlsPlaylistTracker f11357p;

    private final long f11358q;

    private final long f11359r;

    private androidx.media3.common.t.g f11360s;

    private w1.n f11361t;

    private androidx.media3.common.t f11362u;

    public static final class Factory implements androidx.media3.exoplayer.source.r.a {

        private final f f11363a;

        private g f11364b;

        private h3.s.a f11365c;

        private boolean f11366d;

        private int f11367e;

        private b2.e f11368f;

        private HlsPlaylistTracker.a f11369g;

        private f2.e f11370h;

        private w f11371i;

        private androidx.media3.exoplayer.upstream.m f11372j;

        private boolean f11373k;

        private int f11374l;

        private boolean f11375m;

        private long f11376n;

        private long f11377o;

        public Factory(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            this(new c(interfaceC0085a));
        }

        @Override
        public HlsMediaSource d(androidx.media3.common.t tVar) {
            androidx.media3.common.util.a.e(tVar.f9899b);
            if (this.f11364b == null) {
                this.f11364b = new d();
            }
            h3.s.a aVar = this.f11365c;
            if (aVar != null) {
                this.f11364b.a(aVar);
            }
            this.f11364b.c(this.f11366d);
            this.f11364b.b(this.f11367e);
            g gVar = this.f11364b;
            b2.e eVar = this.f11368f;
            List list = tVar.f9899b.f9994d;
            b2.e cVar = !list.isEmpty() ? new b2.c(eVar, list) : eVar;
            f fVar = this.f11363a;
            f2.e eVar2 = this.f11370h;
            androidx.media3.exoplayer.drm.t tVarA = this.f11371i.a(tVar);
            androidx.media3.exoplayer.upstream.m mVar = this.f11372j;
            return new HlsMediaSource(tVar, fVar, gVar, eVar2, null, tVarA, mVar, this.f11369g.a(this.f11363a, mVar, cVar, null), this.f11376n, this.f11373k, this.f11374l, this.f11375m, this.f11377o);
        }

        @Override
        public Factory c(boolean z10) {
            this.f11366d = z10;
            return this;
        }

        @Override
        public Factory b(int i10) {
            this.f11367e = i10;
            return this;
        }

        @Override
        public Factory e(w wVar) {
            this.f11371i = (w) androidx.media3.common.util.a.f(wVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public Factory f(androidx.media3.exoplayer.upstream.m mVar) {
            this.f11372j = (androidx.media3.exoplayer.upstream.m) androidx.media3.common.util.a.f(mVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public Factory a(h3.s.a aVar) {
            this.f11365c = aVar;
            return this;
        }

        public Factory(f fVar) {
            this.f11363a = (f) androidx.media3.common.util.a.e(fVar);
            this.f11371i = new androidx.media3.exoplayer.drm.j();
            this.f11368f = new b2.a();
            this.f11369g = androidx.media3.exoplayer.hls.playlist.a.f11528p;
            this.f11372j = new androidx.media3.exoplayer.upstream.k();
            this.f11370h = new f2.f();
            this.f11374l = 1;
            this.f11376n = C.TIME_UNSET;
            this.f11373k = true;
            c(true);
        }
    }

    static {
        androidx.media3.common.u.a("media3.exoplayer.hls");
    }

    private f2.w C(androidx.media3.exoplayer.hls.playlist.c cVar, long j10, long j11, h hVar) {
        long jB = cVar.f11563h - this.f11357p.b();
        long j12 = cVar.f11570o ? jB + cVar.f11576u : -9223372036854775807L;
        long jG = G(cVar);
        long j13 = this.f11360s.f9973a;
        J(cVar, a1.q(j13 != C.TIME_UNSET ? a1.R0(j13) : I(cVar, jG), jG, cVar.f11576u + jG));
        return new f2.w(j10, j11, C.TIME_UNSET, j12, cVar.f11576u, jB, H(cVar, jG), true, !cVar.f11570o, cVar.f11559d == 2 && cVar.f11561f, hVar, a(), this.f11360s);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    private f2.w D(androidx.media3.exoplayer.hls.playlist.c cVar, long j10, long j11, h hVar) {
        long j12;
        if (cVar.f11560e == C.TIME_UNSET || cVar.f11573r.isEmpty()) {
            j12 = 0;
        } else if (cVar.f11562g) {
            j12 = cVar.f11560e;
        } else {
            long j13 = cVar.f11560e;
            if (j13 == cVar.f11576u) {
                j12 = cVar.f11560e;
            } else {
                j12 = F(cVar.f11573r, j13).f11608e;
            }
        }
        long j14 = j12;
        long j15 = cVar.f11576u;
        return new f2.w(j10, j11, C.TIME_UNSET, j15, j15, 0L, j14, true, false, true, hVar, a(), null);
    }

    private static androidx.media3.exoplayer.hls.playlist.c.d E(List list, long j10) {
        androidx.media3.exoplayer.hls.playlist.c.d dVar = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            androidx.media3.exoplayer.hls.playlist.c.d dVar2 = (androidx.media3.exoplayer.hls.playlist.c.d) list.get(i10);
            long j11 = dVar2.f11608e;
            if (j11 > j10 || !dVar2.f11597l) {
                if (j11 > j10) {
                    break;
                }
            } else {
                dVar = dVar2;
            }
        }
        return dVar;
    }

    private static androidx.media3.exoplayer.hls.playlist.c.f F(List list, long j10) {
        return (androidx.media3.exoplayer.hls.playlist.c.f) list.get(a1.f(list, Long.valueOf(j10), true, true));
    }

    private long G(androidx.media3.exoplayer.hls.playlist.c cVar) {
        if (cVar.f11571p) {
            return a1.R0(a1.h0(this.f11358q)) - cVar.d();
        }
        return 0L;
    }

    private long H(androidx.media3.exoplayer.hls.playlist.c cVar, long j10) {
        long jR0 = cVar.f11560e;
        if (jR0 == C.TIME_UNSET) {
            jR0 = (cVar.f11576u + j10) - a1.R0(this.f11360s.f9973a);
        }
        if (cVar.f11562g) {
            return jR0;
        }
        androidx.media3.exoplayer.hls.playlist.c.d dVarE = E(cVar.f11574s, jR0);
        if (dVarE != null) {
            return dVarE.f11608e;
        }
        if (cVar.f11573r.isEmpty()) {
            return 0L;
        }
        androidx.media3.exoplayer.hls.playlist.c.f fVarF = F(cVar.f11573r, jR0);
        androidx.media3.exoplayer.hls.playlist.c.d dVarE2 = E(fVarF.f11603m, jR0);
        return dVarE2 != null ? dVarE2.f11608e : fVarF.f11608e;
    }

    private static long I(androidx.media3.exoplayer.hls.playlist.c cVar, long j10) {
        long j11;
        androidx.media3.exoplayer.hls.playlist.c.h hVar = cVar.f11577v;
        long j12 = cVar.f11560e;
        if (j12 != C.TIME_UNSET) {
            j11 = cVar.f11576u - j12;
        } else {
            long j13 = hVar.f11618d;
            if (j13 == C.TIME_UNSET || cVar.f11569n == C.TIME_UNSET) {
                long j14 = hVar.f11617c;
                j11 = j14 != C.TIME_UNSET ? j14 : cVar.f11568m * 3;
            } else {
                j11 = j13;
            }
        }
        return j11 + j10;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002a  */
    private void J(androidx.media3.exoplayer.hls.playlist.c cVar, long j10) {
        boolean z10;
        androidx.media3.common.t.g gVar = a().f9901d;
        if (gVar.f9976d == -3.4028235E38f && gVar.f9977e == -3.4028235E38f) {
            androidx.media3.exoplayer.hls.playlist.c.h hVar = cVar.f11577v;
            if (hVar.f11617c == C.TIME_UNSET && hVar.f11618d == C.TIME_UNSET) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f11360s = new androidx.media3.common.t.g.a().k(a1.y1(j10)).j(z10 ? 1.0f : this.f11360s.f9976d).h(z10 ? 1.0f : this.f11360s.f9977e).f();
    }

    @Override
    protected void B() {
        this.f11357p.stop();
        this.f11352k.release();
    }

    @Override
    public synchronized androidx.media3.common.t a() {
        return this.f11362u;
    }

    @Override
    public void f(androidx.media3.exoplayer.hls.playlist.c cVar) {
        long jY1 = cVar.f11571p ? a1.y1(cVar.f11563h) : -9223372036854775807L;
        int i10 = cVar.f11559d;
        long j10 = (i10 == 2 || i10 == 1) ? jY1 : -9223372036854775807L;
        h hVar = new h((androidx.media3.exoplayer.hls.playlist.d) androidx.media3.common.util.a.e(this.f11357p.c()), cVar);
        A(this.f11357p.f() ? C(cVar, j10, jY1, hVar) : D(cVar, j10, jY1, hVar));
    }

    @Override
    public androidx.media3.exoplayer.source.q g(androidx.media3.exoplayer.source.r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        androidx.media3.exoplayer.source.s.a aVarU = u(bVar);
        return new l(this.f11349h, this.f11357p, this.f11350i, this.f11361t, null, this.f11352k, s(bVar), this.f11353l, aVarU, bVar2, this.f11351j, this.f11354m, this.f11355n, this.f11356o, x(), this.f11359r);
    }

    @Override
    public void k(androidx.media3.exoplayer.source.q qVar) {
        ((l) qVar).u();
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
        this.f11357p.h();
    }

    @Override
    public synchronized void n(androidx.media3.common.t tVar) {
        this.f11362u = tVar;
    }

    @Override
    public boolean q(androidx.media3.common.t tVar) {
        androidx.media3.common.t tVarA = a();
        androidx.media3.common.t.h hVar = (androidx.media3.common.t.h) androidx.media3.common.util.a.e(tVarA.f9899b);
        androidx.media3.common.t.h hVar2 = tVar.f9899b;
        return hVar2 != null && hVar2.f9991a.equals(hVar.f9991a) && hVar2.f9994d.equals(hVar.f9994d) && Objects.equals(hVar2.f9993c, hVar.f9993c) && tVarA.f9901d.equals(tVar.f9901d);
    }

    @Override
    protected void z(w1.n nVar) {
        this.f11361t = nVar;
        this.f11352k.d((Looper) androidx.media3.common.util.a.e(Looper.myLooper()), x());
        this.f11352k.prepare();
        this.f11357p.j(((androidx.media3.common.t.h) androidx.media3.common.util.a.e(a().f9899b)).f9991a, u(null), this);
    }

    private HlsMediaSource(androidx.media3.common.t tVar, f fVar, g gVar, f2.e eVar, androidx.media3.exoplayer.upstream.f fVar2, androidx.media3.exoplayer.drm.t tVar2, androidx.media3.exoplayer.upstream.m mVar, HlsPlaylistTracker hlsPlaylistTracker, long j10, boolean z10, int i10, boolean z11, long j11) {
        this.f11362u = tVar;
        this.f11360s = tVar.f9901d;
        this.f11350i = fVar;
        this.f11349h = gVar;
        this.f11351j = eVar;
        this.f11352k = tVar2;
        this.f11353l = mVar;
        this.f11357p = hlsPlaylistTracker;
        this.f11358q = j10;
        this.f11354m = z10;
        this.f11355n = i10;
        this.f11356o = z11;
        this.f11359r = j11;
    }
}
