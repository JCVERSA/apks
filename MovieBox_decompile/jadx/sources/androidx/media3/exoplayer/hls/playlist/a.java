package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.hls.f;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.m;
import androidx.media3.exoplayer.upstream.q;
import b2.e;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import f2.i;
import f2.j;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import w1.h;

public final class a implements HlsPlaylistTracker, Loader.b {

    public static final HlsPlaylistTracker.a f11528p = new HlsPlaylistTracker.a() {
        @Override
        public final HlsPlaylistTracker a(f fVar, m mVar, e eVar, androidx.media3.exoplayer.upstream.f fVar2) {
            return new androidx.media3.exoplayer.hls.playlist.a(fVar, mVar, eVar, fVar2);
        }
    };

    private final f f11529a;

    private final e f11530b;

    private final m f11531c;

    private final HashMap f11532d;

    private final CopyOnWriteArrayList f11533e;

    private final double f11534f;

    private s.a f11535g;

    private Loader f11536h;

    private Handler f11537i;

    private HlsPlaylistTracker.c f11538j;

    private d f11539k;

    private Uri f11540l;

    private androidx.media3.exoplayer.hls.playlist.c f11541m;

    private boolean f11542n;

    private long f11543o;

    private class b implements HlsPlaylistTracker.b {
        private b() {
        }

        @Override
        public void c() {
            a.this.f11533e.remove(this);
        }

        @Override
        public boolean d(Uri uri, m.c cVar, boolean z10) {
            c cVar2;
            if (a.this.f11541m == null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                List list = ((d) a1.i(a.this.f11539k)).f11622e;
                int i10 = 0;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    c cVar3 = (c) a.this.f11532d.get(((d.b) list.get(i11)).f11635a);
                    if (cVar3 != null && jElapsedRealtime < cVar3.f11552h) {
                        i10++;
                    }
                }
                m.b bVarD = a.this.f11531c.d(new m.a(1, 0, a.this.f11539k.f11622e.size(), i10), cVar);
                if (bVarD != null && bVarD.f12696a == 2 && (cVar2 = (c) a.this.f11532d.get(uri)) != null) {
                    cVar2.h(bVarD.f12697b);
                }
            }
            return false;
        }
    }

    final class c implements Loader.b {

        private final Uri f11545a;

        private final Loader f11546b = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        private final androidx.media3.datasource.a f11547c;

        private androidx.media3.exoplayer.hls.playlist.c f11548d;

        private long f11549e;

        private long f11550f;

        private long f11551g;

        private long f11552h;

        private boolean f11553i;

        private IOException f11554j;

        private boolean f11555k;

        public c(Uri uri) {
            this.f11545a = uri;
            this.f11547c = a.this.f11529a.a(4);
        }

        public boolean h(long j10) {
            this.f11552h = SystemClock.elapsedRealtime() + j10;
            return this.f11545a.equals(a.this.f11540l) && !a.this.P();
        }

        private Uri i() {
            androidx.media3.exoplayer.hls.playlist.c cVar = this.f11548d;
            if (cVar != null) {
                androidx.media3.exoplayer.hls.playlist.c.h hVar = cVar.f11577v;
                if (hVar.f11615a != C.TIME_UNSET || hVar.f11619e) {
                    Uri.Builder builderBuildUpon = this.f11545a.buildUpon();
                    androidx.media3.exoplayer.hls.playlist.c cVar2 = this.f11548d;
                    if (cVar2.f11577v.f11619e) {
                        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(cVar2.f11566k + ((long) cVar2.f11573r.size())));
                        androidx.media3.exoplayer.hls.playlist.c cVar3 = this.f11548d;
                        if (cVar3.f11569n != C.TIME_UNSET) {
                            List list = cVar3.f11574s;
                            int size = list.size();
                            if (!list.isEmpty() && ((androidx.media3.exoplayer.hls.playlist.c.d) g3.g(list)).f11598m) {
                                size--;
                            }
                            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                        }
                    }
                    androidx.media3.exoplayer.hls.playlist.c.h hVar2 = this.f11548d.f11577v;
                    if (hVar2.f11615a != C.TIME_UNSET) {
                        builderBuildUpon.appendQueryParameter("_HLS_skip", hVar2.f11616b ? "v2" : "YES");
                    }
                    return builderBuildUpon.build();
                }
            }
            return this.f11545a;
        }

        public void n(Uri uri) {
            this.f11553i = false;
            s(uri);
        }

        private void s(Uri uri) {
            q.a aVarB = a.this.f11530b.b(a.this.f11539k, this.f11548d);
            h hVarA = new h.b().i(uri).b(1).a();
            a.v(a.this);
            q qVar = new q(this.f11547c, hVarA, 4, aVarB);
            this.f11546b.m(qVar, this, a.this.f11531c.a(qVar.f12704c));
        }

        public void t(final Uri uri) {
            this.f11552h = 0L;
            if (this.f11553i || this.f11546b.i() || this.f11546b.h()) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime >= this.f11551g) {
                s(uri);
            } else {
                this.f11553i = true;
                a.this.f11537i.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11557a.n(uri);
                    }
                }, this.f11551g - jElapsedRealtime);
            }
        }

        public void z(androidx.media3.exoplayer.hls.playlist.c cVar, i iVar) {
            boolean z10;
            long j10;
            androidx.media3.exoplayer.hls.playlist.c cVar2 = this.f11548d;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f11549e = jElapsedRealtime;
            androidx.media3.exoplayer.hls.playlist.c cVarJ = a.this.J(cVar2, cVar);
            this.f11548d = cVarJ;
            IOException playlistStuckException = null;
            if (cVarJ != cVar2) {
                this.f11554j = null;
                this.f11550f = jElapsedRealtime;
                a.this.W(this.f11545a, cVarJ);
            } else if (!cVarJ.f11570o) {
                long size = cVar.f11566k + ((long) cVar.f11573r.size());
                androidx.media3.exoplayer.hls.playlist.c cVar3 = this.f11548d;
                if (size < cVar3.f11566k) {
                    playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(this.f11545a);
                    z10 = true;
                } else {
                    z10 = false;
                    if (jElapsedRealtime - this.f11550f > a1.y1(cVar3.f11568m) * a.this.f11534f) {
                        playlistStuckException = new HlsPlaylistTracker.PlaylistStuckException(this.f11545a);
                    }
                }
                if (playlistStuckException != null) {
                    this.f11554j = playlistStuckException;
                    a.this.R(this.f11545a, new m.c(iVar, new j(4), playlistStuckException, 1), z10);
                }
            }
            androidx.media3.exoplayer.hls.playlist.c cVar4 = this.f11548d;
            if (cVar4.f11577v.f11619e) {
                j10 = 0;
            } else {
                j10 = cVar4 != cVar2 ? cVar4.f11568m : cVar4.f11568m / 2;
            }
            this.f11551g = (jElapsedRealtime + a1.y1(j10)) - iVar.f59915f;
            if (this.f11548d.f11570o) {
                return;
            }
            if (this.f11545a.equals(a.this.f11540l) || this.f11555k) {
                t(i());
            }
        }

        public void A() {
            this.f11546b.k();
        }

        public void B(boolean z10) {
            this.f11555k = z10;
        }

        public androidx.media3.exoplayer.hls.playlist.c j() {
            return this.f11548d;
        }

        public boolean l() {
            return this.f11555k;
        }

        public boolean m() {
            int i10;
            if (this.f11548d == null) {
                return false;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(30000L, a1.y1(this.f11548d.f11576u));
            androidx.media3.exoplayer.hls.playlist.c cVar = this.f11548d;
            return cVar.f11570o || (i10 = cVar.f11559d) == 2 || i10 == 1 || this.f11549e + jMax > jElapsedRealtime;
        }

        public void r(boolean z10) {
            t(z10 ? i() : this.f11545a);
        }

        public void u() throws IOException {
            this.f11546b.maybeThrowError();
            IOException iOException = this.f11554j;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override
        public void q(q qVar, long j10, long j11, boolean z10) {
            i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
            a.this.f11531c.b(qVar.f12702a);
            a.this.f11535g.s(iVar, 4);
        }

        @Override
        public void p(q qVar, long j10, long j11) {
            b2.d dVar = (b2.d) qVar.c();
            i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
            if (dVar instanceof androidx.media3.exoplayer.hls.playlist.c) {
                z((androidx.media3.exoplayer.hls.playlist.c) dVar, iVar);
                a.this.f11535g.v(iVar, 4);
            } else {
                this.f11554j = ParserException.createForMalformedManifest("Loaded playlist has unexpected type.", null);
                a.this.f11535g.z(iVar, 4, this.f11554j, true);
            }
            a.this.f11531c.b(qVar.f12702a);
        }

        @Override
        public Loader.c k(q qVar, long j10, long j11, IOException iOException, int i10) {
            Loader.c cVarG;
            i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
            boolean z10 = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            if ((qVar.d().getQueryParameter("_HLS_msn") != null) || z10) {
                int i11 = iOException instanceof HttpDataSource.InvalidResponseCodeException ? ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode : Integer.MAX_VALUE;
                if (z10 || i11 == 400 || i11 == 503) {
                    this.f11551g = SystemClock.elapsedRealtime();
                    r(false);
                    ((s.a) a1.i(a.this.f11535g)).z(iVar, qVar.f12704c, iOException, true);
                    return Loader.f12637f;
                }
            }
            m.c cVar = new m.c(iVar, new j(qVar.f12704c), iOException, i10);
            if (a.this.R(this.f11545a, cVar, false)) {
                long jC = a.this.f11531c.c(cVar);
                cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f12638g;
            } else {
                cVarG = Loader.f12637f;
            }
            boolean zC = cVarG.c();
            a.this.f11535g.z(iVar, qVar.f12704c, iOException, !zC);
            if (!zC) {
                a.this.f11531c.b(qVar.f12702a);
            }
            return cVarG;
        }

        @Override
        public void o(q qVar, long j10, long j11, int i10) {
            a.this.f11535g.B(i10 == 0 ? new i(qVar.f12702a, qVar.f12703b, j10) : new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a()), qVar.f12704c, i10);
        }
    }

    public a(f fVar, m mVar, e eVar, androidx.media3.exoplayer.upstream.f fVar2) {
        this(fVar, mVar, eVar, fVar2, 3.5d);
    }

    private void H(List list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Uri uri = (Uri) list.get(i10);
            this.f11532d.put(uri, new c(uri));
        }
    }

    private static androidx.media3.exoplayer.hls.playlist.c.f I(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c cVar2) {
        int i10 = (int) (cVar2.f11566k - cVar.f11566k);
        List list = cVar.f11573r;
        if (i10 < list.size()) {
            return (androidx.media3.exoplayer.hls.playlist.c.f) list.get(i10);
        }
        return null;
    }

    public androidx.media3.exoplayer.hls.playlist.c J(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c cVar2) {
        if (cVar2.e(cVar)) {
            return cVar2.b(L(cVar, cVar2), K(cVar, cVar2));
        }
        return cVar2.f11570o ? cVar.c() : cVar;
    }

    private int K(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c cVar2) {
        androidx.media3.exoplayer.hls.playlist.c.f fVarI;
        if (cVar2.f11564i) {
            return cVar2.f11565j;
        }
        androidx.media3.exoplayer.hls.playlist.c cVar3 = this.f11541m;
        int i10 = cVar3 != null ? cVar3.f11565j : 0;
        return (cVar == null || (fVarI = I(cVar, cVar2)) == null) ? i10 : (cVar.f11565j + fVarI.f11607d) - ((androidx.media3.exoplayer.hls.playlist.c.f) cVar2.f11573r.get(0)).f11607d;
    }

    private long L(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c cVar2) {
        if (cVar2.f11571p) {
            return cVar2.f11563h;
        }
        androidx.media3.exoplayer.hls.playlist.c cVar3 = this.f11541m;
        long j10 = cVar3 != null ? cVar3.f11563h : 0L;
        if (cVar == null) {
            return j10;
        }
        int size = cVar.f11573r.size();
        androidx.media3.exoplayer.hls.playlist.c.f fVarI = I(cVar, cVar2);
        if (fVarI != null) {
            return cVar.f11563h + fVarI.f11608e;
        }
        return ((long) size) == cVar2.f11566k - cVar.f11566k ? cVar.d() : j10;
    }

    private Uri M(Uri uri) {
        androidx.media3.exoplayer.hls.playlist.c.e eVar;
        androidx.media3.exoplayer.hls.playlist.c cVar = this.f11541m;
        if (cVar == null || !cVar.f11577v.f11619e || (eVar = (androidx.media3.exoplayer.hls.playlist.c.e) cVar.f11575t.get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(eVar.f11600b));
        int i10 = eVar.f11601c;
        if (i10 != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i10));
        }
        return builderBuildUpon.build();
    }

    private boolean N(Uri uri) {
        List list = this.f11539k.f11622e;
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (uri.equals(((d.b) list.get(i10)).f11635a)) {
                return true;
            }
        }
        return false;
    }

    private void O(Uri uri) {
        c cVar = (c) this.f11532d.get(uri);
        androidx.media3.exoplayer.hls.playlist.c cVarJ = cVar.j();
        if (cVar.l()) {
            return;
        }
        cVar.B(true);
        if (cVarJ == null || cVarJ.f11570o) {
            return;
        }
        cVar.r(true);
    }

    public boolean P() {
        List list = this.f11539k.f11622e;
        int size = list.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i10 = 0; i10 < size; i10++) {
            c cVar = (c) androidx.media3.common.util.a.e((c) this.f11532d.get(((d.b) list.get(i10)).f11635a));
            if (jElapsedRealtime > cVar.f11552h) {
                Uri uri = cVar.f11545a;
                this.f11540l = uri;
                cVar.t(M(uri));
                return true;
            }
        }
        return false;
    }

    private void Q(Uri uri) {
        if (uri.equals(this.f11540l) || !N(uri)) {
            return;
        }
        androidx.media3.exoplayer.hls.playlist.c cVar = this.f11541m;
        if (cVar == null || !cVar.f11570o) {
            this.f11540l = uri;
            c cVar2 = (c) this.f11532d.get(uri);
            androidx.media3.exoplayer.hls.playlist.c cVar3 = cVar2.f11548d;
            if (cVar3 == null || !cVar3.f11570o) {
                cVar2.t(M(uri));
            } else {
                this.f11541m = cVar3;
                this.f11538j.f(cVar3);
            }
        }
    }

    public boolean R(Uri uri, m.c cVar, boolean z10) {
        Iterator it = this.f11533e.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            z11 |= !((HlsPlaylistTracker.b) it.next()).d(uri, cVar, z10);
        }
        return z11;
    }

    public void W(Uri uri, androidx.media3.exoplayer.hls.playlist.c cVar) {
        if (uri.equals(this.f11540l)) {
            if (this.f11541m == null) {
                this.f11542n = !cVar.f11570o;
                this.f11543o = cVar.f11563h;
            }
            this.f11541m = cVar;
            this.f11538j.f(cVar);
        }
        Iterator it = this.f11533e.iterator();
        while (it.hasNext()) {
            ((HlsPlaylistTracker.b) it.next()).c();
        }
    }

    static androidx.media3.exoplayer.upstream.f v(a aVar) {
        aVar.getClass();
        return null;
    }

    @Override
    public void q(q qVar, long j10, long j11, boolean z10) {
        i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
        this.f11531c.b(qVar.f12702a);
        this.f11535g.s(iVar, 4);
    }

    @Override
    public void p(q qVar, long j10, long j11) {
        b2.d dVar = (b2.d) qVar.c();
        boolean z10 = dVar instanceof androidx.media3.exoplayer.hls.playlist.c;
        d dVarD = z10 ? d.d(dVar.f15504a) : (d) dVar;
        this.f11539k = dVarD;
        this.f11540l = ((d.b) dVarD.f11622e.get(0)).f11635a;
        this.f11533e.add(new b());
        H(dVarD.f11621d);
        i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
        c cVar = (c) this.f11532d.get(this.f11540l);
        if (z10) {
            cVar.z((androidx.media3.exoplayer.hls.playlist.c) dVar, iVar);
        } else {
            cVar.r(false);
        }
        this.f11531c.b(qVar.f12702a);
        this.f11535g.v(iVar, 4);
    }

    @Override
    public Loader.c k(q qVar, long j10, long j11, IOException iOException, int i10) {
        i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
        long jC = this.f11531c.c(new m.c(iVar, new j(qVar.f12704c), iOException, i10));
        boolean z10 = jC == C.TIME_UNSET;
        this.f11535g.z(iVar, qVar.f12704c, iOException, z10);
        if (z10) {
            this.f11531c.b(qVar.f12702a);
        }
        return z10 ? Loader.f12638g : Loader.g(false, jC);
    }

    @Override
    public void o(q qVar, long j10, long j11, int i10) {
        this.f11535g.B(i10 == 0 ? new i(qVar.f12702a, qVar.f12703b, j10) : new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a()), qVar.f12704c, i10);
    }

    @Override
    public void a(Uri uri) throws IOException {
        ((c) this.f11532d.get(uri)).u();
    }

    @Override
    public long b() {
        return this.f11543o;
    }

    @Override
    public d c() {
        return this.f11539k;
    }

    @Override
    public void d(Uri uri) {
        ((c) this.f11532d.get(uri)).r(true);
    }

    @Override
    public boolean e(Uri uri) {
        return ((c) this.f11532d.get(uri)).m();
    }

    @Override
    public boolean f() {
        return this.f11542n;
    }

    @Override
    public boolean g(Uri uri, long j10) {
        c cVar = (c) this.f11532d.get(uri);
        if (cVar != null) {
            return !cVar.h(j10);
        }
        return false;
    }

    @Override
    public void h() throws IOException {
        Loader loader = this.f11536h;
        if (loader != null) {
            loader.maybeThrowError();
        }
        Uri uri = this.f11540l;
        if (uri != null) {
            a(uri);
        }
    }

    @Override
    public androidx.media3.exoplayer.hls.playlist.c i(Uri uri, boolean z10) {
        androidx.media3.exoplayer.hls.playlist.c cVarJ = ((c) this.f11532d.get(uri)).j();
        if (cVarJ != null && z10) {
            Q(uri);
            O(uri);
        }
        return cVarJ;
    }

    @Override
    public void j(Uri uri, s.a aVar, HlsPlaylistTracker.c cVar) {
        this.f11537i = a1.A();
        this.f11535g = aVar;
        this.f11538j = cVar;
        q qVar = new q(this.f11529a.a(4), new h.b().i(uri).b(1).a(), 4, this.f11530b.a());
        androidx.media3.common.util.a.g(this.f11536h == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.f11536h = loader;
        loader.m(qVar, this, this.f11531c.a(qVar.f12704c));
    }

    @Override
    public void l(Uri uri) {
        c cVar = (c) this.f11532d.get(uri);
        if (cVar != null) {
            cVar.B(false);
        }
    }

    @Override
    public void m(HlsPlaylistTracker.b bVar) {
        this.f11533e.remove(bVar);
    }

    @Override
    public void n(HlsPlaylistTracker.b bVar) {
        androidx.media3.common.util.a.e(bVar);
        this.f11533e.add(bVar);
    }

    @Override
    public void stop() {
        this.f11540l = null;
        this.f11541m = null;
        this.f11539k = null;
        this.f11543o = C.TIME_UNSET;
        this.f11536h.k();
        this.f11536h = null;
        Iterator it = this.f11532d.values().iterator();
        while (it.hasNext()) {
            ((c) it.next()).A();
        }
        this.f11537i.removeCallbacksAndMessages(null);
        this.f11537i = null;
        this.f11532d.clear();
    }

    public a(f fVar, m mVar, e eVar, androidx.media3.exoplayer.upstream.f fVar2, double d10) {
        this.f11529a = fVar;
        this.f11530b = eVar;
        this.f11531c = mVar;
        this.f11534f = d10;
        this.f11533e = new CopyOnWriteArrayList();
        this.f11532d = new HashMap();
        this.f11543o = C.TIME_UNSET;
    }
}
