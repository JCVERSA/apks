package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.net.BindException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.net.SocketFactory;

final class p implements com.google.android.exoplayer2.source.n {

    private final com.google.android.exoplayer2.upstream.b f25790a;

    private final Handler f25791b = p0.w();

    private final b f25792c;

    private final RtspClient f25793d;

    private final List f25794e;

    private final List f25795f;

    private final c f25796g;

    private final com.google.android.exoplayer2.source.rtsp.c.a f25797h;

    private com.google.android.exoplayer2.source.n.a f25798i;

    private ImmutableList f25799j;

    private IOException f25800k;

    private RtspMediaSource.RtspPlaybackException f25801l;

    private long f25802m;

    private long f25803n;

    private long f25804o;

    private boolean f25805p;

    private boolean f25806q;

    private boolean f25807r;

    private boolean f25808s;

    private boolean f25809t;

    private int f25810u;

    private boolean f25811v;

    interface c {
        void a();

        void b(d0 d0Var);
    }

    final class d {

        public final t f25813a;

        private final com.google.android.exoplayer2.source.rtsp.e f25814b;

        private String f25815c;

        public d(t tVar, int i10, com.google.android.exoplayer2.source.rtsp.c.a aVar) {
            this.f25813a = tVar;
            this.f25814b = new com.google.android.exoplayer2.source.rtsp.e(i10, tVar, new com.google.android.exoplayer2.source.rtsp.e.a() {
                @Override
                public final void a(String str, c cVar) {
                    this.f25827a.f(str, cVar);
                }
            }, p.this.f25792c, aVar);
        }

        public void f(String str, com.google.android.exoplayer2.source.rtsp.c cVar) {
            this.f25815c = str;
            u.b bVarG = cVar.g();
            if (bVarG != null) {
                p.this.f25793d.t0(cVar.d(), bVarG);
                p.this.f25811v = true;
            }
            p.this.K();
        }

        public Uri c() {
            return this.f25814b.f25686b.f25829b;
        }

        public String d() {
            com.google.android.exoplayer2.util.a.i(this.f25815c);
            return this.f25815c;
        }

        public boolean e() {
            return this.f25815c != null;
        }
    }

    private final class e {

        public final d f25817a;

        private final Loader f25818b;

        private final com.google.android.exoplayer2.source.a0 f25819c;

        private boolean f25820d;

        private boolean f25821e;

        public e(t tVar, int i10, com.google.android.exoplayer2.source.rtsp.c.a aVar) {
            this.f25817a = p.this.new d(tVar, i10, aVar);
            this.f25818b = new Loader("ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper " + i10);
            com.google.android.exoplayer2.source.a0 a0VarL = com.google.android.exoplayer2.source.a0.l(p.this.f25790a);
            this.f25819c = a0VarL;
            a0VarL.d0(p.this.f25792c);
        }

        public void c() {
            if (this.f25820d) {
                return;
            }
            this.f25817a.f25814b.cancelLoad();
            this.f25820d = true;
            p.this.R();
        }

        public long d() {
            return this.f25819c.z();
        }

        public boolean e() {
            return this.f25819c.K(this.f25820d);
        }

        public int f(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            return this.f25819c.S(q1Var, decoderInputBuffer, i10, this.f25820d);
        }

        public void g() {
            if (this.f25821e) {
                return;
            }
            this.f25818b.k();
            this.f25819c.T();
            this.f25821e = true;
        }

        public void h(long j10) {
            if (this.f25820d) {
                return;
            }
            this.f25817a.f25814b.c();
            this.f25819c.V();
            this.f25819c.b0(j10);
        }

        public int i(long j10) {
            int iE = this.f25819c.E(j10, this.f25820d);
            this.f25819c.e0(iE);
            return iE;
        }

        public void j() {
            this.f25818b.m(this.f25817a.f25814b, p.this.f25792c, 0);
        }
    }

    private final class f implements v9.s {

        private final int f25823a;

        public f(int i10) {
            this.f25823a = i10;
        }

        @Override
        public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            return p.this.L(this.f25823a, q1Var, decoderInputBuffer, i10);
        }

        @Override
        public boolean isReady() {
            return p.this.H(this.f25823a);
        }

        @Override
        public void maybeThrowError() throws RtspMediaSource.RtspPlaybackException {
            if (p.this.f25801l != null) {
                throw p.this.f25801l;
            }
        }

        @Override
        public int skipData(long j10) {
            return p.this.P(this.f25823a, j10);
        }
    }

    public p(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.source.rtsp.c.a aVar, Uri uri, c cVar, String str, SocketFactory socketFactory, boolean z10) {
        this.f25790a = bVar;
        this.f25797h = aVar;
        this.f25796g = cVar;
        b bVar2 = new b();
        this.f25792c = bVar2;
        this.f25793d = new RtspClient(bVar2, bVar2, str, uri, socketFactory, z10);
        this.f25794e = new ArrayList();
        this.f25795f = new ArrayList();
        this.f25803n = C.TIME_UNSET;
        this.f25802m = C.TIME_UNSET;
        this.f25804o = C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static ImmutableList F(ImmutableList immutableList) {
        ImmutableList.a aVar = new ImmutableList.a();
        for (int i10 = 0; i10 < immutableList.size(); i10++) {
            aVar.a(new v9.w(Integer.toString(i10), (p1) com.google.android.exoplayer2.util.a.e(((e) immutableList.get(i10)).f25819c.F())));
        }
        return aVar.e();
    }

    public com.google.android.exoplayer2.source.rtsp.e G(Uri uri) {
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            if (!((e) this.f25794e.get(i10)).f25820d) {
                d dVar = ((e) this.f25794e.get(i10)).f25817a;
                if (dVar.c().equals(uri)) {
                    return dVar.f25814b;
                }
            }
        }
        return null;
    }

    public boolean I() {
        return this.f25803n != C.TIME_UNSET;
    }

    public void J() {
        if (this.f25807r || this.f25808s) {
            return;
        }
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            if (((e) this.f25794e.get(i10)).f25819c.F() == null) {
                return;
            }
        }
        this.f25808s = true;
        this.f25799j = F(ImmutableList.copyOf((Collection) this.f25794e));
        ((com.google.android.exoplayer2.source.n.a) com.google.android.exoplayer2.util.a.e(this.f25798i)).h(this);
    }

    public void K() {
        boolean zE = true;
        for (int i10 = 0; i10 < this.f25795f.size(); i10++) {
            zE &= ((d) this.f25795f.get(i10)).e();
        }
        if (zE && this.f25809t) {
            this.f25793d.A0(this.f25795f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void N() {
        this.f25793d.u0();
        com.google.android.exoplayer2.source.rtsp.c.a aVarB = this.f25797h.b();
        if (aVarB == null) {
            this.f25801l = new RtspMediaSource.RtspPlaybackException("No fallback data channel factory for TCP retry");
            return;
        }
        ArrayList arrayList = new ArrayList(this.f25794e.size());
        ArrayList arrayList2 = new ArrayList(this.f25795f.size());
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            e eVar = (e) this.f25794e.get(i10);
            if (eVar.f25820d) {
                arrayList.add(eVar);
            } else {
                e eVar2 = new e(eVar.f25817a.f25813a, i10, aVarB);
                arrayList.add(eVar2);
                eVar2.j();
                if (this.f25795f.contains(eVar.f25817a)) {
                    arrayList2.add(eVar2.f25817a);
                }
            }
        }
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f25794e);
        this.f25794e.clear();
        this.f25794e.addAll(arrayList);
        this.f25795f.clear();
        this.f25795f.addAll(arrayList2);
        for (int i11 = 0; i11 < immutableListCopyOf.size(); i11++) {
            ((e) immutableListCopyOf.get(i11)).c();
        }
    }

    private boolean O(long j10) {
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            if (!((e) this.f25794e.get(i10)).f25819c.Z(j10, false)) {
                return false;
            }
        }
        return true;
    }

    private boolean Q() {
        return this.f25806q;
    }

    public void R() {
        this.f25805p = true;
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            this.f25805p &= ((e) this.f25794e.get(i10)).f25820d;
        }
    }

    static int a(p pVar) {
        int i10 = pVar.f25810u;
        pVar.f25810u = i10 + 1;
        return i10;
    }

    public static void t(p pVar) {
        pVar.J();
    }

    boolean H(int i10) {
        return !Q() && ((e) this.f25794e.get(i10)).e();
    }

    int L(int i10, q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (Q()) {
            return -3;
        }
        return ((e) this.f25794e.get(i10)).f(q1Var, decoderInputBuffer, i11);
    }

    public void M() {
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            ((e) this.f25794e.get(i10)).g();
        }
        p0.n(this.f25793d);
        this.f25807r = true;
    }

    int P(int i10, long j10) {
        if (Q()) {
            return -3;
        }
        return ((e) this.f25794e.get(i10)).i(j10);
    }

    @Override
    public boolean continueLoading(long j10) {
        return isLoading();
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        if (I()) {
            return;
        }
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            e eVar = (e) this.f25794e.get(i10);
            if (!eVar.f25820d) {
                eVar.f25819c.q(j10, z10, true);
            }
        }
    }

    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            if (sVarArr2[i10] != null && (sVarArr[i10] == null || !zArr[i10])) {
                sVarArr2[i10] = null;
            }
        }
        this.f25795f.clear();
        for (int i11 = 0; i11 < sVarArr.length; i11++) {
            na.s sVar = sVarArr[i11];
            if (sVar != null) {
                v9.w trackGroup = sVar.getTrackGroup();
                int iIndexOf = ((ImmutableList) com.google.android.exoplayer2.util.a.e(this.f25799j)).indexOf(trackGroup);
                this.f25795f.add(((e) com.google.android.exoplayer2.util.a.e((e) this.f25794e.get(iIndexOf))).f25817a);
                if (this.f25799j.contains(trackGroup) && sVarArr2[i11] == null) {
                    sVarArr2[i11] = new f(iIndexOf);
                    zArr2[i11] = true;
                }
            }
        }
        for (int i12 = 0; i12 < this.f25794e.size(); i12++) {
            e eVar = (e) this.f25794e.get(i12);
            if (!this.f25795f.contains(eVar.f25817a)) {
                eVar.c();
            }
        }
        this.f25809t = true;
        K();
        return j10;
    }

    @Override
    public void f(com.google.android.exoplayer2.source.n.a aVar, long j10) {
        this.f25798i = aVar;
        try {
            this.f25793d.B0();
        } catch (IOException e10) {
            this.f25800k = e10;
            p0.n(this.f25793d);
        }
    }

    @Override
    public long getBufferedPositionUs() {
        if (this.f25805p || this.f25794e.isEmpty()) {
            return Long.MIN_VALUE;
        }
        long j10 = this.f25802m;
        if (j10 != C.TIME_UNSET) {
            return j10;
        }
        boolean z10 = true;
        long jMin = Long.MAX_VALUE;
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            e eVar = (e) this.f25794e.get(i10);
            if (!eVar.f25820d) {
                jMin = Math.min(jMin, eVar.d());
                z10 = false;
            }
        }
        if (z10 || jMin == Long.MIN_VALUE) {
            return 0L;
        }
        return jMin;
    }

    @Override
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override
    public v9.y getTrackGroups() {
        com.google.android.exoplayer2.util.a.g(this.f25808s);
        return new v9.y((v9.w[]) ((ImmutableList) com.google.android.exoplayer2.util.a.e(this.f25799j)).toArray(new v9.w[0]));
    }

    @Override
    public boolean isLoading() {
        return !this.f25805p;
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        IOException iOException = this.f25800k;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override
    public long readDiscontinuity() {
        if (!this.f25806q) {
            return C.TIME_UNSET;
        }
        this.f25806q = false;
        return 0L;
    }

    @Override
    public long seekToUs(long j10) {
        if (getBufferedPositionUs() == 0 && !this.f25811v) {
            this.f25804o = j10;
            return j10;
        }
        discardBuffer(j10, false);
        this.f25802m = j10;
        if (I()) {
            int iR0 = this.f25793d.r0();
            if (iR0 == 1) {
                return j10;
            }
            if (iR0 != 2) {
                throw new IllegalStateException();
            }
            this.f25803n = j10;
            this.f25793d.x0(j10);
            return j10;
        }
        if (O(j10)) {
            return j10;
        }
        this.f25803n = j10;
        this.f25793d.x0(j10);
        for (int i10 = 0; i10 < this.f25794e.size(); i10++) {
            ((e) this.f25794e.get(i10)).h(j10);
        }
        return j10;
    }

    final class b implements i9.n, Loader.b, com.google.android.exoplayer2.source.a0.d, RtspClient.e, RtspClient.d {
        private b() {
        }

        @Override
        public void a(p1 p1Var) {
            Handler handler = p.this.f25791b;
            final p pVar = p.this;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    p.t(pVar);
                }
            });
        }

        @Override
        public void b(String str, Throwable th2) {
            p.this.f25800k = th2 == null ? new IOException(str) : new IOException(str, th2);
        }

        @Override
        public void c(RtspMediaSource.RtspPlaybackException rtspPlaybackException) {
            p.this.f25801l = rtspPlaybackException;
        }

        @Override
        public void d() {
            p.this.f25793d.D0(0L);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void e(long j10, ImmutableList immutableList) {
            ArrayList arrayList = new ArrayList(immutableList.size());
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                arrayList.add((String) com.google.android.exoplayer2.util.a.e(((f0) immutableList.get(i10)).f25713c.getPath()));
            }
            for (int i11 = 0; i11 < p.this.f25795f.size(); i11++) {
                if (!arrayList.contains(((d) p.this.f25795f.get(i11)).c().getPath())) {
                    p.this.f25796g.a();
                    if (p.this.I()) {
                        p.this.f25806q = true;
                        p.this.f25803n = C.TIME_UNSET;
                        p.this.f25802m = C.TIME_UNSET;
                        p.this.f25804o = C.TIME_UNSET;
                    }
                }
            }
            for (int i12 = 0; i12 < immutableList.size(); i12++) {
                f0 f0Var = (f0) immutableList.get(i12);
                com.google.android.exoplayer2.source.rtsp.e eVarG = p.this.G(f0Var.f25713c);
                if (eVarG != null) {
                    eVarG.f(f0Var.f25711a);
                    eVarG.e(f0Var.f25712b);
                    if (p.this.I() && p.this.f25803n == p.this.f25802m) {
                        eVarG.d(j10, f0Var.f25711a);
                    }
                }
            }
            if (!p.this.I()) {
                if (p.this.f25804o != C.TIME_UNSET) {
                    p pVar = p.this;
                    pVar.seekToUs(pVar.f25804o);
                    p.this.f25804o = C.TIME_UNSET;
                    return;
                }
                return;
            }
            if (p.this.f25803n == p.this.f25802m) {
                p.this.f25803n = C.TIME_UNSET;
                p.this.f25802m = C.TIME_UNSET;
            } else {
                p.this.f25803n = C.TIME_UNSET;
                p pVar2 = p.this;
                pVar2.seekToUs(pVar2.f25802m);
            }
        }

        @Override
        public void endTracks() {
            Handler handler = p.this.f25791b;
            final p pVar = p.this;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    p.t(pVar);
                }
            });
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void f(d0 d0Var, ImmutableList immutableList) {
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                t tVar = (t) immutableList.get(i10);
                p pVar = p.this;
                e eVar = pVar.new e(tVar, i10, pVar.f25797h);
                p.this.f25794e.add(eVar);
                eVar.j();
            }
            p.this.f25796g.b(d0Var);
        }

        @Override
        public void l(com.google.android.exoplayer2.source.rtsp.e eVar, long j10, long j11) {
            if (p.this.getBufferedPositionUs() == 0) {
                if (p.this.f25811v) {
                    return;
                }
                p.this.N();
                p.this.f25811v = true;
                return;
            }
            for (int i10 = 0; i10 < p.this.f25794e.size(); i10++) {
                e eVar2 = (e) p.this.f25794e.get(i10);
                if (eVar2.f25817a.f25814b == eVar) {
                    eVar2.c();
                    return;
                }
            }
        }

        @Override
        public Loader.c n(com.google.android.exoplayer2.source.rtsp.e eVar, long j10, long j11, IOException iOException, int i10) {
            if (!p.this.f25808s) {
                p.this.f25800k = iOException;
            } else if (!(iOException.getCause() instanceof BindException)) {
                p.this.f25801l = new RtspMediaSource.RtspPlaybackException(eVar.f25686b.f25829b.toString(), iOException);
            } else if (p.a(p.this) < 3) {
                return Loader.f26472d;
            }
            return Loader.f26474f;
        }

        @Override
        public i9.e0 track(int i10, int i11) {
            return ((e) com.google.android.exoplayer2.util.a.e((e) p.this.f25794e.get(i10))).f25819c;
        }

        @Override
        public void g(i9.b0 b0Var) {
        }

        @Override
        public void j(com.google.android.exoplayer2.source.rtsp.e eVar, long j10, long j11, boolean z10) {
        }
    }

    @Override
    public void reevaluateBuffer(long j10) {
    }

    @Override
    public long b(long j10, d3 d3Var) {
        return j10;
    }
}
