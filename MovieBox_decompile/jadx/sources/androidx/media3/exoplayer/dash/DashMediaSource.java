package androidx.media3.exoplayer.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.media3.common.ParserException;
import androidx.media3.common.e0;
import androidx.media3.common.t;
import androidx.media3.common.u;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.drm.j;
import androidx.media3.exoplayer.drm.w;
import androidx.media3.exoplayer.source.r;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.k;
import androidx.media3.exoplayer.upstream.m;
import androidx.media3.exoplayer.upstream.o;
import androidx.media3.exoplayer.upstream.p;
import androidx.media3.exoplayer.upstream.q;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import f2.i;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import w1.n;
import z1.l;

public final class DashMediaSource extends androidx.media3.exoplayer.source.a {
    private Loader A;
    private n B;
    private IOException C;
    private Handler D;
    private t.g E;
    private Uri F;
    private Uri G;
    private z1.c H;
    private boolean I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long N;
    private int O;
    private t P;

    private final boolean f11046h;

    private final androidx.media3.datasource.a.InterfaceC0085a f11047i;

    private final androidx.media3.exoplayer.dash.a.InterfaceC0089a f11048j;

    private final f2.e f11049k;

    private final androidx.media3.exoplayer.drm.t f11050l;

    private final m f11051m;

    private final y1.b f11052n;

    private final long f11053o;

    private final long f11054p;

    private final s.a f11055q;

    private final q.a f11056r;

    private final e f11057s;

    private final Object f11058t;

    private final SparseArray f11059u;

    private final Runnable f11060v;

    private final Runnable f11061w;

    private final androidx.media3.exoplayer.dash.f.b f11062x;

    private final p f11063y;

    private androidx.media3.datasource.a f11064z;

    public static final class Factory implements r.a {

        private final androidx.media3.exoplayer.dash.a.InterfaceC0089a f11065a;

        private final androidx.media3.datasource.a.InterfaceC0085a f11066b;

        private w f11067c;

        private f2.e f11068d;

        private m f11069e;

        private long f11070f;

        private long f11071g;

        private q.a f11072h;

        public Factory(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            this(new androidx.media3.exoplayer.dash.d.a(interfaceC0085a), interfaceC0085a);
        }

        @Override
        public DashMediaSource d(t tVar) {
            androidx.media3.common.util.a.e(tVar.f9899b);
            q.a dVar = this.f11072h;
            if (dVar == null) {
                dVar = new z1.d();
            }
            List list = tVar.f9899b.f9994d;
            return new DashMediaSource(tVar, null, this.f11066b, !list.isEmpty() ? new androidx.media3.exoplayer.offline.r(dVar, list) : dVar, this.f11065a, this.f11068d, null, this.f11067c.a(tVar), this.f11069e, this.f11070f, this.f11071g, null);
        }

        @Override
        public Factory c(boolean z10) {
            this.f11065a.c(z10);
            return this;
        }

        @Override
        public Factory b(int i10) {
            this.f11065a.b(i10);
            return this;
        }

        @Override
        public Factory e(w wVar) {
            this.f11067c = (w) androidx.media3.common.util.a.f(wVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public Factory f(m mVar) {
            this.f11069e = (m) androidx.media3.common.util.a.f(mVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public Factory a(h3.s.a aVar) {
            this.f11065a.a((h3.s.a) androidx.media3.common.util.a.e(aVar));
            return this;
        }

        public Factory(androidx.media3.exoplayer.dash.a.InterfaceC0089a interfaceC0089a, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            this.f11065a = (androidx.media3.exoplayer.dash.a.InterfaceC0089a) androidx.media3.common.util.a.e(interfaceC0089a);
            this.f11066b = interfaceC0085a;
            this.f11067c = new j();
            this.f11069e = new k();
            this.f11070f = 30000L;
            this.f11071g = 5000000L;
            this.f11068d = new f2.f();
            c(true);
        }
    }

    class a implements androidx.media3.exoplayer.util.d.b {
        a() {
        }

        @Override
        public void a(IOException iOException) {
            DashMediaSource.this.Y(iOException);
        }

        @Override
        public void onInitialized() {
            DashMediaSource.this.Z(androidx.media3.exoplayer.util.d.i());
        }
    }

    private static final class b extends e0 {

        private final long f11074e;

        private final long f11075f;

        private final long f11076g;

        private final int f11077h;

        private final long f11078i;

        private final long f11079j;

        private final long f11080k;

        private final z1.c f11081l;

        private final t f11082m;

        private final t.g f11083n;

        public b(long j10, long j11, long j12, int i10, long j13, long j14, long j15, z1.c cVar, t tVar, t.g gVar) {
            androidx.media3.common.util.a.g(cVar.f76508d == (gVar != null));
            this.f11074e = j10;
            this.f11075f = j11;
            this.f11076g = j12;
            this.f11077h = i10;
            this.f11078i = j13;
            this.f11079j = j14;
            this.f11080k = j15;
            this.f11081l = cVar;
            this.f11082m = tVar;
            this.f11083n = gVar;
        }

        private long s(long j10) {
            y1.e eVarK;
            long j11 = this.f11080k;
            if (!t(this.f11081l)) {
                return j11;
            }
            if (j10 > 0) {
                j11 += j10;
                if (j11 > this.f11079j) {
                    return C.TIME_UNSET;
                }
            }
            long j12 = this.f11078i + j11;
            long jF = this.f11081l.f(0);
            int i10 = 0;
            while (i10 < this.f11081l.d() - 1 && j12 >= jF) {
                j12 -= jF;
                i10++;
                jF = this.f11081l.f(i10);
            }
            z1.g gVarC = this.f11081l.c(i10);
            int iA = gVarC.a(2);
            return (iA == -1 || (eVarK = ((z1.j) ((z1.a) gVarC.f76543c.get(iA)).f76497c.get(0)).k()) == null || eVarK.f(jF) == 0) ? j11 : (j11 + eVarK.getTimeUs(eVarK.e(j12, jF))) - j12;
        }

        private static boolean t(z1.c cVar) {
            return cVar.f76508d && cVar.f76509e != C.TIME_UNSET && cVar.f76506b == C.TIME_UNSET;
        }

        @Override
        public int b(Object obj) {
            int iIntValue;
            if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue() - this.f11077h) >= 0 && iIntValue < i()) {
                return iIntValue;
            }
            return -1;
        }

        @Override
        public e0.b g(int i10, e0.b bVar, boolean z10) {
            androidx.media3.common.util.a.c(i10, 0, i());
            return bVar.t(z10 ? this.f11081l.c(i10).f76541a : null, z10 ? Integer.valueOf(this.f11077h + i10) : null, 0, this.f11081l.f(i10), a1.R0(this.f11081l.c(i10).f76542b - this.f11081l.c(0).f76542b) - this.f11078i);
        }

        @Override
        public int i() {
            return this.f11081l.d();
        }

        @Override
        public Object m(int i10) {
            androidx.media3.common.util.a.c(i10, 0, i());
            return Integer.valueOf(this.f11077h + i10);
        }

        @Override
        public e0.c o(int i10, e0.c cVar, long j10) {
            androidx.media3.common.util.a.c(i10, 0, 1);
            long jS = s(j10);
            Object obj = e0.c.f9629q;
            t tVar = this.f11082m;
            z1.c cVar2 = this.f11081l;
            return cVar.g(obj, tVar, cVar2, this.f11074e, this.f11075f, this.f11076g, true, t(cVar2), this.f11083n, jS, this.f11079j, 0, i() - 1, this.f11078i);
        }

        @Override
        public int p() {
            return 1;
        }
    }

    private final class c implements androidx.media3.exoplayer.dash.f.b {
        private c() {
        }

        @Override
        public void a(long j10) {
            DashMediaSource.this.Q(j10);
        }

        @Override
        public void b() {
            DashMediaSource.this.R();
        }

        c(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    static final class d implements q.a {

        private static final Pattern f11085a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        d() {
        }

        @Override
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            String line = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8)).readLine();
            try {
                Matcher matcher = f11085a.matcher(line);
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
        public void q(q qVar, long j10, long j11, boolean z10) {
            DashMediaSource.this.S(qVar, j10, j11);
        }

        @Override
        public void p(q qVar, long j10, long j11) {
            DashMediaSource.this.T(qVar, j10, j11);
        }

        @Override
        public Loader.c k(q qVar, long j10, long j11, IOException iOException, int i10) {
            return DashMediaSource.this.U(qVar, j10, j11, iOException, i10);
        }

        @Override
        public void o(q qVar, long j10, long j11, int i10) {
            DashMediaSource.this.V(qVar, j10, j11, i10);
        }

        e(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    final class f implements p {
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
        public void q(q qVar, long j10, long j11, boolean z10) {
            DashMediaSource.this.S(qVar, j10, j11);
        }

        @Override
        public void p(q qVar, long j10, long j11) {
            DashMediaSource.this.W(qVar, j10, j11);
        }

        @Override
        public Loader.c k(q qVar, long j10, long j11, IOException iOException, int i10) {
            return DashMediaSource.this.X(qVar, j10, j11, iOException);
        }

        @Override
        public void o(Loader.d dVar, long j10, long j11, int i10) {
            o.a(this, dVar, j10, j11, i10);
        }

        g(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    private static final class h implements q.a {
        private h() {
        }

        @Override
        public Long parse(Uri uri, InputStream inputStream) {
            return Long.valueOf(a1.Z0(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }

        h(a aVar) {
            this();
        }
    }

    static {
        u.a("media3.exoplayer.dash");
    }

    DashMediaSource(t tVar, z1.c cVar, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, q.a aVar, androidx.media3.exoplayer.dash.a.InterfaceC0089a interfaceC0089a, f2.e eVar, androidx.media3.exoplayer.upstream.f fVar, androidx.media3.exoplayer.drm.t tVar2, m mVar, long j10, long j11, a aVar2) {
        this(tVar, cVar, interfaceC0085a, aVar, interfaceC0089a, eVar, fVar, tVar2, mVar, j10, j11);
    }

    private static long I(z1.g gVar, long j10, long j11) {
        long jR0 = a1.R0(gVar.f76542b);
        boolean zM = M(gVar);
        long jMin = Long.MAX_VALUE;
        for (int i10 = 0; i10 < gVar.f76543c.size(); i10++) {
            z1.a aVar = (z1.a) gVar.f76543c.get(i10);
            List list = aVar.f76497c;
            int i11 = aVar.f76496b;
            boolean z10 = (i11 == 1 || i11 == 2) ? false : true;
            if ((!zM || !z10) && !list.isEmpty()) {
                y1.e eVarK = ((z1.j) list.get(0)).k();
                if (eVarK == null) {
                    return jR0 + j10;
                }
                long jI = eVarK.i(j10, j11);
                if (jI == 0) {
                    return jR0;
                }
                long jB = (eVarK.b(j10, j11) + jI) - 1;
                jMin = Math.min(jMin, eVarK.a(jB, j10) + eVarK.getTimeUs(jB) + jR0);
            }
        }
        return jMin;
    }

    private static long J(z1.g gVar, long j10, long j11) {
        long jR0 = a1.R0(gVar.f76542b);
        boolean zM = M(gVar);
        long jMax = jR0;
        for (int i10 = 0; i10 < gVar.f76543c.size(); i10++) {
            z1.a aVar = (z1.a) gVar.f76543c.get(i10);
            List list = aVar.f76497c;
            int i11 = aVar.f76496b;
            boolean z10 = (i11 == 1 || i11 == 2) ? false : true;
            if ((!zM || !z10) && !list.isEmpty()) {
                y1.e eVarK = ((z1.j) list.get(0)).k();
                if (eVarK == null) {
                    return jR0;
                }
                if (eVarK.i(j10, j11) == 0) {
                    return jR0;
                }
                jMax = Math.max(jMax, eVarK.getTimeUs(eVarK.b(j10, j11)) + jR0);
            }
        }
        return jMax;
    }

    private static long K(z1.c cVar, long j10) {
        y1.e eVarK;
        int iD = cVar.d() - 1;
        z1.g gVarC = cVar.c(iD);
        long jR0 = a1.R0(gVarC.f76542b);
        long jF = cVar.f(iD);
        long jR1 = a1.R0(j10);
        long jR2 = a1.R0(cVar.f76505a);
        long jR3 = a1.R0(cVar.f76509e);
        if (jR3 == C.TIME_UNSET || jR3 >= 5000000) {
            jR3 = 5000000;
        }
        for (int i10 = 0; i10 < gVarC.f76543c.size(); i10++) {
            List list = ((z1.a) gVarC.f76543c.get(i10)).f76497c;
            if (!list.isEmpty() && (eVarK = ((z1.j) list.get(0)).k()) != null) {
                long jC = ((jR2 + jR0) + eVarK.c(jF, jR1)) - jR1;
                if (jC > 0 && (jC < jR3 - 100000 || (jC > jR3 && jC < jR3 + 100000))) {
                    jR3 = jC;
                }
            }
        }
        return com.google.common.math.f.c(jR3, 1000L, RoundingMode.CEILING);
    }

    private long L() {
        return Math.min((this.M - 1) * 1000, 5000);
    }

    private static boolean M(z1.g gVar) {
        for (int i10 = 0; i10 < gVar.f76543c.size(); i10++) {
            int i11 = ((z1.a) gVar.f76543c.get(i10)).f76496b;
            if (i11 == 1 || i11 == 2) {
                return true;
            }
        }
        return false;
    }

    private static boolean N(z1.g gVar) {
        for (int i10 = 0; i10 < gVar.f76543c.size(); i10++) {
            y1.e eVarK = ((z1.j) ((z1.a) gVar.f76543c.get(i10)).f76497c.get(0)).k();
            if (eVarK == null || eVarK.g()) {
                return true;
            }
        }
        return false;
    }

    public void O() {
        a0(false);
    }

    private void P() {
        androidx.media3.exoplayer.util.d.l(this.A, new a());
    }

    public void Y(IOException iOException) {
        androidx.media3.common.util.u.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        this.L = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        a0(true);
    }

    public void Z(long j10) {
        this.L = j10;
        a0(true);
    }

    private void a0(boolean z10) {
        long j10;
        long j11;
        for (int i10 = 0; i10 < this.f11059u.size(); i10++) {
            int iKeyAt = this.f11059u.keyAt(i10);
            if (iKeyAt >= this.O) {
                ((androidx.media3.exoplayer.dash.c) this.f11059u.valueAt(i10)).G(this.H, iKeyAt - this.O);
            }
        }
        z1.g gVarC = this.H.c(0);
        int iD = this.H.d() - 1;
        z1.g gVarC2 = this.H.c(iD);
        long jF = this.H.f(iD);
        long jR0 = a1.R0(a1.h0(this.L));
        long J = J(gVarC, this.H.f(0), jR0);
        long jI = I(gVarC2, jF, jR0);
        boolean z11 = this.H.f76508d && !N(gVarC2);
        if (z11) {
            long j12 = this.H.f76510f;
            if (j12 != C.TIME_UNSET) {
                J = Math.max(J, jI - a1.R0(j12));
            }
        }
        long j13 = jI - J;
        z1.c cVar = this.H;
        if (cVar.f76508d) {
            androidx.media3.common.util.a.g(cVar.f76505a != C.TIME_UNSET);
            long jR1 = (jR0 - a1.R0(this.H.f76505a)) - J;
            h0(jR1, j13);
            long jY1 = this.H.f76505a + a1.y1(J);
            long jR2 = jR1 - a1.R0(this.E.f9973a);
            long jMin = Math.min(this.f11054p, j13 / 2);
            j10 = jY1;
            j11 = jR2 < jMin ? jMin : jR2;
        } else {
            j10 = C.TIME_UNSET;
            j11 = 0;
        }
        long jR3 = J - a1.R0(gVarC.f76542b);
        z1.c cVar2 = this.H;
        A(new b(cVar2.f76505a, j10, this.L, this.O, jR3, j13, j11, cVar2, a(), this.H.f76508d ? this.E : null));
        if (this.f11046h) {
            return;
        }
        this.D.removeCallbacks(this.f11061w);
        if (z11) {
            this.D.postDelayed(this.f11061w, K(this.H, a1.h0(this.L)));
        }
        if (this.I) {
            g0();
            return;
        }
        if (z10) {
            z1.c cVar3 = this.H;
            if (cVar3.f76508d) {
                long j14 = cVar3.f76509e;
                if (j14 != C.TIME_UNSET) {
                    if (j14 == 0) {
                        j14 = 5000;
                    }
                    e0(Math.max(0L, (this.J + j14) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    private void b0(z1.o oVar) {
        String str = oVar.f76595a;
        if (Objects.equals(str, "urn:mpeg:dash:utc:direct:2014") || Objects.equals(str, "urn:mpeg:dash:utc:direct:2012")) {
            c0(oVar);
            return;
        }
        if (Objects.equals(str, "urn:mpeg:dash:utc:http-iso:2014") || Objects.equals(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            d0(oVar, new d());
            return;
        }
        if (Objects.equals(str, "urn:mpeg:dash:utc:http-xsdate:2014") || Objects.equals(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
            d0(oVar, new h(null));
        } else if (Objects.equals(str, "urn:mpeg:dash:utc:ntp:2014") || Objects.equals(str, "urn:mpeg:dash:utc:ntp:2012")) {
            P();
        } else {
            Y(new IOException("Unsupported UTC timing scheme"));
        }
    }

    private void c0(z1.o oVar) {
        try {
            Z(a1.Z0(oVar.f76596b) - this.K);
        } catch (ParserException e10) {
            Y(e10);
        }
    }

    private void d0(z1.o oVar, q.a aVar) {
        f0(new q(this.f11064z, Uri.parse(oVar.f76596b), 5, aVar), new g(this, null), 1);
    }

    private void e0(long j10) {
        this.D.postDelayed(this.f11060v, j10);
    }

    private void f0(q qVar, Loader.b bVar, int i10) {
        this.A.m(qVar, bVar, i10);
    }

    public void g0() {
        Uri uri;
        this.D.removeCallbacks(this.f11060v);
        if (this.A.h()) {
            return;
        }
        if (this.A.i()) {
            this.I = true;
            return;
        }
        synchronized (this.f11058t) {
            uri = this.F;
        }
        this.I = false;
        f0(new q(this.f11064z, new w1.h.b().i(uri).b(1).a(), 4, this.f11056r), this.f11057s, this.f11051m.a(4));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003b  */
    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059  */
    /* JADX WARN: Code duplicated, block: B:25:0x005f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0065  */
    /* JADX WARN: Code duplicated, block: B:30:0x006d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:36:0x007d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0083  */
    /* JADX WARN: Code duplicated, block: B:39:0x0085  */
    /* JADX WARN: Code duplicated, block: B:42:0x008c  */
    /* JADX WARN: Code duplicated, block: B:45:0x0092  */
    /* JADX WARN: Code duplicated, block: B:48:0x0097  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:54:0x00be  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d7  */
    private void h0(long j10, long j11) {
        long j12;
        long jMin;
        long jY1;
        long j13;
        long jQ;
        long j14;
        l lVar;
        long j15;
        long jQ2;
        float f10;
        float f11;
        l lVar2;
        l lVar3;
        l lVar4;
        z1.c cVar;
        l lVar5;
        long j16;
        t.g gVar = a().f9901d;
        long jY2 = a1.y1(j10);
        long j17 = gVar.f9975c;
        if (j17 == C.TIME_UNSET) {
            l lVar6 = this.H.f76514j;
            if (lVar6 != null) {
                long j18 = lVar6.f76588c;
                if (j18 != C.TIME_UNSET) {
                    jMin = Math.min(jY2, j18);
                }
                jY1 = a1.y1(j10 - j11);
                if (jY1 < 0 && j12 > 0) {
                    jY1 = 0;
                }
                j13 = this.H.f76507c;
                if (j13 != C.TIME_UNSET) {
                    jY1 = Math.min(jY1 + j13, jY2);
                }
                jQ = jY1;
                j14 = gVar.f9974b;
                if (j14 != C.TIME_UNSET) {
                    jQ = a1.q(j14, jQ, jY2);
                } else {
                    lVar = this.H.f76514j;
                    if (lVar != null) {
                        j15 = lVar.f76587b;
                        if (j15 != C.TIME_UNSET) {
                            jQ = a1.q(j15, jQ, jY2);
                        }
                    }
                }
                if (jQ > j12) {
                    j12 = jQ;
                }
                jQ2 = this.E.f9973a;
                if (jQ2 == C.TIME_UNSET) {
                    cVar = this.H;
                    lVar5 = cVar.f76514j;
                    if (lVar5 != null) {
                        j16 = lVar5.f76586a;
                        if (j16 != C.TIME_UNSET) {
                            jQ2 = j16;
                        } else {
                            jQ2 = cVar.f76511g;
                            if (jQ2 == C.TIME_UNSET) {
                                jQ2 = this.f11053o;
                            }
                        }
                    } else {
                        jQ2 = cVar.f76511g;
                        if (jQ2 == C.TIME_UNSET) {
                            jQ2 = this.f11053o;
                        }
                    }
                }
                if (jQ2 < jQ) {
                    jQ2 = jQ;
                }
                if (jQ2 > j12) {
                    jQ2 = a1.q(a1.y1(j10 - Math.min(this.f11054p, j11 / 2)), jQ, j12);
                }
                f10 = gVar.f9976d;
                if (f10 == -3.4028235E38f) {
                    lVar4 = this.H.f76514j;
                    if (lVar4 != null) {
                        f10 = lVar4.f76589d;
                    } else {
                        f10 = -3.4028235E38f;
                    }
                }
                f11 = gVar.f9977e;
                if (f11 == -3.4028235E38f) {
                    lVar3 = this.H.f76514j;
                    if (lVar3 != null) {
                        f11 = lVar3.f76590e;
                    } else {
                        f11 = -3.4028235E38f;
                    }
                }
                if (f10 == -3.4028235E38f && f11 == -3.4028235E38f && ((lVar2 = this.H.f76514j) == null || lVar2.f76586a == C.TIME_UNSET)) {
                    f10 = 1.0f;
                    f11 = 1.0f;
                }
                this.E = new t.g.a().k(jQ2).i(jQ).g(j12).j(f10).h(f11).f();
            }
            j12 = jY2;
            jY1 = a1.y1(j10 - j11);
            if (jY1 < 0) {
                jY1 = 0;
            }
            j13 = this.H.f76507c;
            if (j13 != C.TIME_UNSET) {
                jY1 = Math.min(jY1 + j13, jY2);
            }
            jQ = jY1;
            j14 = gVar.f9974b;
            if (j14 != C.TIME_UNSET) {
                jQ = a1.q(j14, jQ, jY2);
            } else {
                lVar = this.H.f76514j;
                if (lVar != null) {
                    j15 = lVar.f76587b;
                    if (j15 != C.TIME_UNSET) {
                        jQ = a1.q(j15, jQ, jY2);
                    }
                }
            }
            if (jQ > j12) {
                j12 = jQ;
            }
            jQ2 = this.E.f9973a;
            if (jQ2 == C.TIME_UNSET) {
                cVar = this.H;
                lVar5 = cVar.f76514j;
                if (lVar5 != null) {
                    j16 = lVar5.f76586a;
                    if (j16 != C.TIME_UNSET) {
                        jQ2 = j16;
                    } else {
                        jQ2 = cVar.f76511g;
                        if (jQ2 == C.TIME_UNSET) {
                            jQ2 = this.f11053o;
                        }
                    }
                } else {
                    jQ2 = cVar.f76511g;
                    if (jQ2 == C.TIME_UNSET) {
                        jQ2 = this.f11053o;
                    }
                }
            }
            if (jQ2 < jQ) {
                jQ2 = jQ;
            }
            if (jQ2 > j12) {
                jQ2 = a1.q(a1.y1(j10 - Math.min(this.f11054p, j11 / 2)), jQ, j12);
            }
            f10 = gVar.f9976d;
            if (f10 == -3.4028235E38f) {
                lVar4 = this.H.f76514j;
                if (lVar4 != null) {
                    f10 = lVar4.f76589d;
                } else {
                    f10 = -3.4028235E38f;
                }
            }
            f11 = gVar.f9977e;
            if (f11 == -3.4028235E38f) {
                lVar3 = this.H.f76514j;
                if (lVar3 != null) {
                    f11 = lVar3.f76590e;
                } else {
                    f11 = -3.4028235E38f;
                }
            }
            if (f10 == -3.4028235E38f) {
                f10 = 1.0f;
                f11 = 1.0f;
            }
            this.E = new t.g.a().k(jQ2).i(jQ).g(j12).j(f10).h(f11).f();
        }
        jMin = Math.min(jY2, j17);
        j12 = jMin;
        jY1 = a1.y1(j10 - j11);
        if (jY1 < 0) {
            jY1 = 0;
        }
        j13 = this.H.f76507c;
        if (j13 != C.TIME_UNSET) {
            jY1 = Math.min(jY1 + j13, jY2);
        }
        jQ = jY1;
        j14 = gVar.f9974b;
        if (j14 != C.TIME_UNSET) {
            jQ = a1.q(j14, jQ, jY2);
        } else {
            lVar = this.H.f76514j;
            if (lVar != null) {
                j15 = lVar.f76587b;
                if (j15 != C.TIME_UNSET) {
                    jQ = a1.q(j15, jQ, jY2);
                }
            }
        }
        if (jQ > j12) {
            j12 = jQ;
        }
        jQ2 = this.E.f9973a;
        if (jQ2 == C.TIME_UNSET) {
            cVar = this.H;
            lVar5 = cVar.f76514j;
            if (lVar5 != null) {
                j16 = lVar5.f76586a;
                if (j16 != C.TIME_UNSET) {
                    jQ2 = j16;
                } else {
                    jQ2 = cVar.f76511g;
                    if (jQ2 == C.TIME_UNSET) {
                        jQ2 = this.f11053o;
                    }
                }
            } else {
                jQ2 = cVar.f76511g;
                if (jQ2 == C.TIME_UNSET) {
                    jQ2 = this.f11053o;
                }
            }
        }
        if (jQ2 < jQ) {
            jQ2 = jQ;
        }
        if (jQ2 > j12) {
            jQ2 = a1.q(a1.y1(j10 - Math.min(this.f11054p, j11 / 2)), jQ, j12);
        }
        f10 = gVar.f9976d;
        if (f10 == -3.4028235E38f) {
            lVar4 = this.H.f76514j;
            if (lVar4 != null) {
                f10 = lVar4.f76589d;
            } else {
                f10 = -3.4028235E38f;
            }
        }
        f11 = gVar.f9977e;
        if (f11 == -3.4028235E38f) {
            lVar3 = this.H.f76514j;
            if (lVar3 != null) {
                f11 = lVar3.f76590e;
            } else {
                f11 = -3.4028235E38f;
            }
        }
        if (f10 == -3.4028235E38f) {
            f10 = 1.0f;
            f11 = 1.0f;
        }
        this.E = new t.g.a().k(jQ2).i(jQ).g(j12).j(f10).h(f11).f();
    }

    @Override
    protected void B() {
        this.I = false;
        this.f11064z = null;
        Loader loader = this.A;
        if (loader != null) {
            loader.k();
            this.A = null;
        }
        this.J = 0L;
        this.K = 0L;
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
        this.f11059u.clear();
        this.f11052n.i();
        this.f11050l.release();
    }

    void Q(long j10) {
        long j11 = this.N;
        if (j11 == C.TIME_UNSET || j11 < j10) {
            this.N = j10;
        }
    }

    void R() {
        this.D.removeCallbacks(this.f11061w);
        g0();
    }

    void S(q qVar, long j10, long j11) {
        i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
        this.f11051m.b(qVar.f12702a);
        this.f11055q.s(iVar, qVar.f12704c);
    }

    void T(q qVar, long j10, long j11) {
        i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
        this.f11051m.b(qVar.f12702a);
        this.f11055q.v(iVar, qVar.f12704c);
        z1.c cVar = (z1.c) qVar.c();
        z1.c cVar2 = this.H;
        int iD = cVar2 == null ? 0 : cVar2.d();
        long j12 = cVar.c(0).f76542b;
        int i10 = 0;
        while (i10 < iD && this.H.c(i10).f76542b < j12) {
            i10++;
        }
        if (cVar.f76508d) {
            if (iD - i10 > cVar.d()) {
                androidx.media3.common.util.u.h("DashMediaSource", "Loaded out of sync manifest");
            } else {
                long j13 = this.N;
                if (j13 == C.TIME_UNSET || cVar.f76512h * 1000 > j13) {
                    this.M = 0;
                } else {
                    androidx.media3.common.util.u.h("DashMediaSource", "Loaded stale dynamic manifest: " + cVar.f76512h + ", " + this.N);
                }
            }
            int i11 = this.M;
            this.M = i11 + 1;
            if (i11 < this.f11051m.a(qVar.f12704c)) {
                e0(L());
                return;
            } else {
                this.C = new DashManifestStaleException();
                return;
            }
        }
        this.H = cVar;
        this.I = cVar.f76508d & this.I;
        this.J = j10 - j11;
        this.K = j10;
        this.O += i10;
        synchronized (this.f11058t) {
            try {
                if (qVar.f12703b.f74097a == this.F) {
                    Uri uriD = this.H.f76515k;
                    if (uriD == null) {
                        uriD = qVar.d();
                    }
                    this.F = uriD;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        z1.c cVar3 = this.H;
        if (!cVar3.f76508d || this.L != C.TIME_UNSET) {
            a0(true);
            return;
        }
        z1.o oVar = cVar3.f76513i;
        if (oVar != null) {
            b0(oVar);
        } else {
            P();
        }
    }

    Loader.c U(q qVar, long j10, long j11, IOException iOException, int i10) {
        i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
        long jC = this.f11051m.c(new m.c(iVar, new f2.j(qVar.f12704c), iOException, i10));
        Loader.c cVarG = jC == C.TIME_UNSET ? Loader.f12638g : Loader.g(false, jC);
        boolean zC = cVarG.c();
        this.f11055q.z(iVar, qVar.f12704c, iOException, !zC);
        if (!zC) {
            this.f11051m.b(qVar.f12702a);
        }
        return cVarG;
    }

    void V(q qVar, long j10, long j11, int i10) {
        this.f11055q.B(i10 == 0 ? new i(qVar.f12702a, qVar.f12703b, j10) : new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a()), qVar.f12704c, i10);
    }

    void W(q qVar, long j10, long j11) {
        i iVar = new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a());
        this.f11051m.b(qVar.f12702a);
        this.f11055q.v(iVar, qVar.f12704c);
        Z(((Long) qVar.c()).longValue() - j10);
    }

    Loader.c X(q qVar, long j10, long j11, IOException iOException) {
        this.f11055q.z(new i(qVar.f12702a, qVar.f12703b, qVar.d(), qVar.b(), j10, j11, qVar.a()), qVar.f12704c, iOException, true);
        this.f11051m.b(qVar.f12702a);
        Y(iOException);
        return Loader.f12637f;
    }

    @Override
    public synchronized t a() {
        return this.P;
    }

    @Override
    public androidx.media3.exoplayer.source.q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        int iIntValue = ((Integer) bVar.f12571a).intValue() - this.O;
        s.a aVarU = u(bVar);
        androidx.media3.exoplayer.dash.c cVar = new androidx.media3.exoplayer.dash.c(iIntValue + this.O, this.H, this.f11052n, iIntValue, this.f11048j, this.B, null, this.f11050l, s(bVar), this.f11051m, aVarU, this.L, this.f11063y, bVar2, this.f11049k, this.f11062x, x());
        this.f11059u.put(cVar.f11089a, cVar);
        return cVar;
    }

    @Override
    public void k(androidx.media3.exoplayer.source.q qVar) {
        androidx.media3.exoplayer.dash.c cVar = (androidx.media3.exoplayer.dash.c) qVar;
        cVar.C();
        this.f11059u.remove(cVar.f11089a);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
        this.f11063y.maybeThrowError();
    }

    @Override
    public synchronized void n(t tVar) {
        this.P = tVar;
    }

    @Override
    public boolean q(t tVar) {
        t tVarA = a();
        t.h hVar = (t.h) androidx.media3.common.util.a.e(tVarA.f9899b);
        t.h hVar2 = tVar.f9899b;
        return hVar2 != null && hVar2.f9991a.equals(hVar.f9991a) && hVar2.f9994d.equals(hVar.f9994d) && Objects.equals(hVar2.f9993c, hVar.f9993c) && tVarA.f9901d.equals(tVar.f9901d);
    }

    @Override
    protected void z(n nVar) {
        this.B = nVar;
        this.f11050l.d(Looper.myLooper(), x());
        this.f11050l.prepare();
        if (this.f11046h) {
            a0(false);
            return;
        }
        this.f11064z = this.f11047i.createDataSource();
        this.A = new Loader("DashMediaSource");
        this.D = a1.A();
        g0();
    }

    private DashMediaSource(t tVar, z1.c cVar, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, q.a aVar, androidx.media3.exoplayer.dash.a.InterfaceC0089a interfaceC0089a, f2.e eVar, androidx.media3.exoplayer.upstream.f fVar, androidx.media3.exoplayer.drm.t tVar2, m mVar, long j10, long j11) {
        this.P = tVar;
        this.E = tVar.f9901d;
        this.F = ((t.h) androidx.media3.common.util.a.e(tVar.f9899b)).f9991a;
        this.G = tVar.f9899b.f9991a;
        this.H = cVar;
        this.f11047i = interfaceC0085a;
        this.f11056r = aVar;
        this.f11048j = interfaceC0089a;
        this.f11050l = tVar2;
        this.f11051m = mVar;
        this.f11053o = j10;
        this.f11054p = j11;
        this.f11049k = eVar;
        this.f11052n = new y1.b();
        boolean z10 = cVar != null;
        this.f11046h = z10;
        a aVar2 = null;
        this.f11055q = u(null);
        this.f11058t = new Object();
        this.f11059u = new SparseArray();
        this.f11062x = new c(this, aVar2);
        this.N = C.TIME_UNSET;
        this.L = C.TIME_UNSET;
        if (!z10) {
            this.f11057s = new e(this, aVar2);
            this.f11063y = new f();
            this.f11060v = new Runnable() {
                @Override
                public final void run() {
                    this.f76085a.g0();
                }
            };
            this.f11061w = new Runnable() {
                @Override
                public final void run() {
                    this.f76086a.O();
                }
            };
            return;
        }
        androidx.media3.common.util.a.g(true ^ cVar.f76508d);
        this.f11057s = null;
        this.f11060v = null;
        this.f11061w = null;
        this.f11063y = new p.a();
    }
}
