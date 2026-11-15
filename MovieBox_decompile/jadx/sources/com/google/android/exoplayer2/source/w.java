package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.i0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class w implements n, i9.n, Loader.b, Loader.e, a0.d {
    private static final Map M = y();
    private static final p1 N = new p1.b().S("icy").e0("application/x-icy").E();
    private boolean A;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private long G;
    private boolean I;
    private int J;
    private boolean K;
    private boolean L;

    private final Uri f25982a;

    private final com.google.android.exoplayer2.upstream.k f25983b;

    private final com.google.android.exoplayer2.drm.u f25984c;

    private final com.google.android.exoplayer2.upstream.z f25985d;

    private final p.a f25986e;

    private final com.google.android.exoplayer2.drm.s.a f25987f;

    private final b f25988g;

    private final com.google.android.exoplayer2.upstream.b f25989h;

    private final String f25990i;

    private final long f25991j;

    private final r f25993l;

    private n.a f25998q;

    private IcyHeaders f25999r;

    private boolean f26002u;

    private boolean f26003v;

    private boolean f26004w;

    private e f26005x;

    private i9.b0 f26006y;

    private final Loader f25992k = new Loader("ProgressiveMediaPeriod");

    private final com.google.android.exoplayer2.util.h f25994m = new com.google.android.exoplayer2.util.h();

    private final Runnable f25995n = new Runnable() {
        @Override
        public final void run() {
            this.f25867a.H();
        }
    };

    private final Runnable f25996o = new Runnable() {
        @Override
        public final void run() {
            this.f25978a.E();
        }
    };

    private final Handler f25997p = p0.w();

    private d[] f26001t = new d[0];

    private a0[] f26000s = new a0[0];
    private long H = C.TIME_UNSET;

    private long f26007z = C.TIME_UNSET;
    private int B = 1;

    final class a implements Loader.d, k.a {

        private final Uri f26009b;

        private final i0 f26010c;

        private final r f26011d;

        private final i9.n f26012e;

        private final com.google.android.exoplayer2.util.h f26013f;

        private volatile boolean f26015h;

        private long f26017j;

        private i9.e0 f26019l;

        private boolean f26020m;

        private final i9.a0 f26014g = new i9.a0();

        private boolean f26016i = true;

        private final long f26008a = v9.h.a();

        private com.google.android.exoplayer2.upstream.n f26018k = g(0);

        public a(Uri uri, com.google.android.exoplayer2.upstream.k kVar, r rVar, i9.n nVar, com.google.android.exoplayer2.util.h hVar) {
            this.f26009b = uri;
            this.f26010c = new i0(kVar);
            this.f26011d = rVar;
            this.f26012e = nVar;
            this.f26013f = hVar;
        }

        private com.google.android.exoplayer2.upstream.n g(long j10) {
            return new com.google.android.exoplayer2.upstream.n.b().i(this.f26009b).h(j10).f(w.this.f25990i).b(6).e(w.M).a();
        }

        public void h(long j10, long j11) {
            this.f26014g.f61884a = j10;
            this.f26017j = j11;
            this.f26016i = true;
            this.f26020m = false;
        }

        @Override
        public void a(com.google.android.exoplayer2.util.d0 d0Var) {
            long jMax = !this.f26020m ? this.f26017j : Math.max(w.this.A(true), this.f26017j);
            int iA = d0Var.a();
            i9.e0 e0Var = (i9.e0) com.google.android.exoplayer2.util.a.e(this.f26019l);
            e0Var.c(d0Var, iA);
            e0Var.e(jMax, 1, iA, 0, null);
            this.f26020m = true;
        }

        @Override
        public void cancelLoad() {
            this.f26015h = true;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0029 */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void load() {
            int iD = 0;
            while (iD == 0 && !this.f26015h) {
                long j10 = this.f26014g.f61884a;
                com.google.android.exoplayer2.upstream.n nVarG = g(j10);
                this.f26018k = nVarG;
                long jA = this.f26010c.a(nVarG);
                if (jA != -1) {
                    jA += j10;
                    w.this.M();
                }
                long j11 = jA;
                w.this.f25999r = IcyHeaders.parse(this.f26010c.getResponseHeaders());
                com.google.android.exoplayer2.upstream.g kVar = this.f26010c;
                if (w.this.f25999r != null && w.this.f25999r.metadataInterval != -1) {
                    kVar = new k(this.f26010c, w.this.f25999r.metadataInterval, this);
                    i9.e0 e0VarB = w.this.B();
                    this.f26019l = e0VarB;
                    e0VarB.d(w.N);
                }
                long jB = j10;
                this.f26011d.c(kVar, this.f26009b, this.f26010c.getResponseHeaders(), j10, j11, this.f26012e);
                if (w.this.f25999r != null) {
                    this.f26011d.a();
                }
                if (this.f26016i) {
                    this.f26011d.seek(jB, this.f26017j);
                    this.f26016i = false;
                }
                while (true) {
                    long j12 = jB;
                    while (true) {
                        if (iD != 0 || this.f26015h) {
                            break;
                        }
                        try {
                            this.f26013f.a();
                            iD = this.f26011d.d(this.f26014g);
                            jB = this.f26011d.b();
                            if (jB > w.this.f25991j + j12) {
                                this.f26013f.d();
                                w.this.f25997p.post(w.this.f25996o);
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                }
                if (iD == 1) {
                    iD = 0;
                } else if (this.f26011d.b() != -1) {
                    this.f26014g.f61884a = this.f26011d.b();
                }
                com.google.android.exoplayer2.upstream.m.a(this.f26010c);
            }
        }
    }

    interface b {
        void p(long j10, boolean z10, boolean z11);
    }

    private final class c implements v9.s {

        private final int f26022a;

        public c(int i10) {
            this.f26022a = i10;
        }

        @Override
        public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            return w.this.R(this.f26022a, q1Var, decoderInputBuffer, i10);
        }

        @Override
        public boolean isReady() {
            return w.this.D(this.f26022a);
        }

        @Override
        public void maybeThrowError() throws IOException {
            w.this.L(this.f26022a);
        }

        @Override
        public int skipData(long j10) {
            return w.this.V(this.f26022a, j10);
        }
    }

    private static final class d {

        public final int f26024a;

        public final boolean f26025b;

        public d(int i10, boolean z10) {
            this.f26024a = i10;
            this.f26025b = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f26024a == dVar.f26024a && this.f26025b == dVar.f26025b;
        }

        public int hashCode() {
            return (this.f26024a * 31) + (this.f26025b ? 1 : 0);
        }
    }

    private static final class e {

        public final v9.y f26026a;

        public final boolean[] f26027b;

        public final boolean[] f26028c;

        public final boolean[] f26029d;

        public e(v9.y yVar, boolean[] zArr) {
            this.f26026a = yVar;
            this.f26027b = zArr;
            int i10 = yVar.f73561a;
            this.f26028c = new boolean[i10];
            this.f26029d = new boolean[i10];
        }
    }

    public w(Uri uri, com.google.android.exoplayer2.upstream.k kVar, r rVar, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.drm.s.a aVar, com.google.android.exoplayer2.upstream.z zVar, p.a aVar2, b bVar, com.google.android.exoplayer2.upstream.b bVar2, String str, int i10) {
        this.f25982a = uri;
        this.f25983b = kVar;
        this.f25984c = uVar;
        this.f25987f = aVar;
        this.f25985d = zVar;
        this.f25986e = aVar2;
        this.f25988g = bVar;
        this.f25989h = bVar2;
        this.f25990i = str;
        this.f25991j = i10;
        this.f25993l = rVar;
    }

    public long A(boolean z10) {
        long jMax = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.f26000s.length; i10++) {
            if (z10 || ((e) com.google.android.exoplayer2.util.a.e(this.f26005x)).f26028c[i10]) {
                jMax = Math.max(jMax, this.f26000s[i10].z());
            }
        }
        return jMax;
    }

    private boolean C() {
        return this.H != C.TIME_UNSET;
    }

    public void E() {
        if (this.L) {
            return;
        }
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f25998q)).g(this);
    }

    public void F() {
        this.F = true;
    }

    public void H() {
        if (this.L || this.f26003v || !this.f26002u || this.f26006y == null) {
            return;
        }
        for (a0 a0Var : this.f26000s) {
            if (a0Var.F() == null) {
                return;
            }
        }
        this.f25994m.d();
        int length = this.f26000s.length;
        v9.w[] wVarArr = new v9.w[length];
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            p1 p1VarE = (p1) com.google.android.exoplayer2.util.a.e(this.f26000s[i10].F());
            String str = p1VarE.f24901l;
            boolean zO = com.google.android.exoplayer2.util.w.o(str);
            boolean z10 = zO || com.google.android.exoplayer2.util.w.s(str);
            zArr[i10] = z10;
            this.f26004w = z10 | this.f26004w;
            IcyHeaders icyHeaders = this.f25999r;
            if (icyHeaders != null) {
                if (zO || this.f26001t[i10].f26025b) {
                    Metadata metadata = p1VarE.f24899j;
                    p1VarE = p1VarE.b().X(metadata == null ? new Metadata(icyHeaders) : metadata.copyWithAppendedEntries(icyHeaders)).E();
                }
                if (zO && p1VarE.f24895f == -1 && p1VarE.f24896g == -1 && icyHeaders.bitrate != -1) {
                    p1VarE = p1VarE.b().G(icyHeaders.bitrate).E();
                }
            }
            wVarArr[i10] = new v9.w(Integer.toString(i10), p1VarE.c(this.f25984c.a(p1VarE)));
        }
        this.f26005x = new e(new v9.y(wVarArr), zArr);
        this.f26003v = true;
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f25998q)).h(this);
    }

    private void I(int i10) {
        w();
        e eVar = this.f26005x;
        boolean[] zArr = eVar.f26029d;
        if (zArr[i10]) {
            return;
        }
        p1 p1VarC = eVar.f26026a.b(i10).c(0);
        this.f25986e.i(com.google.android.exoplayer2.util.w.k(p1VarC.f24901l), p1VarC, 0, null, this.G);
        zArr[i10] = true;
    }

    private void J(int i10) {
        w();
        boolean[] zArr = this.f26005x.f26027b;
        if (this.I && zArr[i10]) {
            if (this.f26000s[i10].K(false)) {
                return;
            }
            this.H = 0L;
            this.I = false;
            this.D = true;
            this.G = 0L;
            this.J = 0;
            for (a0 a0Var : this.f26000s) {
                a0Var.V();
            }
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f25998q)).g(this);
        }
    }

    public void M() {
        this.f25997p.post(new Runnable() {
            @Override
            public final void run() {
                this.f25979a.F();
            }
        });
    }

    private i9.e0 Q(d dVar) {
        int length = this.f26000s.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (dVar.equals(this.f26001t[i10])) {
                return this.f26000s[i10];
            }
        }
        a0 a0VarK = a0.k(this.f25989h, this.f25984c, this.f25987f);
        a0VarK.d0(this);
        int i11 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.f26001t, i11);
        dVarArr[length] = dVar;
        this.f26001t = (d[]) p0.k(dVarArr);
        a0[] a0VarArr = (a0[]) Arrays.copyOf(this.f26000s, i11);
        a0VarArr[length] = a0VarK;
        this.f26000s = (a0[]) p0.k(a0VarArr);
        return a0VarK;
    }

    private boolean T(boolean[] zArr, long j10) {
        int length = this.f26000s.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.f26000s[i10].Z(j10, false) && (zArr[i10] || !this.f26004w)) {
                return false;
            }
        }
        return true;
    }

    public void G(i9.b0 b0Var) {
        this.f26006y = this.f25999r == null ? b0Var : new i9.b0.b(C.TIME_UNSET);
        this.f26007z = b0Var.getDurationUs();
        boolean z10 = !this.F && b0Var.getDurationUs() == C.TIME_UNSET;
        this.A = z10;
        this.B = z10 ? 7 : 1;
        this.f25988g.p(this.f26007z, b0Var.isSeekable(), this.A);
        if (this.f26003v) {
            return;
        }
        H();
    }

    private void W() {
        a aVar = new a(this.f25982a, this.f25983b, this.f25993l, this, this.f25994m);
        if (this.f26003v) {
            com.google.android.exoplayer2.util.a.g(C());
            long j10 = this.f26007z;
            if (j10 != C.TIME_UNSET && this.H > j10) {
                this.K = true;
                this.H = C.TIME_UNSET;
                return;
            }
            aVar.h(((i9.b0) com.google.android.exoplayer2.util.a.e(this.f26006y)).getSeekPoints(this.H).f61885a.f61891b, this.H);
            for (a0 a0Var : this.f26000s) {
                a0Var.b0(this.H);
            }
            this.H = C.TIME_UNSET;
        }
        this.J = z();
        this.f25986e.A(new v9.h(aVar.f26008a, aVar.f26018k, this.f25992k.m(aVar, this, this.f25985d.a(this.B))), 1, -1, null, 0, null, aVar.f26017j, this.f26007z);
    }

    private boolean X() {
        return this.D || C();
    }

    private void w() {
        com.google.android.exoplayer2.util.a.g(this.f26003v);
        com.google.android.exoplayer2.util.a.e(this.f26005x);
        com.google.android.exoplayer2.util.a.e(this.f26006y);
    }

    private boolean x(a aVar, int i10) {
        i9.b0 b0Var;
        if (this.F || !((b0Var = this.f26006y) == null || b0Var.getDurationUs() == C.TIME_UNSET)) {
            this.J = i10;
            return true;
        }
        if (this.f26003v && !X()) {
            this.I = true;
            return false;
        }
        this.D = this.f26003v;
        this.G = 0L;
        this.J = 0;
        for (a0 a0Var : this.f26000s) {
            a0Var.V();
        }
        aVar.h(0L, 0L);
        return true;
    }

    private static Map y() {
        HashMap map = new HashMap();
        map.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(map);
    }

    private int z() {
        int iG = 0;
        for (a0 a0Var : this.f26000s) {
            iG += a0Var.G();
        }
        return iG;
    }

    i9.e0 B() {
        return Q(new d(0, true));
    }

    boolean D(int i10) {
        return !X() && this.f26000s[i10].K(this.K);
    }

    void K() throws IOException {
        this.f25992k.j(this.f25985d.a(this.B));
    }

    void L(int i10) throws IOException {
        this.f26000s[i10].N();
        K();
    }

    @Override
    public void j(a aVar, long j10, long j11, boolean z10) {
        i0 i0Var = aVar.f26010c;
        v9.h hVar = new v9.h(aVar.f26008a, aVar.f26018k, i0Var.h(), i0Var.i(), j10, j11, i0Var.f());
        this.f25985d.b(aVar.f26008a);
        this.f25986e.r(hVar, 1, -1, null, 0, null, aVar.f26017j, this.f26007z);
        if (z10) {
            return;
        }
        for (a0 a0Var : this.f26000s) {
            a0Var.V();
        }
        if (this.E > 0) {
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f25998q)).g(this);
        }
    }

    @Override
    public void l(a aVar, long j10, long j11) {
        i9.b0 b0Var;
        if (this.f26007z == C.TIME_UNSET && (b0Var = this.f26006y) != null) {
            boolean zIsSeekable = b0Var.isSeekable();
            long jA = A(true);
            long j12 = jA == Long.MIN_VALUE ? 0L : jA + 10000;
            this.f26007z = j12;
            this.f25988g.p(j12, zIsSeekable, this.A);
        }
        i0 i0Var = aVar.f26010c;
        v9.h hVar = new v9.h(aVar.f26008a, aVar.f26018k, i0Var.h(), i0Var.i(), j10, j11, i0Var.f());
        this.f25985d.b(aVar.f26008a);
        this.f25986e.u(hVar, 1, -1, null, 0, null, aVar.f26017j, this.f26007z);
        this.K = true;
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f25998q)).g(this);
    }

    @Override
    public Loader.c n(a aVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c cVarG;
        i0 i0Var = aVar.f26010c;
        v9.h hVar = new v9.h(aVar.f26008a, aVar.f26018k, i0Var.h(), i0Var.i(), j10, j11, i0Var.f());
        long jC = this.f25985d.c(new com.google.android.exoplayer2.upstream.z.c(hVar, new v9.i(1, -1, null, 0, null, p0.e1(aVar.f26017j), p0.e1(this.f26007z)), iOException, i10));
        if (jC == C.TIME_UNSET) {
            cVarG = Loader.f26475g;
        } else {
            int iZ = z();
            cVarG = x(aVar, iZ) ? Loader.g(iZ > this.J, jC) : Loader.f26474f;
        }
        boolean zC = cVarG.c();
        this.f25986e.w(hVar, 1, -1, null, 0, null, aVar.f26017j, this.f26007z, iOException, !zC);
        if (!zC) {
            this.f25985d.b(aVar.f26008a);
        }
        return cVarG;
    }

    int R(int i10, q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (X()) {
            return -3;
        }
        I(i10);
        int iS = this.f26000s[i10].S(q1Var, decoderInputBuffer, i11, this.K);
        if (iS == -3) {
            J(i10);
        }
        return iS;
    }

    public void S() {
        if (this.f26003v) {
            for (a0 a0Var : this.f26000s) {
                a0Var.R();
            }
        }
        this.f25992k.l(this);
        this.f25997p.removeCallbacksAndMessages(null);
        this.f25998q = null;
        this.L = true;
    }

    int V(int i10, long j10) {
        if (X()) {
            return 0;
        }
        I(i10);
        a0 a0Var = this.f26000s[i10];
        int iE = a0Var.E(j10, this.K);
        a0Var.e0(iE);
        if (iE == 0) {
            J(i10);
        }
        return iE;
    }

    @Override
    public void a(p1 p1Var) {
        this.f25997p.post(this.f25995n);
    }

    @Override
    public long b(long j10, d3 d3Var) {
        w();
        if (!this.f26006y.isSeekable()) {
            return 0L;
        }
        i9.b0.a seekPoints = this.f26006y.getSeekPoints(j10);
        return d3Var.a(j10, seekPoints.f61885a.f61890a, seekPoints.f61886b.f61890a);
    }

    @Override
    public boolean continueLoading(long j10) {
        if (this.K || this.f25992k.h() || this.I) {
            return false;
        }
        if (this.f26003v && this.E == 0) {
            return false;
        }
        boolean zF = this.f25994m.f();
        if (this.f25992k.i()) {
            return zF;
        }
        W();
        return true;
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        w();
        if (C()) {
            return;
        }
        boolean[] zArr = this.f26005x.f26028c;
        int length = this.f26000s.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f26000s[i10].q(j10, z10, zArr[i10]);
        }
    }

    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        na.s sVar;
        w();
        e eVar = this.f26005x;
        v9.y yVar = eVar.f26026a;
        boolean[] zArr3 = eVar.f26028c;
        int i10 = this.E;
        int i11 = 0;
        for (int i12 = 0; i12 < sVarArr.length; i12++) {
            v9.s sVar2 = sVarArr2[i12];
            if (sVar2 != null && (sVarArr[i12] == null || !zArr[i12])) {
                int i13 = ((c) sVar2).f26022a;
                com.google.android.exoplayer2.util.a.g(zArr3[i13]);
                this.E--;
                zArr3[i13] = false;
                sVarArr2[i12] = null;
            }
        }
        boolean z10 = !this.C ? j10 == 0 : i10 != 0;
        for (int i14 = 0; i14 < sVarArr.length; i14++) {
            if (sVarArr2[i14] == null && (sVar = sVarArr[i14]) != null) {
                com.google.android.exoplayer2.util.a.g(sVar.length() == 1);
                com.google.android.exoplayer2.util.a.g(sVar.getIndexInTrackGroup(0) == 0);
                int iC = yVar.c(sVar.getTrackGroup());
                com.google.android.exoplayer2.util.a.g(!zArr3[iC]);
                this.E++;
                zArr3[iC] = true;
                sVarArr2[i14] = new c(iC);
                zArr2[i14] = true;
                if (!z10) {
                    a0 a0Var = this.f26000s[iC];
                    z10 = (a0Var.Z(j10, true) || a0Var.C() == 0) ? false : true;
                }
            }
        }
        if (this.E == 0) {
            this.I = false;
            this.D = false;
            if (this.f25992k.i()) {
                a0[] a0VarArr = this.f26000s;
                int length = a0VarArr.length;
                while (i11 < length) {
                    a0VarArr[i11].r();
                    i11++;
                }
                this.f25992k.e();
            } else {
                a0[] a0VarArr2 = this.f26000s;
                int length2 = a0VarArr2.length;
                while (i11 < length2) {
                    a0VarArr2[i11].V();
                    i11++;
                }
            }
        } else if (z10) {
            j10 = seekToUs(j10);
            while (i11 < sVarArr2.length) {
                if (sVarArr2[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.C = true;
        return j10;
    }

    @Override
    public void endTracks() {
        this.f26002u = true;
        this.f25997p.post(this.f25995n);
    }

    @Override
    public void f(n.a aVar, long j10) {
        this.f25998q = aVar;
        this.f25994m.f();
        W();
    }

    @Override
    public void g(final i9.b0 b0Var) {
        this.f25997p.post(new Runnable() {
            @Override
            public final void run() {
                this.f25980a.G(b0Var);
            }
        });
    }

    @Override
    public long getBufferedPositionUs() {
        long jA;
        w();
        if (this.K || this.E == 0) {
            return Long.MIN_VALUE;
        }
        if (C()) {
            return this.H;
        }
        if (this.f26004w) {
            int length = this.f26000s.length;
            jA = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                e eVar = this.f26005x;
                if (eVar.f26027b[i10] && eVar.f26028c[i10] && !this.f26000s[i10].J()) {
                    jA = Math.min(jA, this.f26000s[i10].z());
                }
            }
        } else {
            jA = Long.MAX_VALUE;
        }
        if (jA == Long.MAX_VALUE) {
            jA = A(false);
        }
        return jA == Long.MIN_VALUE ? this.G : jA;
    }

    @Override
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override
    public v9.y getTrackGroups() {
        w();
        return this.f26005x.f26026a;
    }

    @Override
    public boolean isLoading() {
        return this.f25992k.i() && this.f25994m.e();
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        K();
        if (this.K && !this.f26003v) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override
    public void onLoaderReleased() {
        for (a0 a0Var : this.f26000s) {
            a0Var.T();
        }
        this.f25993l.release();
    }

    @Override
    public long readDiscontinuity() {
        if (!this.D) {
            return C.TIME_UNSET;
        }
        if (!this.K && z() <= this.J) {
            return C.TIME_UNSET;
        }
        this.D = false;
        return this.G;
    }

    @Override
    public long seekToUs(long j10) {
        w();
        boolean[] zArr = this.f26005x.f26027b;
        if (!this.f26006y.isSeekable()) {
            j10 = 0;
        }
        int i10 = 0;
        this.D = false;
        this.G = j10;
        if (C()) {
            this.H = j10;
            return j10;
        }
        if (this.B != 7 && T(zArr, j10)) {
            return j10;
        }
        this.I = false;
        this.H = j10;
        this.K = false;
        if (this.f25992k.i()) {
            a0[] a0VarArr = this.f26000s;
            int length = a0VarArr.length;
            while (i10 < length) {
                a0VarArr[i10].r();
                i10++;
            }
            this.f25992k.e();
        } else {
            this.f25992k.f();
            a0[] a0VarArr2 = this.f26000s;
            int length2 = a0VarArr2.length;
            while (i10 < length2) {
                a0VarArr2[i10].V();
                i10++;
            }
        }
        return j10;
    }

    @Override
    public i9.e0 track(int i10, int i11) {
        return Q(new d(i10, false));
    }

    @Override
    public void reevaluateBuffer(long j10) {
    }
}
