package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.v2;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import k2.m0;
import k2.s0;

final class a0 implements q, k2.t, Loader.b, Loader.e, e0.d {
    private static final Map R = B();
    private static final androidx.media3.common.r S = new androidx.media3.common.r.b().f0("icy").u0("application/x-icy").N();
    private boolean A;
    private f B;
    private m0 C;
    private long D;
    private boolean E;
    private int F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private boolean K;
    private long L;
    private long M;
    private boolean N;
    private int O;
    private boolean P;
    private boolean Q;

    private final Uri f12321a;

    private final androidx.media3.datasource.a f12322b;

    private final androidx.media3.exoplayer.drm.t f12323c;

    private final androidx.media3.exoplayer.upstream.m f12324d;

    private final s.a f12325e;

    private final androidx.media3.exoplayer.drm.r.a f12326f;

    private final c f12327g;

    private final androidx.media3.exoplayer.upstream.b f12328h;

    private final String f12329i;

    private final long f12330j;

    private final int f12331k;

    private final androidx.media3.common.r f12332l;

    private final long f12333m;

    private final Loader f12334n;

    private final v f12335o;

    private final androidx.media3.common.util.l f12336p;

    private final Runnable f12337q;

    private final Runnable f12338r;

    private final Handler f12339s;

    private q.a f12340t;

    private x2.b f12341u;

    private e0[] f12342v;

    private e[] f12343w;

    private boolean f12344x;

    private boolean f12345y;

    private boolean f12346z;

    class a extends k2.d0 {
        a(m0 m0Var) {
            super(m0Var);
        }

        @Override
        public long getDurationUs() {
            return a0.this.D;
        }
    }

    final class b implements Loader.d, n.a {

        private final Uri f12349b;

        private final w1.l f12350c;

        private final v f12351d;

        private final k2.t f12352e;

        private final androidx.media3.common.util.l f12353f;

        private volatile boolean f12355h;

        private long f12357j;

        private s0 f12359l;

        private boolean f12360m;

        private final k2.l0 f12354g = new k2.l0();

        private boolean f12356i = true;

        private final long f12348a = f2.i.a();

        private w1.h f12358k = g(0);

        public b(Uri uri, androidx.media3.datasource.a aVar, v vVar, k2.t tVar, androidx.media3.common.util.l lVar) {
            this.f12349b = uri;
            this.f12350c = new w1.l(aVar);
            this.f12351d = vVar;
            this.f12352e = tVar;
            this.f12353f = lVar;
        }

        private w1.h g(long j10) {
            return new w1.h.b().i(this.f12349b).h(j10).f(a0.this.f12329i).b(6).e(a0.R).a();
        }

        public void h(long j10, long j11) {
            this.f12354g.f63627a = j10;
            this.f12357j = j11;
            this.f12356i = true;
            this.f12360m = false;
        }

        @Override
        public void a(androidx.media3.common.util.j0 j0Var) {
            long jMax = !this.f12360m ? this.f12357j : Math.max(a0.this.D(true), this.f12357j);
            int iA = j0Var.a();
            s0 s0Var = (s0) androidx.media3.common.util.a.e(this.f12359l);
            s0Var.c(j0Var, iA);
            s0Var.b(jMax, 1, iA, 0, null);
            this.f12360m = true;
        }

        @Override
        public void cancelLoad() {
            this.f12355h = true;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x004b */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void load() {
            int iC = 0;
            while (iC == 0 && !this.f12355h) {
                long j10 = this.f12354g.f63627a;
                w1.h hVarG = g(j10);
                this.f12358k = hVarG;
                long jA = this.f12350c.a(hVarG);
                if (this.f12355h) {
                    if (iC != 1 && this.f12351d.b() != -1) {
                        this.f12354g.f63627a = this.f12351d.b();
                    }
                    w1.g.a(this.f12350c);
                    return;
                }
                if (jA != -1) {
                    jA += j10;
                    a0.this.P();
                }
                long j11 = jA;
                a0.this.f12341u = x2.b.b(this.f12350c.getResponseHeaders());
                androidx.media3.common.j nVar = this.f12350c;
                if (a0.this.f12341u != null && a0.this.f12341u.f75065f != -1) {
                    nVar = new n(this.f12350c, a0.this.f12341u.f75065f, this);
                    s0 s0VarE = a0.this.E();
                    this.f12359l = s0VarE;
                    s0VarE.d(a0.S);
                }
                long jB = j10;
                this.f12351d.d(nVar, this.f12349b, this.f12350c.getResponseHeaders(), j10, j11, this.f12352e);
                if (a0.this.f12341u != null) {
                    this.f12351d.a();
                }
                if (this.f12356i) {
                    this.f12351d.seek(jB, this.f12357j);
                    this.f12356i = false;
                }
                while (true) {
                    long j12 = jB;
                    while (true) {
                        if (iC != 0 || this.f12355h) {
                            break;
                        }
                        try {
                            this.f12353f.a();
                            iC = this.f12351d.c(this.f12354g);
                            jB = this.f12351d.b();
                            if (jB > a0.this.f12330j + j12) {
                                this.f12353f.d();
                                a0.this.f12339s.post(a0.this.f12338r);
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                }
                if (iC == 1) {
                    iC = 0;
                } else if (this.f12351d.b() != -1) {
                    this.f12354g.f63627a = this.f12351d.b();
                }
                w1.g.a(this.f12350c);
            }
        }
    }

    interface c {
        void h(long j10, m0 m0Var, boolean z10);
    }

    private final class d implements f2.u {

        private final int f12362a;

        public d(int i10) {
            this.f12362a = i10;
        }

        @Override
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            return a0.this.V(this.f12362a, s2Var, decoderInputBuffer, i10);
        }

        @Override
        public boolean isReady() {
            return a0.this.G(this.f12362a);
        }

        @Override
        public void maybeThrowError() throws IOException {
            a0.this.O(this.f12362a);
        }

        @Override
        public int skipData(long j10) {
            return a0.this.Z(this.f12362a, j10);
        }
    }

    private static final class e {

        public final int f12364a;

        public final boolean f12365b;

        public e(int i10, boolean z10) {
            this.f12364a = i10;
            this.f12365b = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f12364a == eVar.f12364a && this.f12365b == eVar.f12365b;
        }

        public int hashCode() {
            return (this.f12364a * 31) + (this.f12365b ? 1 : 0);
        }
    }

    private static final class f {

        public final f2.z f12366a;

        public final boolean[] f12367b;

        public final boolean[] f12368c;

        public final boolean[] f12369d;

        public f(f2.z zVar, boolean[] zArr) {
            this.f12366a = zVar;
            this.f12367b = zArr;
            int i10 = zVar.f59968a;
            this.f12368c = new boolean[i10];
            this.f12369d = new boolean[i10];
        }
    }

    public a0(Uri uri, androidx.media3.datasource.a aVar, v vVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar2, androidx.media3.exoplayer.upstream.m mVar, s.a aVar3, c cVar, androidx.media3.exoplayer.upstream.b bVar, String str, int i10, int i11, androidx.media3.common.r rVar, long j10, androidx.media3.exoplayer.util.c cVar2) {
        this.f12321a = uri;
        this.f12322b = aVar;
        this.f12323c = tVar;
        this.f12326f = aVar2;
        this.f12324d = mVar;
        this.f12325e = aVar3;
        this.f12327g = cVar;
        this.f12328h = bVar;
        this.f12329i = str;
        this.f12330j = i10;
        this.f12331k = i11;
        this.f12332l = rVar;
        this.f12334n = cVar2 != null ? new Loader(cVar2) : new Loader("ProgressiveMediaPeriod");
        this.f12335o = vVar;
        this.f12333m = j10;
        this.f12336p = new androidx.media3.common.util.l();
        this.f12337q = new Runnable() {
            @Override
            public final void run() {
                this.f12594a.K();
            }
        };
        this.f12338r = new Runnable() {
            @Override
            public final void run() {
                this.f12595a.H();
            }
        };
        this.f12339s = a1.A();
        this.f12343w = new e[0];
        this.f12342v = new e0[0];
        this.M = C.TIME_UNSET;
        this.F = 1;
    }

    private boolean A(b bVar, int i10) {
        m0 m0Var;
        if (this.K || !((m0Var = this.C) == null || m0Var.getDurationUs() == C.TIME_UNSET)) {
            this.O = i10;
            return true;
        }
        if (this.f12345y && !b0()) {
            this.N = true;
            return false;
        }
        this.H = this.f12345y;
        this.L = 0L;
        this.O = 0;
        for (e0 e0Var : this.f12342v) {
            e0Var.Y();
        }
        bVar.h(0L, 0L);
        return true;
    }

    private static Map B() {
        HashMap map = new HashMap();
        map.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(map);
    }

    private int C() {
        int iJ = 0;
        for (e0 e0Var : this.f12342v) {
            iJ += e0Var.J();
        }
        return iJ;
    }

    public long D(boolean z10) {
        long jMax = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.f12342v.length; i10++) {
            if (z10 || ((f) androidx.media3.common.util.a.e(this.B)).f12368c[i10]) {
                jMax = Math.max(jMax, this.f12342v[i10].C());
            }
        }
        return jMax;
    }

    private boolean F() {
        return this.M != C.TIME_UNSET;
    }

    public void H() {
        if (this.Q) {
            return;
        }
        ((q.a) androidx.media3.common.util.a.e(this.f12340t)).h(this);
    }

    public void I() {
        this.K = true;
    }

    public void K() {
        if (this.Q || this.f12345y || !this.f12344x || this.C == null) {
            return;
        }
        for (e0 e0Var : this.f12342v) {
            if (e0Var.I() == null) {
                return;
            }
        }
        this.f12336p.d();
        int length = this.f12342v.length;
        androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[length];
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            androidx.media3.common.r rVarN = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.f12342v[i10].I());
            String str = rVarN.f9849o;
            boolean zO = androidx.media3.common.y.o(str);
            boolean z10 = zO || androidx.media3.common.y.t(str);
            zArr[i10] = z10;
            this.f12346z = z10 | this.f12346z;
            this.A = this.f12333m != C.TIME_UNSET && length == 1 && androidx.media3.common.y.q(str);
            x2.b bVar = this.f12341u;
            if (bVar != null) {
                if (zO || this.f12343w[i10].f12365b) {
                    androidx.media3.common.x xVar = rVarN.f9846l;
                    rVarN = rVarN.b().n0(xVar == null ? new androidx.media3.common.x(bVar) : xVar.a(bVar)).N();
                }
                if (zO && rVarN.f9842h == -1 && rVarN.f9843i == -1 && bVar.f75060a != -1) {
                    rVarN = rVarN.b().Q(bVar.f75060a).N();
                }
            }
            androidx.media3.common.r rVarC = rVarN.c(this.f12323c.b(rVarN));
            f0VarArr[i10] = new androidx.media3.common.f0(Integer.toString(i10), rVarC);
            this.I = rVarC.f9855u | this.I;
        }
        this.B = new f(new f2.z(f0VarArr), zArr);
        if (this.A && this.D == C.TIME_UNSET) {
            this.D = this.f12333m;
            this.C = new a(this.C);
        }
        this.f12327g.h(this.D, this.C, this.E);
        this.f12345y = true;
        ((q.a) androidx.media3.common.util.a.e(this.f12340t)).g(this);
    }

    private void L(int i10) {
        z();
        f fVar = this.B;
        boolean[] zArr = fVar.f12369d;
        if (zArr[i10]) {
            return;
        }
        androidx.media3.common.r rVarA = fVar.f12366a.b(i10).a(0);
        this.f12325e.j(androidx.media3.common.y.k(rVarA.f9849o), rVarA, 0, null, this.L);
        zArr[i10] = true;
    }

    private void M(int i10) {
        z();
        if (this.N) {
            if (!this.f12346z || this.B.f12367b[i10]) {
                if (this.f12342v[i10].N(false)) {
                    return;
                }
                this.M = 0L;
                this.N = false;
                this.H = true;
                this.L = 0L;
                this.O = 0;
                for (e0 e0Var : this.f12342v) {
                    e0Var.Y();
                }
                ((q.a) androidx.media3.common.util.a.e(this.f12340t)).h(this);
            }
        }
    }

    public void P() {
        this.f12339s.post(new Runnable() {
            @Override
            public final void run() {
                this.f12593a.I();
            }
        });
    }

    private s0 U(e eVar) {
        int length = this.f12342v.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (eVar.equals(this.f12343w[i10])) {
                return this.f12342v[i10];
            }
        }
        if (this.f12344x) {
            androidx.media3.common.util.u.h("ProgressiveMediaPeriod", "Extractor added new track (id=" + eVar.f12364a + ") after finishing tracks.");
            return new k2.n();
        }
        e0 e0VarL = e0.l(this.f12328h, this.f12323c, this.f12326f);
        e0VarL.g0(this);
        int i11 = length + 1;
        e[] eVarArr = (e[]) Arrays.copyOf(this.f12343w, i11);
        eVarArr[length] = eVar;
        this.f12343w = (e[]) a1.j(eVarArr);
        e0[] e0VarArr = (e0[]) Arrays.copyOf(this.f12342v, i11);
        e0VarArr[length] = e0VarL;
        this.f12342v = (e0[]) a1.j(e0VarArr);
        return e0VarL;
    }

    private boolean X(boolean[] zArr, long j10, boolean z10) {
        int length = this.f12342v.length;
        for (int i10 = 0; i10 < length; i10++) {
            e0 e0Var = this.f12342v[i10];
            if (e0Var.F() != 0 || !z10) {
                if (!(this.A ? e0Var.b0(e0Var.A()) : e0Var.c0(j10, false)) && (zArr[i10] || !this.f12346z)) {
                    return false;
                }
            }
        }
        return true;
    }

    public void J(m0 m0Var) {
        this.C = this.f12341u == null ? m0Var : new m0.b(C.TIME_UNSET);
        this.D = m0Var.getDurationUs();
        boolean z10 = !this.K && m0Var.getDurationUs() == C.TIME_UNSET;
        this.E = z10;
        this.F = z10 ? 7 : 1;
        if (this.f12345y) {
            this.f12327g.h(this.D, m0Var, z10);
        } else {
            K();
        }
    }

    private void a0() {
        b bVar = new b(this.f12321a, this.f12322b, this.f12335o, this, this.f12336p);
        if (this.f12345y) {
            androidx.media3.common.util.a.g(F());
            long j10 = this.D;
            if (j10 != C.TIME_UNSET && this.M > j10) {
                this.P = true;
                this.M = C.TIME_UNSET;
                return;
            }
            bVar.h(((m0) androidx.media3.common.util.a.e(this.C)).getSeekPoints(this.M).f63651a.f63658b, this.M);
            for (e0 e0Var : this.f12342v) {
                e0Var.e0(this.M);
            }
            this.M = C.TIME_UNSET;
        }
        this.O = C();
        this.f12334n.m(bVar, this, this.f12324d.a(this.F));
    }

    private boolean b0() {
        return this.H || F();
    }

    private void z() {
        androidx.media3.common.util.a.g(this.f12345y);
        androidx.media3.common.util.a.e(this.B);
        androidx.media3.common.util.a.e(this.C);
    }

    s0 E() {
        return U(new e(0, true));
    }

    boolean G(int i10) {
        return !b0() && this.f12342v[i10].N(this.P);
    }

    void N() throws IOException {
        this.f12334n.j(this.f12324d.a(this.F));
    }

    void O(int i10) throws IOException {
        this.f12342v[i10].Q();
        N();
    }

    @Override
    public void q(b bVar, long j10, long j11, boolean z10) {
        w1.l lVar = bVar.f12350c;
        f2.i iVar = new f2.i(bVar.f12348a, bVar.f12358k, lVar.e(), lVar.f(), j10, j11, lVar.d());
        this.f12324d.b(bVar.f12348a);
        this.f12325e.t(iVar, 1, -1, null, 0, null, bVar.f12357j, this.D);
        if (z10) {
            return;
        }
        for (e0 e0Var : this.f12342v) {
            e0Var.Y();
        }
        if (this.J > 0) {
            ((q.a) androidx.media3.common.util.a.e(this.f12340t)).h(this);
        }
    }

    @Override
    public void p(b bVar, long j10, long j11) {
        if (this.D == C.TIME_UNSET && this.C != null) {
            long jD = D(true);
            long j12 = jD == Long.MIN_VALUE ? 0L : jD + 10000;
            this.D = j12;
            this.f12327g.h(j12, this.C, this.E);
        }
        w1.l lVar = bVar.f12350c;
        f2.i iVar = new f2.i(bVar.f12348a, bVar.f12358k, lVar.e(), lVar.f(), j10, j11, lVar.d());
        this.f12324d.b(bVar.f12348a);
        this.f12325e.w(iVar, 1, -1, null, 0, null, bVar.f12357j, this.D);
        this.P = true;
        ((q.a) androidx.media3.common.util.a.e(this.f12340t)).h(this);
    }

    @Override
    public Loader.c k(b bVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c cVarG;
        w1.l lVar = bVar.f12350c;
        f2.i iVar = new f2.i(bVar.f12348a, bVar.f12358k, lVar.e(), lVar.f(), j10, j11, lVar.d());
        long jC = this.f12324d.c(new androidx.media3.exoplayer.upstream.m.c(iVar, new f2.j(1, -1, null, 0, null, a1.y1(bVar.f12357j), a1.y1(this.D)), iOException, i10));
        if (jC == C.TIME_UNSET) {
            cVarG = Loader.f12638g;
        } else {
            int iC = C();
            cVarG = A(bVar, iC) ? Loader.g(iC > this.O, jC) : Loader.f12637f;
        }
        boolean zC = cVarG.c();
        this.f12325e.y(iVar, 1, -1, null, 0, null, bVar.f12357j, this.D, iOException, !zC);
        if (!zC) {
            this.f12324d.b(bVar.f12348a);
        }
        return cVarG;
    }

    @Override
    public void o(b bVar, long j10, long j11, int i10) {
        w1.l lVar = bVar.f12350c;
        this.f12325e.C(i10 == 0 ? new f2.i(bVar.f12348a, bVar.f12358k, j10) : new f2.i(bVar.f12348a, bVar.f12358k, lVar.e(), lVar.f(), j10, j11, lVar.d()), 1, -1, null, 0, null, bVar.f12357j, this.D, i10);
    }

    int V(int i10, s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (b0()) {
            return -3;
        }
        L(i10);
        int iV = this.f12342v[i10].V(s2Var, decoderInputBuffer, i11, this.P);
        if (iV == -3) {
            M(i10);
        }
        return iV;
    }

    public void W() {
        if (this.f12345y) {
            for (e0 e0Var : this.f12342v) {
                e0Var.U();
            }
        }
        this.f12334n.l(this);
        this.f12339s.removeCallbacksAndMessages(null);
        this.f12340t = null;
        this.Q = true;
    }

    int Z(int i10, long j10) {
        if (b0()) {
            return 0;
        }
        L(i10);
        e0 e0Var = this.f12342v[i10];
        int iH = e0Var.H(j10, this.P);
        e0Var.h0(iH);
        if (iH == 0) {
            M(i10);
        }
        return iH;
    }

    @Override
    public boolean a(v2 v2Var) {
        if (this.P || this.f12334n.h() || this.N) {
            return false;
        }
        if ((this.f12345y || this.f12332l != null) && this.J == 0) {
            return false;
        }
        boolean zF = this.f12336p.f();
        if (this.f12334n.i()) {
            return zF;
        }
        a0();
        return true;
    }

    @Override
    public long b(long j10, c4 c4Var) {
        z();
        if (!this.C.isSeekable()) {
            return 0L;
        }
        m0.a seekPoints = this.C.getSeekPoints(j10);
        return c4Var.a(j10, seekPoints.f63651a.f63657a, seekPoints.f63652b.f63657a);
    }

    @Override
    public void c(androidx.media3.common.r rVar) {
        this.f12339s.post(this.f12337q);
    }

    @Override
    public void d(final m0 m0Var) {
        this.f12339s.post(new Runnable() {
            @Override
            public final void run() {
                this.f12596a.J(m0Var);
            }
        });
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        if (this.A) {
            return;
        }
        z();
        if (F()) {
            return;
        }
        boolean[] zArr = this.B.f12368c;
        int length = this.f12342v.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f12342v[i10].r(j10, z10, zArr[i10]);
        }
    }

    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10) {
        i2.z zVar;
        z();
        f fVar = this.B;
        f2.z zVar2 = fVar.f12366a;
        boolean[] zArr3 = fVar.f12368c;
        int i10 = this.J;
        int i11 = 0;
        for (int i12 = 0; i12 < zVarArr.length; i12++) {
            f2.u uVar = uVarArr[i12];
            if (uVar != null && (zVarArr[i12] == null || !zArr[i12])) {
                int i13 = ((d) uVar).f12362a;
                androidx.media3.common.util.a.g(zArr3[i13]);
                this.J--;
                zArr3[i13] = false;
                uVarArr[i12] = null;
            }
        }
        boolean z10 = !this.G ? j10 == 0 || this.A : i10 != 0;
        for (int i14 = 0; i14 < zVarArr.length; i14++) {
            if (uVarArr[i14] == null && (zVar = zVarArr[i14]) != null) {
                androidx.media3.common.util.a.g(zVar.length() == 1);
                androidx.media3.common.util.a.g(zVar.getIndexInTrackGroup(0) == 0);
                int iD = zVar2.d(zVar.getTrackGroup());
                androidx.media3.common.util.a.g(!zArr3[iD]);
                this.J++;
                zArr3[iD] = true;
                this.I = zVar.getSelectedFormat().f9855u | this.I;
                uVarArr[i14] = new d(iD);
                zArr2[i14] = true;
                if (!z10) {
                    e0 e0Var = this.f12342v[iD];
                    z10 = (e0Var.F() == 0 || e0Var.c0(j10, true)) ? false : true;
                }
            }
        }
        if (this.J == 0) {
            this.N = false;
            this.H = false;
            this.I = false;
            if (this.f12334n.i()) {
                e0[] e0VarArr = this.f12342v;
                int length = e0VarArr.length;
                while (i11 < length) {
                    e0VarArr[i11].s();
                    i11++;
                }
                this.f12334n.e();
            } else {
                this.P = false;
                e0[] e0VarArr2 = this.f12342v;
                int length2 = e0VarArr2.length;
                while (i11 < length2) {
                    e0VarArr2[i11].Y();
                    i11++;
                }
            }
        } else if (z10) {
            j10 = seekToUs(j10);
            while (i11 < uVarArr.length) {
                if (uVarArr[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.G = true;
        return j10;
    }

    @Override
    public void endTracks() {
        this.f12344x = true;
        this.f12339s.post(this.f12337q);
    }

    @Override
    public void f(q.a aVar, long j10) {
        this.f12340t = aVar;
        if (this.f12332l == null) {
            this.f12336p.f();
            a0();
        } else {
            track(this.f12331k, 3).d(this.f12332l);
            J(new k2.h0(new long[]{0}, new long[]{0}, C.TIME_UNSET));
            endTracks();
            this.M = j10;
        }
    }

    @Override
    public long getBufferedPositionUs() {
        long jD;
        z();
        if (this.P || this.J == 0) {
            return Long.MIN_VALUE;
        }
        if (F()) {
            return this.M;
        }
        if (this.f12346z) {
            int length = this.f12342v.length;
            jD = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                f fVar = this.B;
                if (fVar.f12367b[i10] && fVar.f12368c[i10] && !this.f12342v[i10].M()) {
                    jD = Math.min(jD, this.f12342v[i10].C());
                }
            }
        } else {
            jD = Long.MAX_VALUE;
        }
        if (jD == Long.MAX_VALUE) {
            jD = D(false);
        }
        return jD == Long.MIN_VALUE ? this.L : jD;
    }

    @Override
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override
    public f2.z getTrackGroups() {
        z();
        return this.B.f12366a;
    }

    @Override
    public boolean isLoading() {
        return this.f12334n.i() && this.f12336p.e();
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        N();
        if (this.P && !this.f12345y) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override
    public void onLoaderReleased() {
        for (e0 e0Var : this.f12342v) {
            e0Var.W();
        }
        this.f12335o.release();
    }

    @Override
    public long readDiscontinuity() {
        if (this.I) {
            this.I = false;
            return this.L;
        }
        if (!this.H) {
            return C.TIME_UNSET;
        }
        if (!this.P && C() <= this.O) {
            return C.TIME_UNSET;
        }
        this.H = false;
        return this.L;
    }

    @Override
    public long seekToUs(long j10) {
        z();
        boolean[] zArr = this.B.f12367b;
        if (!this.C.isSeekable()) {
            j10 = 0;
        }
        int i10 = 0;
        this.H = false;
        boolean z10 = this.L == j10;
        this.L = j10;
        if (F()) {
            this.M = j10;
            return j10;
        }
        if (this.F != 7 && ((this.P || this.f12334n.i()) && X(zArr, j10, z10))) {
            return j10;
        }
        this.N = false;
        this.M = j10;
        this.P = false;
        this.I = false;
        if (this.f12334n.i()) {
            e0[] e0VarArr = this.f12342v;
            int length = e0VarArr.length;
            while (i10 < length) {
                e0VarArr[i10].s();
                i10++;
            }
            this.f12334n.e();
        } else {
            this.f12334n.f();
            e0[] e0VarArr2 = this.f12342v;
            int length2 = e0VarArr2.length;
            while (i10 < length2) {
                e0VarArr2[i10].Y();
                i10++;
            }
        }
        return j10;
    }

    @Override
    public s0 track(int i10, int i11) {
        return U(new e(i10, false));
    }

    @Override
    public void reevaluateBuffer(long j10) {
    }
}
