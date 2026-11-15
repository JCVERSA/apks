package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.hls.f;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import v9.h;
import v9.i;

public final class a implements HlsPlaylistTracker, Loader.b {

    public static final HlsPlaylistTracker.a f25435p = new HlsPlaylistTracker.a() {
        @Override
        public final HlsPlaylistTracker a(f fVar, z zVar, e eVar) {
            return new com.google.android.exoplayer2.source.hls.playlist.a(fVar, zVar, eVar);
        }
    };

    private final f f25436a;

    private final aa.e f25437b;

    private final z f25438c;

    private final HashMap f25439d;

    private final CopyOnWriteArrayList f25440e;

    private final double f25441f;

    private p.a f25442g;

    private Loader f25443h;

    private Handler f25444i;

    private HlsPlaylistTracker.c f25445j;

    private e f25446k;

    private Uri f25447l;

    private d f25448m;

    private boolean f25449n;

    private long f25450o;

    private class b implements HlsPlaylistTracker.b {
        private b() {
        }

        @Override
        public boolean a(Uri uri, z.c cVar, boolean z10) {
            c cVar2;
            if (a.this.f25448m == null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                List list = ((e) p0.j(a.this.f25446k)).f25509e;
                int i10 = 0;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    c cVar3 = (c) a.this.f25439d.get(((e.b) list.get(i11)).f25522a);
                    if (cVar3 != null && jElapsedRealtime < cVar3.f25459h) {
                        i10++;
                    }
                }
                z.b bVarD = a.this.f25438c.d(new z.a(1, 0, a.this.f25446k.f25509e.size(), i10), cVar);
                if (bVarD != null && bVarD.f26768a == 2 && (cVar2 = (c) a.this.f25439d.get(uri)) != null) {
                    cVar2.h(bVarD.f26769b);
                }
            }
            return false;
        }

        @Override
        public void c() {
            a.this.f25440e.remove(this);
        }
    }

    final class c implements Loader.b {

        private final Uri f25452a;

        private final Loader f25453b = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        private final k f25454c;

        private d f25455d;

        private long f25456e;

        private long f25457f;

        private long f25458g;

        private long f25459h;

        private boolean f25460i;

        private IOException f25461j;

        public c(Uri uri) {
            this.f25452a = uri;
            this.f25454c = a.this.f25436a.a(4);
        }

        public boolean h(long j10) {
            this.f25459h = SystemClock.elapsedRealtime() + j10;
            return this.f25452a.equals(a.this.f25447l) && !a.this.L();
        }

        private Uri i() {
            d dVar = this.f25455d;
            if (dVar != null) {
                d.f fVar = dVar.f25483v;
                if (fVar.f25502a != C.TIME_UNSET || fVar.f25506e) {
                    Uri.Builder builderBuildUpon = this.f25452a.buildUpon();
                    d dVar2 = this.f25455d;
                    if (dVar2.f25483v.f25506e) {
                        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(dVar2.f25472k + ((long) dVar2.f25479r.size())));
                        d dVar3 = this.f25455d;
                        if (dVar3.f25475n != C.TIME_UNSET) {
                            List list = dVar3.f25480s;
                            int size = list.size();
                            if (!list.isEmpty() && ((d.b) g3.g(list)).f25485m) {
                                size--;
                            }
                            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                        }
                    }
                    d.f fVar2 = this.f25455d.f25483v;
                    if (fVar2.f25502a != C.TIME_UNSET) {
                        builderBuildUpon.appendQueryParameter("_HLS_skip", fVar2.f25503b ? "v2" : "YES");
                    }
                    return builderBuildUpon.build();
                }
            }
            return this.f25452a;
        }

        public void o(Uri uri) {
            this.f25460i = false;
            q(uri);
        }

        private void q(Uri uri) {
            b0 b0Var = new b0(this.f25454c, uri, 4, a.this.f25437b.b(a.this.f25446k, this.f25455d));
            a.this.f25442g.z(new h(b0Var.f26499a, b0Var.f26500b, this.f25453b.m(b0Var, this, a.this.f25438c.a(b0Var.f26501c))), b0Var.f26501c);
        }

        public void r(final Uri uri) {
            this.f25459h = 0L;
            if (this.f25460i || this.f25453b.i() || this.f25453b.h()) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime >= this.f25458g) {
                q(uri);
            } else {
                this.f25460i = true;
                a.this.f25444i.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f25463a.o(uri);
                    }
                }, this.f25458g - jElapsedRealtime);
            }
        }

        public void w(d dVar, h hVar) {
            boolean z10;
            long j10;
            d dVar2 = this.f25455d;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f25456e = jElapsedRealtime;
            d dVarG = a.this.G(dVar2, dVar);
            this.f25455d = dVarG;
            IOException playlistStuckException = null;
            if (dVarG != dVar2) {
                this.f25461j = null;
                this.f25457f = jElapsedRealtime;
                a.this.R(this.f25452a, dVarG);
            } else if (!dVarG.f25476o) {
                long size = dVar.f25472k + ((long) dVar.f25479r.size());
                d dVar3 = this.f25455d;
                if (size < dVar3.f25472k) {
                    playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(this.f25452a);
                    z10 = true;
                } else {
                    z10 = false;
                    if (jElapsedRealtime - this.f25457f > p0.e1(dVar3.f25474m) * a.this.f25441f) {
                        playlistStuckException = new HlsPlaylistTracker.PlaylistStuckException(this.f25452a);
                    }
                }
                if (playlistStuckException != null) {
                    this.f25461j = playlistStuckException;
                    a.this.N(this.f25452a, new z.c(hVar, new i(4), playlistStuckException, 1), z10);
                }
            }
            d dVar4 = this.f25455d;
            if (dVar4.f25483v.f25506e) {
                j10 = 0;
            } else {
                j10 = dVar4 != dVar2 ? dVar4.f25474m : dVar4.f25474m / 2;
            }
            this.f25458g = jElapsedRealtime + p0.e1(j10);
            if ((this.f25455d.f25475n != C.TIME_UNSET || this.f25452a.equals(a.this.f25447l)) && !this.f25455d.f25476o) {
                r(i());
            }
        }

        public d k() {
            return this.f25455d;
        }

        public boolean m() {
            int i10;
            if (this.f25455d == null) {
                return false;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(30000L, p0.e1(this.f25455d.f25482u));
            d dVar = this.f25455d;
            return dVar.f25476o || (i10 = dVar.f25465d) == 2 || i10 == 1 || this.f25456e + jMax > jElapsedRealtime;
        }

        public void p() {
            r(this.f25452a);
        }

        public void s() throws IOException {
            this.f25453b.maybeThrowError();
            IOException iOException = this.f25461j;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override
        public void j(b0 b0Var, long j10, long j11, boolean z10) {
            h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
            a.this.f25438c.b(b0Var.f26499a);
            a.this.f25442g.q(hVar, 4);
        }

        @Override
        public void l(b0 b0Var, long j10, long j11) {
            aa.d dVar = (aa.d) b0Var.c();
            h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
            if (dVar instanceof d) {
                w((d) dVar, hVar);
                a.this.f25442g.t(hVar, 4);
            } else {
                this.f25461j = ParserException.createForMalformedManifest("Loaded playlist has unexpected type.", null);
                a.this.f25442g.x(hVar, 4, this.f25461j, true);
            }
            a.this.f25438c.b(b0Var.f26499a);
        }

        @Override
        public Loader.c n(b0 b0Var, long j10, long j11, IOException iOException, int i10) {
            Loader.c cVarG;
            h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
            boolean z10 = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            if ((b0Var.d().getQueryParameter("_HLS_msn") != null) || z10) {
                int i11 = iOException instanceof HttpDataSource$InvalidResponseCodeException ? ((HttpDataSource$InvalidResponseCodeException) iOException).responseCode : Integer.MAX_VALUE;
                if (z10 || i11 == 400 || i11 == 503) {
                    this.f25458g = SystemClock.elapsedRealtime();
                    p();
                    ((p.a) p0.j(a.this.f25442g)).x(hVar, b0Var.f26501c, iOException, true);
                    return Loader.f26474f;
                }
            }
            z.c cVar = new z.c(hVar, new i(b0Var.f26501c), iOException, i10);
            if (a.this.N(this.f25452a, cVar, false)) {
                long jC = a.this.f25438c.c(cVar);
                cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f26475g;
            } else {
                cVarG = Loader.f26474f;
            }
            boolean zC = cVarG.c();
            a.this.f25442g.x(hVar, b0Var.f26501c, iOException, !zC);
            if (!zC) {
                a.this.f25438c.b(b0Var.f26499a);
            }
            return cVarG;
        }

        public void x() {
            this.f25453b.k();
        }
    }

    public a(f fVar, z zVar, aa.e eVar) {
        this(fVar, zVar, eVar, 3.5d);
    }

    private void E(List list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Uri uri = (Uri) list.get(i10);
            this.f25439d.put(uri, new c(uri));
        }
    }

    private static d.C0350d F(d dVar, d dVar2) {
        int i10 = (int) (dVar2.f25472k - dVar.f25472k);
        List list = dVar.f25479r;
        if (i10 < list.size()) {
            return (d.C0350d) list.get(i10);
        }
        return null;
    }

    public d G(d dVar, d dVar2) {
        if (dVar2.e(dVar)) {
            return dVar2.b(I(dVar, dVar2), H(dVar, dVar2));
        }
        return dVar2.f25476o ? dVar.c() : dVar;
    }

    private int H(d dVar, d dVar2) {
        d.C0350d c0350dF;
        if (dVar2.f25470i) {
            return dVar2.f25471j;
        }
        d dVar3 = this.f25448m;
        int i10 = dVar3 != null ? dVar3.f25471j : 0;
        return (dVar == null || (c0350dF = F(dVar, dVar2)) == null) ? i10 : (dVar.f25471j + c0350dF.f25494d) - ((d.C0350d) dVar2.f25479r.get(0)).f25494d;
    }

    private long I(d dVar, d dVar2) {
        if (dVar2.f25477p) {
            return dVar2.f25469h;
        }
        d dVar3 = this.f25448m;
        long j10 = dVar3 != null ? dVar3.f25469h : 0L;
        if (dVar == null) {
            return j10;
        }
        int size = dVar.f25479r.size();
        d.C0350d c0350dF = F(dVar, dVar2);
        if (c0350dF != null) {
            return dVar.f25469h + c0350dF.f25495e;
        }
        return ((long) size) == dVar2.f25472k - dVar.f25472k ? dVar.d() : j10;
    }

    private Uri J(Uri uri) {
        d.c cVar;
        d dVar = this.f25448m;
        if (dVar == null || !dVar.f25483v.f25506e || (cVar = (d.c) dVar.f25481t.get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(cVar.f25487b));
        int i10 = cVar.f25488c;
        if (i10 != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i10));
        }
        return builderBuildUpon.build();
    }

    private boolean K(Uri uri) {
        List list = this.f25446k.f25509e;
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (uri.equals(((e.b) list.get(i10)).f25522a)) {
                return true;
            }
        }
        return false;
    }

    public boolean L() {
        List list = this.f25446k.f25509e;
        int size = list.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i10 = 0; i10 < size; i10++) {
            c cVar = (c) com.google.android.exoplayer2.util.a.e((c) this.f25439d.get(((e.b) list.get(i10)).f25522a));
            if (jElapsedRealtime > cVar.f25459h) {
                Uri uri = cVar.f25452a;
                this.f25447l = uri;
                cVar.r(J(uri));
                return true;
            }
        }
        return false;
    }

    private void M(Uri uri) {
        if (uri.equals(this.f25447l) || !K(uri)) {
            return;
        }
        d dVar = this.f25448m;
        if (dVar == null || !dVar.f25476o) {
            this.f25447l = uri;
            c cVar = (c) this.f25439d.get(uri);
            d dVar2 = cVar.f25455d;
            if (dVar2 == null || !dVar2.f25476o) {
                cVar.r(J(uri));
            } else {
                this.f25448m = dVar2;
                this.f25445j.f(dVar2);
            }
        }
    }

    public boolean N(Uri uri, z.c cVar, boolean z10) {
        Iterator it = this.f25440e.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            z11 |= !((HlsPlaylistTracker.b) it.next()).a(uri, cVar, z10);
        }
        return z11;
    }

    public void R(Uri uri, d dVar) {
        if (uri.equals(this.f25447l)) {
            if (this.f25448m == null) {
                this.f25449n = !dVar.f25476o;
                this.f25450o = dVar.f25469h;
            }
            this.f25448m = dVar;
            this.f25445j.f(dVar);
        }
        Iterator it = this.f25440e.iterator();
        while (it.hasNext()) {
            ((HlsPlaylistTracker.b) it.next()).c();
        }
    }

    @Override
    public void j(b0 b0Var, long j10, long j11, boolean z10) {
        h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        this.f25438c.b(b0Var.f26499a);
        this.f25442g.q(hVar, 4);
    }

    @Override
    public void l(b0 b0Var, long j10, long j11) {
        aa.d dVar = (aa.d) b0Var.c();
        boolean z10 = dVar instanceof d;
        e eVarD = z10 ? e.d(dVar.f260a) : (e) dVar;
        this.f25446k = eVarD;
        this.f25447l = ((e.b) eVarD.f25509e.get(0)).f25522a;
        this.f25440e.add(new b());
        E(eVarD.f25508d);
        h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        c cVar = (c) this.f25439d.get(this.f25447l);
        if (z10) {
            cVar.w((d) dVar, hVar);
        } else {
            cVar.p();
        }
        this.f25438c.b(b0Var.f26499a);
        this.f25442g.t(hVar, 4);
    }

    @Override
    public Loader.c n(b0 b0Var, long j10, long j11, IOException iOException, int i10) {
        h hVar = new h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        long jC = this.f25438c.c(new z.c(hVar, new i(b0Var.f26501c), iOException, i10));
        boolean z10 = jC == C.TIME_UNSET;
        this.f25442g.x(hVar, b0Var.f26501c, iOException, z10);
        if (z10) {
            this.f25438c.b(b0Var.f26499a);
        }
        return z10 ? Loader.f26475g : Loader.g(false, jC);
    }

    @Override
    public void a(Uri uri) throws IOException {
        ((c) this.f25439d.get(uri)).s();
    }

    @Override
    public long b() {
        return this.f25450o;
    }

    @Override
    public e c() {
        return this.f25446k;
    }

    @Override
    public void d(Uri uri) {
        ((c) this.f25439d.get(uri)).p();
    }

    @Override
    public boolean e(Uri uri) {
        return ((c) this.f25439d.get(uri)).m();
    }

    @Override
    public boolean f() {
        return this.f25449n;
    }

    @Override
    public boolean g(Uri uri, long j10) {
        c cVar = (c) this.f25439d.get(uri);
        if (cVar != null) {
            return !cVar.h(j10);
        }
        return false;
    }

    @Override
    public void h() throws IOException {
        Loader loader = this.f25443h;
        if (loader != null) {
            loader.maybeThrowError();
        }
        Uri uri = this.f25447l;
        if (uri != null) {
            a(uri);
        }
    }

    @Override
    public d i(Uri uri, boolean z10) {
        d dVarK = ((c) this.f25439d.get(uri)).k();
        if (dVarK != null && z10) {
            M(uri);
        }
        return dVarK;
    }

    @Override
    public void k(HlsPlaylistTracker.b bVar) {
        this.f25440e.remove(bVar);
    }

    @Override
    public void m(HlsPlaylistTracker.b bVar) {
        com.google.android.exoplayer2.util.a.e(bVar);
        this.f25440e.add(bVar);
    }

    @Override
    public void o(Uri uri, p.a aVar, HlsPlaylistTracker.c cVar) {
        this.f25444i = p0.w();
        this.f25442g = aVar;
        this.f25445j = cVar;
        b0 b0Var = new b0(this.f25436a.a(4), uri, 4, this.f25437b.a());
        com.google.android.exoplayer2.util.a.g(this.f25443h == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.f25443h = loader;
        aVar.z(new h(b0Var.f26499a, b0Var.f26500b, loader.m(b0Var, this, this.f25438c.a(b0Var.f26501c))), b0Var.f26501c);
    }

    @Override
    public void stop() {
        this.f25447l = null;
        this.f25448m = null;
        this.f25446k = null;
        this.f25450o = C.TIME_UNSET;
        this.f25443h.k();
        this.f25443h = null;
        Iterator it = this.f25439d.values().iterator();
        while (it.hasNext()) {
            ((c) it.next()).x();
        }
        this.f25444i.removeCallbacksAndMessages(null);
        this.f25444i = null;
        this.f25439d.clear();
    }

    public a(f fVar, z zVar, aa.e eVar, double d10) {
        this.f25436a = fVar;
        this.f25437b = eVar;
        this.f25438c = zVar;
        this.f25441f = d10;
        this.f25440e = new CopyOnWriteArrayList();
        this.f25439d = new HashMap();
        this.f25450o = C.TIME_UNSET;
    }
}
