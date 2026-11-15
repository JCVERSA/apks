package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.j;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.drm.x;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.n1;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.g0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import v9.i;
import z9.l;

public final class DashMediaSource extends com.google.android.exoplayer2.source.a {
    private Loader A;
    private k0 B;
    private IOException C;
    private Handler D;
    private w1.g E;
    private Uri F;
    private Uri G;
    private z9.c H;
    private boolean I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long N;
    private int O;

    private final w1 f25115h;

    private final boolean f25116i;

    private final k.a f25117j;

    private final com.google.android.exoplayer2.source.dash.a.InterfaceC0346a f25118k;

    private final v9.d f25119l;

    private final u f25120m;

    private final z f25121n;

    private final y9.b f25122o;

    private final long f25123p;

    private final p.a f25124q;

    private final b0.a f25125r;

    private final e f25126s;

    private final Object f25127t;

    private final SparseArray f25128u;

    private final Runnable f25129v;

    private final Runnable f25130w;

    private final com.google.android.exoplayer2.source.dash.e.b f25131x;

    private final a0 f25132y;

    private k f25133z;

    public static final class Factory implements o.a {

        private final com.google.android.exoplayer2.source.dash.a.InterfaceC0346a f25134a;

        private final k.a f25135b;

        private x f25136c;

        private v9.d f25137d;

        private z f25138e;

        private long f25139f;

        private b0.a f25140g;

        public Factory(k.a aVar) {
            this(new com.google.android.exoplayer2.source.dash.c.a(aVar), aVar);
        }

        @Override
        public DashMediaSource a(w1 w1Var) {
            com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
            b0.a dVar = this.f25140g;
            if (dVar == null) {
                dVar = new z9.d();
            }
            List list = w1Var.f27149b.f27215d;
            return new DashMediaSource(w1Var, null, this.f25135b, !list.isEmpty() ? new com.google.android.exoplayer2.offline.d(dVar, list) : dVar, this.f25134a, this.f25137d, this.f25136c.a(w1Var), this.f25138e, this.f25139f, null);
        }

        @Override
        public Factory b(x xVar) {
            this.f25136c = (x) com.google.android.exoplayer2.util.a.f(xVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public Factory c(z zVar) {
            this.f25138e = (z) com.google.android.exoplayer2.util.a.f(zVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public Factory(com.google.android.exoplayer2.source.dash.a.InterfaceC0346a interfaceC0346a, k.a aVar) {
            this.f25134a = (com.google.android.exoplayer2.source.dash.a.InterfaceC0346a) com.google.android.exoplayer2.util.a.e(interfaceC0346a);
            this.f25135b = aVar;
            this.f25136c = new j();
            this.f25138e = new v();
            this.f25139f = 30000L;
            this.f25137d = new v9.e();
        }
    }

    class a implements g0.b {
        a() {
        }

        @Override
        public void a(IOException iOException) {
            DashMediaSource.this.Z(iOException);
        }

        @Override
        public void onInitialized() {
            DashMediaSource.this.a0(g0.h());
        }
    }

    private static final class b extends l3 {

        private final long f25142c;

        private final long f25143d;

        private final long f25144e;

        private final int f25145f;

        private final long f25146g;

        private final long f25147h;

        private final long f25148i;

        private final z9.c f25149j;

        private final w1 f25150k;

        private final w1.g f25151l;

        public b(long j10, long j11, long j12, int i10, long j13, long j14, long j15, z9.c cVar, w1 w1Var, w1.g gVar) {
            com.google.android.exoplayer2.util.a.g(cVar.f76642d == (gVar != null));
            this.f25142c = j10;
            this.f25143d = j11;
            this.f25144e = j12;
            this.f25145f = i10;
            this.f25146g = j13;
            this.f25147h = j14;
            this.f25148i = j15;
            this.f25149j = cVar;
            this.f25150k = w1Var;
            this.f25151l = gVar;
        }

        private long y(long j10) {
            y9.e eVarK;
            long j11 = this.f25148i;
            if (!z(this.f25149j)) {
                return j11;
            }
            if (j10 > 0) {
                j11 += j10;
                if (j11 > this.f25147h) {
                    return C.TIME_UNSET;
                }
            }
            long j12 = this.f25146g + j11;
            long jF = this.f25149j.f(0);
            int i10 = 0;
            while (i10 < this.f25149j.d() - 1 && j12 >= jF) {
                j12 -= jF;
                i10++;
                jF = this.f25149j.f(i10);
            }
            z9.g gVarC = this.f25149j.c(i10);
            int iA = gVarC.a(2);
            return (iA == -1 || (eVarK = ((z9.j) ((z9.a) gVarC.f76676c.get(iA)).f76631c.get(0)).k()) == null || eVarK.f(jF) == 0) ? j11 : (j11 + eVarK.getTimeUs(eVarK.e(j12, jF))) - j12;
        }

        private static boolean z(z9.c cVar) {
            return cVar.f76642d && cVar.f76643e != C.TIME_UNSET && cVar.f76640b == C.TIME_UNSET;
        }

        @Override
        public int f(Object obj) {
            int iIntValue;
            if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue() - this.f25145f) >= 0 && iIntValue < m()) {
                return iIntValue;
            }
            return -1;
        }

        @Override
        public l3.b k(int i10, l3.b bVar, boolean z10) {
            com.google.android.exoplayer2.util.a.c(i10, 0, m());
            return bVar.v(z10 ? this.f25149j.c(i10).f76674a : null, z10 ? Integer.valueOf(this.f25145f + i10) : null, 0, this.f25149j.f(i10), p0.B0(this.f25149j.c(i10).f76675b - this.f25149j.c(0).f76675b) - this.f25146g);
        }

        @Override
        public int m() {
            return this.f25149j.d();
        }

        @Override
        public Object q(int i10) {
            com.google.android.exoplayer2.util.a.c(i10, 0, m());
            return Integer.valueOf(this.f25145f + i10);
        }

        @Override
        public l3.d s(int i10, l3.d dVar, long j10) {
            com.google.android.exoplayer2.util.a.c(i10, 0, 1);
            long jY = y(j10);
            Object obj = l3.d.f24534r;
            w1 w1Var = this.f25150k;
            z9.c cVar = this.f25149j;
            return dVar.k(obj, w1Var, cVar, this.f25142c, this.f25143d, this.f25144e, true, z(cVar), this.f25151l, jY, this.f25147h, 0, m() - 1, this.f25146g);
        }

        @Override
        public int t() {
            return 1;
        }
    }

    private final class c implements com.google.android.exoplayer2.source.dash.e.b {
        private c() {
        }

        @Override
        public void a(long j10) {
            DashMediaSource.this.S(j10);
        }

        @Override
        public void b() {
            DashMediaSource.this.T();
        }

        c(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    static final class d implements b0.a {

        private static final Pattern f25153a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        d() {
        }

        @Override
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            String line = new BufferedReader(new InputStreamReader(inputStream, com.google.common.base.c.f29403c)).readLine();
            try {
                Matcher matcher = f25153a.matcher(line);
                if (!matcher.matches()) {
                    throw ParserException.createForMalformedManifest("Couldn't parse timestamp: " + line, null);
                }
                String strGroup = matcher.group(1);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                long time = simpleDateFormat.parse(strGroup).getTime();
                if (!"Z".equals(matcher.group(2))) {
                    long j10 = "+".equals(matcher.group(4)) ? 1L : -1L;
                    long j11 = Long.parseLong(matcher.group(5));
                    String strGroup2 = matcher.group(7);
                    time -= j10 * (((j11 * 60) + (TextUtils.isEmpty(strGroup2) ? 0L : Long.parseLong(strGroup2))) * 60000);
                }
                return Long.valueOf(time);
            } catch (ParseException e10) {
                throw ParserException.createForMalformedManifest(null, e10);
            }
        }
    }

    private final class e implements Loader.b {
        private e() {
        }

        @Override
        public void j(b0 b0Var, long j10, long j11, boolean z10) {
            DashMediaSource.this.U(b0Var, j10, j11);
        }

        @Override
        public void l(b0 b0Var, long j10, long j11) {
            DashMediaSource.this.V(b0Var, j10, j11);
        }

        @Override
        public Loader.c n(b0 b0Var, long j10, long j11, IOException iOException, int i10) {
            return DashMediaSource.this.W(b0Var, j10, j11, iOException, i10);
        }

        e(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    final class f implements a0 {
        f() {
        }

        private void a() throws IOException {
            if (DashMediaSource.this.C != null) {
                throw DashMediaSource.this.C;
            }
        }

        @Override
        public void maybeThrowError() throws IOException {
            DashMediaSource.this.A.maybeThrowError();
            a();
        }
    }

    private final class g implements Loader.b {
        private g() {
        }

        @Override
        public void j(b0 b0Var, long j10, long j11, boolean z10) {
            DashMediaSource.this.U(b0Var, j10, j11);
        }

        @Override
        public void l(b0 b0Var, long j10, long j11) {
            DashMediaSource.this.X(b0Var, j10, j11);
        }

        @Override
        public Loader.c n(b0 b0Var, long j10, long j11, IOException iOException, int i10) {
            return DashMediaSource.this.Y(b0Var, j10, j11, iOException);
        }

        g(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    private static final class h implements b0.a {
        private h() {
        }

        @Override
        public Long parse(Uri uri, InputStream inputStream) {
            return Long.valueOf(p0.I0(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }

        h(a aVar) {
            this();
        }
    }

    static {
        n1.a("goog.exo.dash");
    }

    DashMediaSource(w1 w1Var, z9.c cVar, k.a aVar, b0.a aVar2, com.google.android.exoplayer2.source.dash.a.InterfaceC0346a interfaceC0346a, v9.d dVar, u uVar, z zVar, long j10, a aVar3) {
        this(w1Var, cVar, aVar, aVar2, interfaceC0346a, dVar, uVar, zVar, j10);
    }

    private static long K(z9.g gVar, long j10, long j11) {
        long jB0 = p0.B0(gVar.f76675b);
        boolean zO = O(gVar);
        long jMin = Long.MAX_VALUE;
        for (int i10 = 0; i10 < gVar.f76676c.size(); i10++) {
            z9.a aVar = (z9.a) gVar.f76676c.get(i10);
            List list = aVar.f76631c;
            if ((!zO || aVar.f76630b != 3) && !list.isEmpty()) {
                y9.e eVarK = ((z9.j) list.get(0)).k();
                if (eVarK == null) {
                    return jB0 + j10;
                }
                long jI = eVarK.i(j10, j11);
                if (jI == 0) {
                    return jB0;
                }
                long jB = (eVarK.b(j10, j11) + jI) - 1;
                jMin = Math.min(jMin, eVarK.a(jB, j10) + eVarK.getTimeUs(jB) + jB0);
            }
        }
        return jMin;
    }

    private static long L(z9.g gVar, long j10, long j11) {
        long jB0 = p0.B0(gVar.f76675b);
        boolean zO = O(gVar);
        long jMax = jB0;
        for (int i10 = 0; i10 < gVar.f76676c.size(); i10++) {
            z9.a aVar = (z9.a) gVar.f76676c.get(i10);
            List list = aVar.f76631c;
            if ((!zO || aVar.f76630b != 3) && !list.isEmpty()) {
                y9.e eVarK = ((z9.j) list.get(0)).k();
                if (eVarK == null) {
                    return jB0;
                }
                if (eVarK.i(j10, j11) == 0) {
                    return jB0;
                }
                jMax = Math.max(jMax, eVarK.getTimeUs(eVarK.b(j10, j11)) + jB0);
            }
        }
        return jMax;
    }

    private static long M(z9.c cVar, long j10) {
        y9.e eVarK;
        int iD = cVar.d() - 1;
        z9.g gVarC = cVar.c(iD);
        long jB0 = p0.B0(gVarC.f76675b);
        long jF = cVar.f(iD);
        long jB1 = p0.B0(j10);
        long jB2 = p0.B0(cVar.f76639a);
        long jB3 = p0.B0(5000L);
        for (int i10 = 0; i10 < gVarC.f76676c.size(); i10++) {
            List list = ((z9.a) gVarC.f76676c.get(i10)).f76631c;
            if (!list.isEmpty() && (eVarK = ((z9.j) list.get(0)).k()) != null) {
                long jC = ((jB2 + jB0) + eVarK.c(jF, jB1)) - jB1;
                if (jC < jB3 - 100000 || (jC > jB3 && jC < jB3 + 100000)) {
                    jB3 = jC;
                }
            }
        }
        return com.google.common.math.f.c(jB3, 1000L, RoundingMode.CEILING);
    }

    private long N() {
        return Math.min((this.M - 1) * 1000, 5000);
    }

    private static boolean O(z9.g gVar) {
        for (int i10 = 0; i10 < gVar.f76676c.size(); i10++) {
            int i11 = ((z9.a) gVar.f76676c.get(i10)).f76630b;
            if (i11 == 1 || i11 == 2) {
                return true;
            }
        }
        return false;
    }

    private static boolean P(z9.g gVar) {
        for (int i10 = 0; i10 < gVar.f76676c.size(); i10++) {
            y9.e eVarK = ((z9.j) ((z9.a) gVar.f76676c.get(i10)).f76631c.get(0)).k();
            if (eVarK == null || eVarK.g()) {
                return true;
            }
        }
        return false;
    }

    public void Q() {
        b0(false);
    }

    private void R() {
        g0.j(this.A, new a());
    }

    public void Z(IOException iOException) {
        s.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        b0(true);
    }

    public void a0(long j10) {
        this.L = j10;
        b0(true);
    }

    private void b0(boolean z10) {
        long j10;
        long j11;
        for (int i10 = 0; i10 < this.f25128u.size(); i10++) {
            int iKeyAt = this.f25128u.keyAt(i10);
            if (iKeyAt >= this.O) {
                ((com.google.android.exoplayer2.source.dash.b) this.f25128u.valueAt(i10)).B(this.H, iKeyAt - this.O);
            }
        }
        z9.g gVarC = this.H.c(0);
        int iD = this.H.d() - 1;
        z9.g gVarC2 = this.H.c(iD);
        long jF = this.H.f(iD);
        long jB0 = p0.B0(p0.b0(this.L));
        long jL = L(gVarC, this.H.f(0), jB0);
        long jK = K(gVarC2, jF, jB0);
        boolean z11 = this.H.f76642d && !P(gVarC2);
        if (z11) {
            long j12 = this.H.f76644f;
            if (j12 != C.TIME_UNSET) {
                jL = Math.max(jL, jK - p0.B0(j12));
            }
        }
        long j13 = jK - jL;
        z9.c cVar = this.H;
        if (cVar.f76642d) {
            com.google.android.exoplayer2.util.a.g(cVar.f76639a != C.TIME_UNSET);
            long jB1 = (jB0 - p0.B0(this.H.f76639a)) - jL;
            i0(jB1, j13);
            long jE1 = this.H.f76639a + p0.e1(jL);
            long jB2 = jB1 - p0.B0(this.E.f27202a);
            long jMin = Math.min(5000000L, j13 / 2);
            j10 = jE1;
            j11 = jB2 < jMin ? jMin : jB2;
        } else {
            j10 = C.TIME_UNSET;
            j11 = 0;
        }
        long jB3 = jL - p0.B0(gVarC.f76675b);
        z9.c cVar2 = this.H;
        C(new b(cVar2.f76639a, j10, this.L, this.O, jB3, j13, j11, cVar2, this.f25115h, cVar2.f76642d ? this.E : null));
        if (this.f25116i) {
            return;
        }
        this.D.removeCallbacks(this.f25130w);
        if (z11) {
            this.D.postDelayed(this.f25130w, M(this.H, p0.b0(this.L)));
        }
        if (this.I) {
            h0();
            return;
        }
        if (z10) {
            z9.c cVar3 = this.H;
            if (cVar3.f76642d) {
                long j14 = cVar3.f76643e;
                if (j14 != C.TIME_UNSET) {
                    if (j14 == 0) {
                        j14 = 5000;
                    }
                    f0(Math.max(0L, (this.J + j14) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    private void c0(z9.o oVar) {
        String str = oVar.f76729a;
        if (p0.c(str, "urn:mpeg:dash:utc:direct:2014") || p0.c(str, "urn:mpeg:dash:utc:direct:2012")) {
            d0(oVar);
            return;
        }
        if (p0.c(str, "urn:mpeg:dash:utc:http-iso:2014") || p0.c(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            e0(oVar, new d());
            return;
        }
        if (p0.c(str, "urn:mpeg:dash:utc:http-xsdate:2014") || p0.c(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
            e0(oVar, new h(null));
        } else if (p0.c(str, "urn:mpeg:dash:utc:ntp:2014") || p0.c(str, "urn:mpeg:dash:utc:ntp:2012")) {
            R();
        } else {
            Z(new IOException("Unsupported UTC timing scheme"));
        }
    }

    private void d0(z9.o oVar) {
        try {
            a0(p0.I0(oVar.f76730b) - this.K);
        } catch (ParserException e10) {
            Z(e10);
        }
    }

    private void e0(z9.o oVar, b0.a aVar) {
        g0(new b0(this.f25133z, Uri.parse(oVar.f76730b), 5, aVar), new g(this, null), 1);
    }

    private void f0(long j10) {
        this.D.postDelayed(this.f25129v, j10);
    }

    private void g0(b0 b0Var, Loader.b bVar, int i10) {
        this.f25124q.z(new v9.h(b0Var.f26499a, b0Var.f26500b, this.A.m(b0Var, bVar, i10)), b0Var.f26501c);
    }

    public void h0() {
        Uri uri;
        this.D.removeCallbacks(this.f25129v);
        if (this.A.h()) {
            return;
        }
        if (this.A.i()) {
            this.I = true;
            return;
        }
        synchronized (this.f25127t) {
            uri = this.F;
        }
        this.I = false;
        g0(new b0(this.f25133z, uri, 4, this.f25125r), this.f25126s, this.f25121n.a(4));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:19:0x0046  */
    /* JADX WARN: Code duplicated, block: B:22:0x0056  */
    /* JADX WARN: Code duplicated, block: B:23:0x005b  */
    /* JADX WARN: Code duplicated, block: B:25:0x0061  */
    /* JADX WARN: Code duplicated, block: B:27:0x0067  */
    /* JADX WARN: Code duplicated, block: B:30:0x006f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0079  */
    /* JADX WARN: Code duplicated, block: B:36:0x007f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    /* JADX WARN: Code duplicated, block: B:42:0x008e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0094  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:52:0x00be  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00dd  */
    private void i0(long j10, long j11) {
        long j12;
        long jMin;
        long jE1;
        long j13;
        long jR;
        long j14;
        l lVar;
        long j15;
        long jR2;
        float f10;
        float f11;
        l lVar2;
        l lVar3;
        l lVar4;
        z9.c cVar;
        l lVar5;
        long j16;
        long jE2 = p0.e1(j10);
        long j17 = this.f25115h.f27151d.f27204c;
        if (j17 == C.TIME_UNSET) {
            l lVar6 = this.H.f76648j;
            if (lVar6 != null) {
                long j18 = lVar6.f76721c;
                if (j18 != C.TIME_UNSET) {
                    jMin = Math.min(jE2, j18);
                }
                jE1 = p0.e1(j10 - j11);
                if (jE1 < 0 && j12 > 0) {
                    jE1 = 0;
                }
                j13 = this.H.f76641c;
                if (j13 != C.TIME_UNSET) {
                    jE1 = Math.min(jE1 + j13, jE2);
                }
                jR = jE1;
                j14 = this.f25115h.f27151d.f27203b;
                if (j14 != C.TIME_UNSET) {
                    jR = p0.r(j14, jR, jE2);
                } else {
                    lVar = this.H.f76648j;
                    if (lVar != null) {
                        j15 = lVar.f76720b;
                        if (j15 != C.TIME_UNSET) {
                            jR = p0.r(j15, jR, jE2);
                        }
                    }
                }
                if (jR > j12) {
                    j12 = jR;
                }
                jR2 = this.E.f27202a;
                if (jR2 == C.TIME_UNSET) {
                    cVar = this.H;
                    lVar5 = cVar.f76648j;
                    if (lVar5 != null) {
                        j16 = lVar5.f76719a;
                        if (j16 != C.TIME_UNSET) {
                            jR2 = j16;
                        } else {
                            jR2 = cVar.f76645g;
                            if (jR2 == C.TIME_UNSET) {
                                jR2 = this.f25123p;
                            }
                        }
                    } else {
                        jR2 = cVar.f76645g;
                        if (jR2 == C.TIME_UNSET) {
                            jR2 = this.f25123p;
                        }
                    }
                }
                if (jR2 < jR) {
                    jR2 = jR;
                }
                if (jR2 > j12) {
                    jR2 = p0.r(p0.e1(j10 - Math.min(5000000L, j11 / 2)), jR, j12);
                }
                w1.g gVar = this.f25115h.f27151d;
                f10 = gVar.f27205d;
                if (f10 == -3.4028235E38f) {
                    lVar4 = this.H.f76648j;
                    if (lVar4 != null) {
                        f10 = lVar4.f76722d;
                    } else {
                        f10 = -3.4028235E38f;
                    }
                }
                f11 = gVar.f27206e;
                if (f11 == -3.4028235E38f) {
                    lVar3 = this.H.f76648j;
                    if (lVar3 != null) {
                        f11 = lVar3.f76723e;
                    } else {
                        f11 = -3.4028235E38f;
                    }
                }
                if (f10 == -3.4028235E38f && f11 == -3.4028235E38f && ((lVar2 = this.H.f76648j) == null || lVar2.f76719a == C.TIME_UNSET)) {
                    f10 = 1.0f;
                    f11 = 1.0f;
                }
                this.E = new w1.g.a().k(jR2).i(jR).g(j12).j(f10).h(f11).f();
            }
            j12 = jE2;
            jE1 = p0.e1(j10 - j11);
            if (jE1 < 0) {
                jE1 = 0;
            }
            j13 = this.H.f76641c;
            if (j13 != C.TIME_UNSET) {
                jE1 = Math.min(jE1 + j13, jE2);
            }
            jR = jE1;
            j14 = this.f25115h.f27151d.f27203b;
            if (j14 != C.TIME_UNSET) {
                jR = p0.r(j14, jR, jE2);
            } else {
                lVar = this.H.f76648j;
                if (lVar != null) {
                    j15 = lVar.f76720b;
                    if (j15 != C.TIME_UNSET) {
                        jR = p0.r(j15, jR, jE2);
                    }
                }
            }
            if (jR > j12) {
                j12 = jR;
            }
            jR2 = this.E.f27202a;
            if (jR2 == C.TIME_UNSET) {
                cVar = this.H;
                lVar5 = cVar.f76648j;
                if (lVar5 != null) {
                    j16 = lVar5.f76719a;
                    if (j16 != C.TIME_UNSET) {
                        jR2 = j16;
                    } else {
                        jR2 = cVar.f76645g;
                        if (jR2 == C.TIME_UNSET) {
                            jR2 = this.f25123p;
                        }
                    }
                } else {
                    jR2 = cVar.f76645g;
                    if (jR2 == C.TIME_UNSET) {
                        jR2 = this.f25123p;
                    }
                }
            }
            if (jR2 < jR) {
                jR2 = jR;
            }
            if (jR2 > j12) {
                jR2 = p0.r(p0.e1(j10 - Math.min(5000000L, j11 / 2)), jR, j12);
            }
            w1.g gVar2 = this.f25115h.f27151d;
            f10 = gVar2.f27205d;
            if (f10 == -3.4028235E38f) {
                lVar4 = this.H.f76648j;
                if (lVar4 != null) {
                    f10 = lVar4.f76722d;
                } else {
                    f10 = -3.4028235E38f;
                }
            }
            f11 = gVar2.f27206e;
            if (f11 == -3.4028235E38f) {
                lVar3 = this.H.f76648j;
                if (lVar3 != null) {
                    f11 = lVar3.f76723e;
                } else {
                    f11 = -3.4028235E38f;
                }
            }
            if (f10 == -3.4028235E38f) {
                f10 = 1.0f;
                f11 = 1.0f;
            }
            this.E = new w1.g.a().k(jR2).i(jR).g(j12).j(f10).h(f11).f();
        }
        jMin = Math.min(jE2, j17);
        j12 = jMin;
        jE1 = p0.e1(j10 - j11);
        if (jE1 < 0) {
            jE1 = 0;
        }
        j13 = this.H.f76641c;
        if (j13 != C.TIME_UNSET) {
            jE1 = Math.min(jE1 + j13, jE2);
        }
        jR = jE1;
        j14 = this.f25115h.f27151d.f27203b;
        if (j14 != C.TIME_UNSET) {
            jR = p0.r(j14, jR, jE2);
        } else {
            lVar = this.H.f76648j;
            if (lVar != null) {
                j15 = lVar.f76720b;
                if (j15 != C.TIME_UNSET) {
                    jR = p0.r(j15, jR, jE2);
                }
            }
        }
        if (jR > j12) {
            j12 = jR;
        }
        jR2 = this.E.f27202a;
        if (jR2 == C.TIME_UNSET) {
            cVar = this.H;
            lVar5 = cVar.f76648j;
            if (lVar5 != null) {
                j16 = lVar5.f76719a;
                if (j16 != C.TIME_UNSET) {
                    jR2 = j16;
                } else {
                    jR2 = cVar.f76645g;
                    if (jR2 == C.TIME_UNSET) {
                        jR2 = this.f25123p;
                    }
                }
            } else {
                jR2 = cVar.f76645g;
                if (jR2 == C.TIME_UNSET) {
                    jR2 = this.f25123p;
                }
            }
        }
        if (jR2 < jR) {
            jR2 = jR;
        }
        if (jR2 > j12) {
            jR2 = p0.r(p0.e1(j10 - Math.min(5000000L, j11 / 2)), jR, j12);
        }
        w1.g gVar3 = this.f25115h.f27151d;
        f10 = gVar3.f27205d;
        if (f10 == -3.4028235E38f) {
            lVar4 = this.H.f76648j;
            if (lVar4 != null) {
                f10 = lVar4.f76722d;
            } else {
                f10 = -3.4028235E38f;
            }
        }
        f11 = gVar3.f27206e;
        if (f11 == -3.4028235E38f) {
            lVar3 = this.H.f76648j;
            if (lVar3 != null) {
                f11 = lVar3.f76723e;
            } else {
                f11 = -3.4028235E38f;
            }
        }
        if (f10 == -3.4028235E38f) {
            f10 = 1.0f;
            f11 = 1.0f;
        }
        this.E = new w1.g.a().k(jR2).i(jR).g(j12).j(f10).h(f11).f();
    }

    @Override
    protected void B(k0 k0Var) {
        this.B = k0Var;
        this.f25120m.prepare();
        this.f25120m.b(Looper.myLooper(), z());
        if (this.f25116i) {
            b0(false);
            return;
        }
        this.f25133z = this.f25117j.createDataSource();
        this.A = new Loader("DashMediaSource");
        this.D = p0.w();
        h0();
    }

    @Override
    protected void D() {
        this.I = false;
        this.f25133z = null;
        Loader loader = this.A;
        if (loader != null) {
            loader.k();
            this.A = null;
        }
        this.J = 0L;
        this.K = 0L;
        this.H = this.f25116i ? this.H : null;
        this.F = this.G;
        this.C = null;
        Handler handler = this.D;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.D = null;
        }
        this.L = C.TIME_UNSET;
        this.M = 0;
        this.N = C.TIME_UNSET;
        this.O = 0;
        this.f25128u.clear();
        this.f25122o.i();
        this.f25120m.release();
    }

    void S(long j10) {
        long j11 = this.N;
        if (j11 == C.TIME_UNSET || j11 < j10) {
            this.N = j10;
        }
    }

    void T() {
        this.D.removeCallbacks(this.f25130w);
        h0();
    }

    void U(b0 b0Var, long j10, long j11) {
        v9.h hVar = new v9.h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        this.f25121n.b(b0Var.f26499a);
        this.f25124q.q(hVar, b0Var.f26501c);
    }

    void V(b0 b0Var, long j10, long j11) {
        v9.h hVar = new v9.h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        this.f25121n.b(b0Var.f26499a);
        this.f25124q.t(hVar, b0Var.f26501c);
        z9.c cVar = (z9.c) b0Var.c();
        z9.c cVar2 = this.H;
        int iD = cVar2 == null ? 0 : cVar2.d();
        long j12 = cVar.c(0).f76675b;
        int i10 = 0;
        while (i10 < iD && this.H.c(i10).f76675b < j12) {
            i10++;
        }
        if (cVar.f76642d) {
            if (iD - i10 > cVar.d()) {
                s.i("DashMediaSource", "Loaded out of sync manifest");
            } else {
                long j13 = this.N;
                if (j13 == C.TIME_UNSET || cVar.f76646h * 1000 > j13) {
                    this.M = 0;
                } else {
                    s.i("DashMediaSource", "Loaded stale dynamic manifest: " + cVar.f76646h + ", " + this.N);
                }
            }
            int i11 = this.M;
            this.M = i11 + 1;
            if (i11 < this.f25121n.a(b0Var.f26501c)) {
                f0(N());
                return;
            } else {
                this.C = new DashManifestStaleException();
                return;
            }
        }
        this.H = cVar;
        this.I = cVar.f76642d & this.I;
        this.J = j10 - j11;
        this.K = j10;
        synchronized (this.f25127t) {
            try {
                if (b0Var.f26500b.f26665a == this.F) {
                    Uri uriD = this.H.f76649k;
                    if (uriD == null) {
                        uriD = b0Var.d();
                    }
                    this.F = uriD;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (iD != 0) {
            this.O += i10;
            b0(true);
            return;
        }
        z9.c cVar3 = this.H;
        if (!cVar3.f76642d) {
            b0(true);
            return;
        }
        z9.o oVar = cVar3.f76647i;
        if (oVar != null) {
            c0(oVar);
        } else {
            R();
        }
    }

    Loader.c W(b0 b0Var, long j10, long j11, IOException iOException, int i10) {
        v9.h hVar = new v9.h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        long jC = this.f25121n.c(new z.c(hVar, new i(b0Var.f26501c), iOException, i10));
        Loader.c cVarG = jC == C.TIME_UNSET ? Loader.f26475g : Loader.g(false, jC);
        boolean zC = cVarG.c();
        this.f25124q.x(hVar, b0Var.f26501c, iOException, !zC);
        if (!zC) {
            this.f25121n.b(b0Var.f26499a);
        }
        return cVarG;
    }

    void X(b0 b0Var, long j10, long j11) {
        v9.h hVar = new v9.h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a());
        this.f25121n.b(b0Var.f26499a);
        this.f25124q.t(hVar, b0Var.f26501c);
        a0(((Long) b0Var.c()).longValue() - j10);
    }

    Loader.c Y(b0 b0Var, long j10, long j11, IOException iOException) {
        this.f25124q.x(new v9.h(b0Var.f26499a, b0Var.f26500b, b0Var.d(), b0Var.b(), j10, j11, b0Var.a()), b0Var.f26501c, iOException, true);
        this.f25121n.b(b0Var.f26499a);
        Z(iOException);
        return Loader.f26474f;
    }

    @Override
    public w1 a() {
        return this.f25115h;
    }

    @Override
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        int iIntValue = ((Integer) bVar.f73504a).intValue() - this.O;
        p.a aVarW = w(bVar, this.H.c(iIntValue).f76675b);
        com.google.android.exoplayer2.source.dash.b bVar3 = new com.google.android.exoplayer2.source.dash.b(iIntValue + this.O, this.H, this.f25122o, iIntValue, this.f25118k, this.B, this.f25120m, t(bVar), this.f25121n, aVarW, this.L, this.f25132y, bVar2, this.f25119l, this.f25131x, z());
        this.f25128u.put(bVar3.f25159a, bVar3);
        return bVar3;
    }

    @Override
    public void i(n nVar) {
        com.google.android.exoplayer2.source.dash.b bVar = (com.google.android.exoplayer2.source.dash.b) nVar;
        bVar.x();
        this.f25128u.remove(bVar.f25159a);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
        this.f25132y.maybeThrowError();
    }

    private DashMediaSource(w1 w1Var, z9.c cVar, k.a aVar, b0.a aVar2, com.google.android.exoplayer2.source.dash.a.InterfaceC0346a interfaceC0346a, v9.d dVar, u uVar, z zVar, long j10) {
        this.f25115h = w1Var;
        this.E = w1Var.f27151d;
        this.F = ((w1.h) com.google.android.exoplayer2.util.a.e(w1Var.f27149b)).f27212a;
        this.G = w1Var.f27149b.f27212a;
        this.H = cVar;
        this.f25117j = aVar;
        this.f25125r = aVar2;
        this.f25118k = interfaceC0346a;
        this.f25120m = uVar;
        this.f25121n = zVar;
        this.f25123p = j10;
        this.f25119l = dVar;
        this.f25122o = new y9.b();
        boolean z10 = cVar != null;
        this.f25116i = z10;
        a aVar3 = null;
        this.f25124q = v(null);
        this.f25127t = new Object();
        this.f25128u = new SparseArray();
        this.f25131x = new c(this, aVar3);
        this.N = C.TIME_UNSET;
        this.L = C.TIME_UNSET;
        if (!z10) {
            this.f25126s = new e(this, aVar3);
            this.f25132y = new f();
            this.f25129v = new Runnable() {
                @Override
                public final void run() {
                    this.f76174a.h0();
                }
            };
            this.f25130w = new Runnable() {
                @Override
                public final void run() {
                    this.f76175a.Q();
                }
            };
            return;
        }
        com.google.android.exoplayer2.util.a.g(true ^ cVar.f76642d);
        this.f25126s = null;
        this.f25129v = null;
        this.f25130w = null;
        this.f25132y = new a0.a();
    }
}
