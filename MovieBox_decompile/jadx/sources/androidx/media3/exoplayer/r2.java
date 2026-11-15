package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

final class r2 implements Handler.Callback, androidx.media3.exoplayer.source.q.a, i2.e0.a, q3.d, n.a, t3.a, androidx.media3.exoplayer.h.a {

    private static final long f12176e0 = androidx.media3.common.util.a1.y1(10000);
    private final boolean A;
    private final androidx.media3.exoplayer.h B;
    private c4 C;
    private r3 D;
    private e E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean K;
    private int L;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean P;
    private int Q;
    private h R;
    private long S;
    private long T;
    private int U;
    private boolean V;
    private ExoPlaybackException W;
    private long X;
    private ExoPlayer.c Z;

    private final a4[] f12177a;

    private final y3[] f12179b;

    private final boolean[] f12181c;

    private boolean f12182c0;

    private final i2.e0 f12183d;

    private final i2.f0 f12185e;

    private final u2 f12186f;

    private final androidx.media3.exoplayer.upstream.e f12187g;

    private final androidx.media3.common.util.p f12188h;

    private final s3 f12189i;

    private final Looper f12190j;

    private final androidx.media3.common.e0.c f12191k;

    private final androidx.media3.common.e0.b f12192l;

    private final long f12193m;

    private final boolean f12194n;

    private final n f12195o;

    private final ArrayList f12196p;

    private final androidx.media3.common.util.i f12197q;

    private final f f12198r;

    private final b3 f12199s;

    private final q3 f12200t;

    private final t2 f12201u;

    private final long f12202v;

    private final x1.f4 f12203w;

    private final boolean f12204x;

    private final x1.a f12205y;

    private final androidx.media3.common.util.p f12206z;

    private long f12180b0 = C.TIME_UNSET;

    private float f12184d0 = 1.0f;
    private long Y = C.TIME_UNSET;
    private long J = C.TIME_UNSET;

    private androidx.media3.common.e0 f12178a0 = androidx.media3.common.e0.f9613a;

    class a implements w3.a {
        a() {
        }

        @Override
        public void a() {
            r2.this.O = true;
        }

        @Override
        public void b() {
            if (r2.this.f12204x || r2.this.P) {
                r2.this.f12188h.sendEmptyMessage(2);
            }
        }
    }

    private static final class b {

        private final List f12208a;

        private final f2.v f12209b;

        private final int f12210c;

        private final long f12211d;

        b(List list, f2.v vVar, int i10, long j10, a aVar) {
            this(list, vVar, i10, j10);
        }

        private b(List list, f2.v vVar, int i10, long j10) {
            this.f12208a = list;
            this.f12209b = vVar;
            this.f12210c = i10;
            this.f12211d = j10;
        }
    }

    private static class c {
    }

    private static final class d implements Comparable {

        public final t3 f12212a;

        public int f12213b;

        public long f12214c;

        public Object f12215d;

        public d(t3 t3Var) {
            this.f12212a = t3Var;
        }

        @Override
        public int compareTo(d dVar) {
            Object obj = this.f12215d;
            if ((obj == null) != (dVar.f12215d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i10 = this.f12213b - dVar.f12213b;
            return i10 != 0 ? i10 : androidx.media3.common.util.a1.n(this.f12214c, dVar.f12214c);
        }

        public void b(int i10, long j10, Object obj) {
            this.f12213b = i10;
            this.f12214c = j10;
            this.f12215d = obj;
        }
    }

    public static final class e {

        private boolean f12216a;

        public r3 f12217b;

        public int f12218c;

        public boolean f12219d;

        public int f12220e;

        public e(r3 r3Var) {
            this.f12217b = r3Var;
        }

        public void b(int i10) {
            this.f12216a |= i10 > 0;
            this.f12218c += i10;
        }

        public void c(r3 r3Var) {
            this.f12216a |= this.f12217b != r3Var;
            this.f12217b = r3Var;
        }

        public void d(int i10) {
            if (this.f12219d && this.f12220e != 5) {
                androidx.media3.common.util.a.a(i10 == 5);
                return;
            }
            this.f12216a = true;
            this.f12219d = true;
            this.f12220e = i10;
        }
    }

    public interface f {
        void a(e eVar);
    }

    private static final class g {

        public final androidx.media3.exoplayer.source.r.b f12221a;

        public final long f12222b;

        public final long f12223c;

        public final boolean f12224d;

        public final boolean f12225e;

        public final boolean f12226f;

        public g(androidx.media3.exoplayer.source.r.b bVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
            this.f12221a = bVar;
            this.f12222b = j10;
            this.f12223c = j11;
            this.f12224d = z10;
            this.f12225e = z11;
            this.f12226f = z12;
        }
    }

    private static final class h {

        public final androidx.media3.common.e0 f12227a;

        public final int f12228b;

        public final long f12229c;

        public h(androidx.media3.common.e0 e0Var, int i10, long j10) {
            this.f12227a = e0Var;
            this.f12228b = i10;
            this.f12229c = j10;
        }
    }

    public r2(Context context, w3[] w3VarArr, w3[] w3VarArr2, i2.e0 e0Var, i2.f0 f0Var, u2 u2Var, androidx.media3.exoplayer.upstream.e eVar, int i10, boolean z10, x1.a aVar, c4 c4Var, t2 t2Var, long j10, boolean z11, boolean z12, Looper looper, androidx.media3.common.util.i iVar, f fVar, x1.f4 f4Var, s3 s3Var, ExoPlayer.c cVar) {
        this.f12198r = fVar;
        this.f12183d = e0Var;
        this.f12185e = f0Var;
        this.f12186f = u2Var;
        this.f12187g = eVar;
        this.L = i10;
        this.M = z10;
        this.C = c4Var;
        this.f12201u = t2Var;
        this.f12202v = j10;
        this.X = j10;
        this.G = z11;
        this.f12204x = z12;
        this.f12197q = iVar;
        this.f12203w = f4Var;
        this.Z = cVar;
        this.f12205y = aVar;
        this.f12193m = u2Var.i(f4Var);
        this.f12194n = u2Var.h(f4Var);
        r3 r3VarK = r3.k(f0Var);
        this.D = r3VarK;
        this.E = new e(r3VarK);
        this.f12179b = new y3[w3VarArr.length];
        this.f12181c = new boolean[w3VarArr.length];
        y3.a aVarD = e0Var.d();
        this.f12177a = new a4[w3VarArr.length];
        boolean z13 = false;
        for (int i11 = 0; i11 < w3VarArr.length; i11++) {
            w3VarArr[i11].i(i11, f4Var, iVar);
            this.f12179b[i11] = w3VarArr[i11].getCapabilities();
            if (aVarD != null) {
                this.f12179b[i11].o(aVarD);
            }
            w3 w3Var = w3VarArr2[i11];
            if (w3Var != null) {
                w3Var.i(w3VarArr.length + i11, f4Var, iVar);
                z13 = true;
            }
            this.f12177a[i11] = new a4(w3VarArr[i11], w3VarArr2[i11], i11);
        }
        this.A = z13;
        this.f12195o = new n(this, iVar);
        this.f12196p = new ArrayList();
        this.f12191k = new androidx.media3.common.e0.c();
        this.f12192l = new androidx.media3.common.e0.b();
        e0Var.e(this, eVar);
        this.V = true;
        androidx.media3.common.util.p pVarCreateHandler = iVar.createHandler(looper, null);
        this.f12206z = pVarCreateHandler;
        this.f12199s = new b3(aVar, pVarCreateHandler, new y2.a() {
            @Override
            public final y2 a(z2 z2Var, long j11) {
                return this.f11987a.v(z2Var, j11);
            }
        }, cVar);
        this.f12200t = new q3(this, aVar, pVarCreateHandler, f4Var);
        s3 s3Var2 = s3Var == null ? new s3() : s3Var;
        this.f12189i = s3Var2;
        Looper looperA = s3Var2.a();
        this.f12190j = looperA;
        this.f12188h = iVar.createHandler(looperA, this);
        this.B = new androidx.media3.exoplayer.h(context, looperA, this);
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0188  */
    private void A() throws ExoPlaybackException {
        boolean z10;
        boolean z11;
        int i10;
        long jUptimeMillis = this.f12197q.uptimeMillis();
        this.f12188h.removeMessages(2);
        O1();
        int i11 = this.D.f12235e;
        if (i11 == 1 || i11 == 4) {
            return;
        }
        y2 y2VarU = this.f12199s.u();
        if (y2VarU == null) {
            T0(jUptimeMillis);
            return;
        }
        androidx.media3.common.util.q0.a("doSomeWork");
        T1();
        if (y2VarU.f13061f) {
            this.T = androidx.media3.common.util.a1.R0(this.f12197q.elapsedRealtime());
            y2VarU.f13056a.discardBuffer(this.D.f12249s - this.f12193m, this.f12194n);
            z10 = true;
            z11 = true;
            int i12 = 0;
            while (true) {
                a4[] a4VarArr = this.f12177a;
                if (i12 >= a4VarArr.length) {
                    break;
                }
                a4 a4Var = a4VarArr[i12];
                if (a4Var.h() == 0) {
                    m0(i12, false);
                } else {
                    a4Var.I(this.S, this.T);
                    z10 = z10 && a4Var.t();
                    boolean zA = a4Var.a(y2VarU);
                    m0(i12, zA);
                    z11 = z11 && zA;
                    if (!zA) {
                        l0(i12);
                    }
                }
                i12++;
            }
        } else {
            y2VarU.f13056a.maybeThrowPrepareError();
            z10 = true;
            z11 = true;
        }
        long j10 = y2VarU.f13063h.f13080e;
        boolean z12 = z10 && y2VarU.f13061f && (j10 == C.TIME_UNSET || j10 <= this.D.f12249s);
        if (z12 && this.H) {
            this.H = false;
            m1(false, this.D.f12244n, false, 5);
        }
        if (z12 && y2VarU.f13063h.f13085j) {
            w1(4);
            J1();
        } else if (this.D.f12235e == 2 && E1(z11)) {
            w1(3);
            this.W = null;
            if (D1()) {
                W1(false, false);
                this.f12195o.f();
                G1();
            }
        } else if (this.D.f12235e == 3 && (this.Q != 0 ? !z11 : !b0())) {
            W1(D1(), false);
            w1(2);
            if (this.I) {
                z0();
                this.f12201u.c();
            }
            J1();
        }
        if (this.D.f12235e == 2) {
            int i13 = 0;
            while (true) {
                a4[] a4VarArr2 = this.f12177a;
                if (i13 >= a4VarArr2.length) {
                    break;
                }
                if (a4VarArr2[i13].w(y2VarU)) {
                    l0(i13);
                }
                i13++;
            }
            r3 r3Var = this.D;
            if (r3Var.f12237g || r3Var.f12248r >= 500000 || !a0(this.f12199s.n()) || !D1()) {
                this.Y = C.TIME_UNSET;
            } else if (this.Y == C.TIME_UNSET) {
                this.Y = this.f12197q.elapsedRealtime();
            } else if (this.f12197q.elapsedRealtime() - this.Y >= 4000) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.Y = C.TIME_UNSET;
        }
        boolean z13 = D1() && this.D.f12235e == 3;
        boolean z14 = this.P && this.O && z13;
        r3 r3Var2 = this.D;
        if (r3Var2.f12246p != z14) {
            this.D = r3Var2.i(z14);
        }
        this.O = false;
        if (!z14 && (i10 = this.D.f12235e) != 4 && (z13 || i10 == 2 || (i10 == 3 && this.Q != 0))) {
            T0(jUptimeMillis);
        }
        androidx.media3.common.util.q0.b();
    }

    private void A1(float f10) {
        this.f12184d0 = f10;
        float f11 = f10 * this.B.f();
        for (a4 a4Var : this.f12177a) {
            a4Var.T(f11);
        }
    }

    private void B(y2 y2Var, int i10, boolean z10, long j10) throws ExoPlaybackException {
        a4 a4Var = this.f12177a[i10];
        if (a4Var.x()) {
            return;
        }
        boolean z11 = y2Var == this.f12199s.u();
        i2.f0 f0VarP = y2Var.p();
        z3 z3Var = f0VarP.f61645b[i10];
        i2.z zVar = f0VarP.f61646c[i10];
        boolean z12 = D1() && this.D.f12235e == 3;
        boolean z13 = !z10 && z12;
        this.Q++;
        a4Var.e(z3Var, zVar, y2Var.f13058c[i10], this.S, z13, z11, j10, y2Var.m(), y2Var.f13063h.f13076a, this.f12195o);
        a4Var.n(11, new a(), y2Var);
        if (z12 && z11) {
            a4Var.U();
        }
    }

    private boolean B1() {
        y2 y2VarU;
        y2 y2VarK;
        return D1() && !this.H && (y2VarU = this.f12199s.u()) != null && (y2VarK = y2VarU.k()) != null && this.S >= y2VarK.n() && y2VarK.f13064i;
    }

    private void C() throws ExoPlaybackException {
        D(new boolean[this.f12177a.length], this.f12199s.y().n());
    }

    private void C0() {
        this.E.b(1);
        K0(false, false, false, true);
        this.f12186f.f(this.f12203w);
        w1(this.D.f12231a.q() ? 4 : 2);
        Q1();
        this.f12200t.w(this.f12187g.b());
        this.f12188h.sendEmptyMessage(2);
    }

    private boolean C1() {
        if (!a0(this.f12199s.n())) {
            return false;
        }
        y2 y2VarN = this.f12199s.n();
        long jM = M(y2VarN.l());
        u2.a aVar = new u2.a(this.f12203w, this.D.f12231a, y2VarN.f13063h.f13076a, y2VarN == this.f12199s.u() ? y2VarN.C(this.S) : y2VarN.C(this.S) - y2VarN.f13063h.f13077b, jM, this.f12195o.getPlaybackParameters().f10254a, this.D.f12242l, this.I, F1(this.D.f12231a, y2VarN.f13063h.f13076a) ? this.f12201u.b() : C.TIME_UNSET, this.J);
        boolean zG = this.f12186f.g(aVar);
        y2 y2VarU = this.f12199s.u();
        if (zG || !y2VarU.f13061f || jM >= 500000) {
            return zG;
        }
        if (this.f12193m <= 0 && !this.f12194n) {
            return zG;
        }
        y2VarU.f13056a.discardBuffer(this.D.f12249s, false);
        return this.f12186f.g(aVar);
    }

    private void D(boolean[] zArr, long j10) throws ExoPlaybackException {
        y2 y2VarY = this.f12199s.y();
        i2.f0 f0VarP = y2VarY.p();
        for (int i10 = 0; i10 < this.f12177a.length; i10++) {
            if (!f0VarP.c(i10)) {
                this.f12177a[i10].L();
            }
        }
        for (int i11 = 0; i11 < this.f12177a.length; i11++) {
            if (f0VarP.c(i11) && !this.f12177a[i11].w(y2VarY)) {
                B(y2VarY, i11, zArr[i11], j10);
            }
        }
    }

    private boolean D1() {
        r3 r3Var = this.D;
        return r3Var.f12242l && r3Var.f12244n == 0;
    }

    private void E0() {
        try {
            K0(true, false, true, false);
            F0();
            this.f12186f.d(this.f12203w);
            this.B.i();
            this.f12183d.j();
            w1(1);
            this.f12189i.b();
            synchronized (this) {
                this.F = true;
                notifyAll();
            }
        } catch (Throwable th2) {
            this.f12189i.b();
            synchronized (this) {
                this.F = true;
                notifyAll();
                throw th2;
            }
        }
    }

    private boolean E1(boolean z10) {
        if (this.Q == 0) {
            return b0();
        }
        boolean z11 = false;
        if (!z10) {
            return false;
        }
        if (!this.D.f12237g) {
            return true;
        }
        y2 y2VarU = this.f12199s.u();
        long jB = F1(this.D.f12231a, y2VarU.f13063h.f13076a) ? this.f12201u.b() : C.TIME_UNSET;
        y2 y2VarN = this.f12199s.n();
        boolean z12 = y2VarN.s() && y2VarN.f13063h.f13085j;
        if (y2VarN.f13063h.f13076a.b() && !y2VarN.f13061f) {
            z11 = true;
        }
        if (z12 || z11) {
            return true;
        }
        return this.f12186f.a(new u2.a(this.f12203w, this.D.f12231a, y2VarU.f13063h.f13076a, y2VarU.C(this.S), M(y2VarN.j()), this.f12195o.getPlaybackParameters().f10254a, this.D.f12242l, this.I, jB, this.J));
    }

    private ImmutableList F(i2.z[] zVarArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z10 = false;
        for (i2.z zVar : zVarArr) {
            if (zVar != null) {
                androidx.media3.common.x xVar = zVar.getFormat(0).f9846l;
                if (xVar == null) {
                    aVar.a(new androidx.media3.common.x(new androidx.media3.common.x.a[0]));
                } else {
                    aVar.a(xVar);
                    z10 = true;
                }
            }
        }
        return z10 ? aVar.e() : ImmutableList.of();
    }

    private void F0() {
        for (int i10 = 0; i10 < this.f12177a.length; i10++) {
            this.f12179b[i10].f();
            this.f12177a[i10].H();
        }
    }

    private boolean F1(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar) {
        if (bVar.b() || e0Var.q()) {
            return false;
        }
        e0Var.n(e0Var.h(bVar.f12571a, this.f12192l).f9624c, this.f12191k);
        if (!this.f12191k.f()) {
            return false;
        }
        androidx.media3.common.e0.c cVar = this.f12191k;
        return cVar.f9647i && cVar.f9644f != C.TIME_UNSET;
    }

    private long G() {
        r3 r3Var = this.D;
        return H(r3Var.f12231a, r3Var.f12232b.f12571a, r3Var.f12249s);
    }

    private void G0(int i10, int i11, f2.v vVar) throws Throwable {
        this.E.b(1);
        T(this.f12200t.A(i10, i11, vVar), false);
    }

    private void G1() {
        y2 y2VarU = this.f12199s.u();
        if (y2VarU == null) {
            return;
        }
        i2.f0 f0VarP = y2VarU.p();
        for (int i10 = 0; i10 < this.f12177a.length; i10++) {
            if (f0VarP.c(i10)) {
                this.f12177a[i10].U();
            }
        }
    }

    private long H(androidx.media3.common.e0 e0Var, Object obj, long j10) {
        e0Var.n(e0Var.h(obj, this.f12192l).f9624c, this.f12191k);
        androidx.media3.common.e0.c cVar = this.f12191k;
        if (cVar.f9644f != C.TIME_UNSET && cVar.f()) {
            androidx.media3.common.e0.c cVar2 = this.f12191k;
            if (cVar2.f9647i) {
                return androidx.media3.common.util.a1.R0(cVar2.a() - this.f12191k.f9644f) - (j10 + this.f12192l.o());
            }
        }
        return C.TIME_UNSET;
    }

    private long I(y2 y2Var) {
        if (y2Var == null) {
            return 0L;
        }
        long jM = y2Var.m();
        if (!y2Var.f13061f) {
            return jM;
        }
        int i10 = 0;
        while (true) {
            a4[] a4VarArr = this.f12177a;
            if (i10 >= a4VarArr.length) {
                return jM;
            }
            if (a4VarArr[i10].w(y2Var)) {
                long jK = this.f12177a[i10].k(y2Var);
                if (jK == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jM = Math.max(jK, jM);
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void I0() throws ExoPlaybackException {
        boolean z10;
        float f10 = this.f12195o.getPlaybackParameters().f10254a;
        y2 y2VarU = this.f12199s.u();
        y2 y2VarY = this.f12199s.y();
        int i10 = 1;
        i2.f0 f0Var = null;
        boolean z11 = true;
        while (y2VarU != null && y2VarU.f13061f) {
            r3 r3Var = this.D;
            i2.f0 f0VarZ = y2VarU.z(f10, r3Var.f12231a, r3Var.f12242l);
            if (y2VarU == this.f12199s.u()) {
                f0Var = f0VarZ;
            }
            if (!f0VarZ.a(y2VarU.p())) {
                if (z11) {
                    y2 y2VarU2 = this.f12199s.u();
                    boolean z12 = (this.f12199s.O(y2VarU2) & i10) != 0 ? i10 : false;
                    boolean[] zArr = new boolean[this.f12177a.length];
                    long jB = y2VarU2.b((i2.f0) androidx.media3.common.util.a.e(f0Var), this.D.f12249s, z12, zArr);
                    r3 r3Var2 = this.D;
                    int i11 = (r3Var2.f12235e == 4 || jB == r3Var2.f12249s) ? 0 : i10;
                    r3 r3Var3 = this.D;
                    this.D = X(r3Var3.f12232b, jB, r3Var3.f12233c, r3Var3.f12234d, i11, 5);
                    if (i11 != 0) {
                        M0(jB);
                    }
                    x();
                    boolean[] zArr2 = new boolean[this.f12177a.length];
                    int i12 = 0;
                    while (true) {
                        a4[] a4VarArr = this.f12177a;
                        if (i12 >= a4VarArr.length) {
                            break;
                        }
                        int iH = a4VarArr[i12].h();
                        zArr2[i12] = this.f12177a[i12].x();
                        this.f12177a[i12].B(y2VarU2.f13058c[i12], this.f12195o, this.S, zArr[i12]);
                        if (iH - this.f12177a[i12].h() > 0) {
                            m0(i12, false);
                        }
                        this.Q -= iH - this.f12177a[i12].h();
                        i12++;
                    }
                    D(zArr2, this.S);
                    y2VarU2.f13064i = true;
                    z10 = true;
                } else {
                    this.f12199s.O(y2VarU);
                    if (y2VarU.f13061f) {
                        long jMax = Math.max(y2VarU.f13063h.f13077b, y2VarU.C(this.S));
                        if (this.A && r() && this.f12199s.x() == y2VarU) {
                            x();
                        }
                        y2VarU.a(f0VarZ, jMax, false);
                    }
                    z10 = true;
                }
                R(z10);
                if (this.D.f12235e != 4) {
                    g0();
                    T1();
                    this.f12188h.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            int i13 = i10;
            if (y2VarU == y2VarY) {
                z11 = false;
            }
            y2VarU = y2VarU.k();
            i10 = i13;
        }
    }

    private void I1(boolean z10, boolean z11) {
        K0(z10 || !this.N, false, true, false);
        this.E.b(z11 ? 1 : 0);
        this.f12186f.b(this.f12203w);
        this.B.o(this.D.f12242l, 1);
        w1(1);
    }

    private Pair J(androidx.media3.common.e0 e0Var) {
        if (e0Var.q()) {
            return Pair.create(r3.l(), 0L);
        }
        Pair pairJ = e0Var.j(this.f12191k, this.f12192l, e0Var.a(this.M), C.TIME_UNSET);
        androidx.media3.exoplayer.source.r.b bVarR = this.f12199s.R(e0Var, pairJ.first, 0L);
        long jLongValue = ((Long) pairJ.second).longValue();
        if (bVarR.b()) {
            e0Var.h(bVarR.f12571a, this.f12192l);
            jLongValue = bVarR.f12573c == this.f12192l.l(bVarR.f12572b) ? this.f12192l.g() : 0L;
        }
        return Pair.create(bVarR, Long.valueOf(jLongValue));
    }

    private void J0() throws ExoPlaybackException {
        I0();
        V0(true);
    }

    private void J1() {
        this.f12195o.g();
        for (a4 a4Var : this.f12177a) {
            a4Var.W();
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0093 A[PHI: r2 r6 r8
      0x0093: PHI (r2v2 androidx.media3.exoplayer.source.r$b) = (r2v1 androidx.media3.exoplayer.source.r$b), (r2v11 androidx.media3.exoplayer.source.r$b) binds: [B:25:0x0068, B:27:0x008d] A[DONT_GENERATE, DONT_INLINE]
      0x0093: PHI (r6v3 long) = (r6v2 long), (r6v10 long) binds: [B:25:0x0068, B:27:0x008d] A[DONT_GENERATE, DONT_INLINE]
      0x0093: PHI (r8v2 long) = (r8v1 long), (r8v5 long) binds: [B:25:0x0068, B:27:0x008d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00db A[PHI: r0
      0x00db: PHI (r0v11 androidx.media3.common.e0) = 
      (r0v10 androidx.media3.common.e0)
      (r0v10 androidx.media3.common.e0)
      (r0v16 androidx.media3.common.e0)
      (r0v16 androidx.media3.common.e0)
     binds: [B:31:0x00a0, B:33:0x00a4, B:35:0x00b5, B:37:0x00cc] A[DONT_GENERATE, DONT_INLINE]] */
    private void K0(boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        androidx.media3.common.e0 e0Var;
        androidx.media3.exoplayer.source.r.b bVar;
        this.f12188h.removeMessages(2);
        this.W = null;
        W1(false, true);
        this.f12195o.g();
        this.S = 1000000000000L;
        try {
            z();
        } catch (ExoPlaybackException | RuntimeException e10) {
            androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Disable failed.", e10);
        }
        if (z10) {
            for (a4 a4Var : this.f12177a) {
                try {
                    a4Var.L();
                } catch (RuntimeException e11) {
                    androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Reset failed.", e11);
                }
            }
        }
        this.Q = 0;
        r3 r3Var = this.D;
        androidx.media3.exoplayer.source.r.b bVar2 = r3Var.f12232b;
        long jLongValue = r3Var.f12249s;
        long j10 = (this.D.f12232b.b() || c0(this.D, this.f12192l)) ? this.D.f12233c : this.D.f12249s;
        if (z11) {
            this.R = null;
            Pair pairJ = J(this.D.f12231a);
            bVar2 = (androidx.media3.exoplayer.source.r.b) pairJ.first;
            jLongValue = ((Long) pairJ.second).longValue();
            boolean zEquals = bVar2.equals(this.D.f12232b);
            j10 = C.TIME_UNSET;
            z14 = zEquals ? false : true;
        }
        long j11 = jLongValue;
        long j12 = j10;
        this.f12199s.g();
        this.K = false;
        androidx.media3.common.e0 e0VarE = this.D.f12231a;
        if (z12 && (e0VarE instanceof u3)) {
            e0VarE = ((u3) e0VarE).E(this.f12200t.q());
            if (bVar2.f12572b != -1) {
                e0VarE.h(bVar2.f12571a, this.f12192l);
                if (e0VarE.n(this.f12192l.f9624c, this.f12191k).f()) {
                    e0Var = e0VarE;
                    bVar = new androidx.media3.exoplayer.source.r.b(bVar2.f12571a, bVar2.f12574d);
                } else {
                    e0Var = e0VarE;
                    bVar = bVar2;
                }
            } else {
                e0Var = e0VarE;
                bVar = bVar2;
            }
        } else {
            e0Var = e0VarE;
            bVar = bVar2;
        }
        r3 r3Var2 = this.D;
        int i10 = r3Var2.f12235e;
        ExoPlaybackException exoPlaybackException = z13 ? null : r3Var2.f12236f;
        f2.z zVar = z14 ? f2.z.f59966d : r3Var2.f12238h;
        i2.f0 f0Var = z14 ? this.f12185e : r3Var2.f12239i;
        List listOf = z14 ? ImmutableList.of() : r3Var2.f12240j;
        r3 r3Var3 = this.D;
        this.D = new r3(e0Var, bVar, j12, j11, i10, exoPlaybackException, false, zVar, f0Var, listOf, bVar, r3Var3.f12242l, r3Var3.f12243m, r3Var3.f12244n, r3Var3.f12245o, j11, 0L, j11, 0L, false);
        if (z12) {
            this.f12199s.N();
            this.f12200t.y();
        }
    }

    private void K1() {
        y2 y2VarN = this.f12199s.n();
        boolean z10 = this.K || (y2VarN != null && y2VarN.f13056a.isLoading());
        r3 r3Var = this.D;
        if (z10 != r3Var.f12237g) {
            this.D = r3Var.b(z10);
        }
    }

    private long L() {
        return M(this.D.f12247q);
    }

    private void L0() {
        y2 y2VarU = this.f12199s.u();
        this.H = y2VarU != null && y2VarU.f13063h.f13084i && this.G;
    }

    private void L1(androidx.media3.exoplayer.source.r.b bVar, f2.z zVar, i2.f0 f0Var) {
        y2 y2Var = (y2) androidx.media3.common.util.a.e(this.f12199s.n());
        this.f12186f.c(new u2.a(this.f12203w, this.D.f12231a, bVar, y2Var == this.f12199s.u() ? y2Var.C(this.S) : y2Var.C(this.S) - y2Var.f13063h.f13077b, M(y2Var.j()), this.f12195o.getPlaybackParameters().f10254a, this.D.f12242l, this.I, F1(this.D.f12231a, y2Var.f13063h.f13076a) ? this.f12201u.b() : C.TIME_UNSET, this.J), zVar, f0Var.f61646c);
    }

    private long M(long j10) {
        y2 y2VarN = this.f12199s.n();
        if (y2VarN == null) {
            return 0L;
        }
        return Math.max(0L, j10 - y2VarN.C(this.S));
    }

    private void M0(long j10) {
        y2 y2VarU = this.f12199s.u();
        long jD = y2VarU == null ? j10 + 1000000000000L : y2VarU.D(j10);
        this.S = jD;
        this.f12195o.d(jD);
        for (a4 a4Var : this.f12177a) {
            a4Var.M(y2VarU, this.S);
        }
        x0();
    }

    private void N(int i10) {
        r3 r3Var = this.D;
        S1(r3Var.f12242l, i10, r3Var.f12244n, r3Var.f12243m);
    }

    private static void N0(androidx.media3.common.e0 e0Var, d dVar, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        int i10 = e0Var.n(e0Var.h(dVar.f12215d, bVar).f9624c, cVar).f9653o;
        Object obj = e0Var.g(i10, bVar, true).f9623b;
        long j10 = bVar.f9625d;
        dVar.b(i10, j10 != C.TIME_UNSET ? j10 - 1 : Long.MAX_VALUE, obj);
    }

    private void N1(int i10, int i11, List list) throws Throwable {
        this.E.b(1);
        T(this.f12200t.E(i10, i11, list), false);
    }

    private void O() {
        A1(this.f12184d0);
    }

    private static boolean O0(d dVar, androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2, int i10, boolean z10, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        Object obj = dVar.f12215d;
        if (obj == null) {
            Pair pairR0 = R0(e0Var, new h(dVar.f12212a.g(), dVar.f12212a.c(), dVar.f12212a.e() == Long.MIN_VALUE ? C.TIME_UNSET : androidx.media3.common.util.a1.R0(dVar.f12212a.e())), false, i10, z10, cVar, bVar);
            if (pairR0 == null) {
                return false;
            }
            dVar.b(e0Var.b(pairR0.first), ((Long) pairR0.second).longValue(), pairR0.first);
            if (dVar.f12212a.e() == Long.MIN_VALUE) {
                N0(e0Var, dVar, cVar, bVar);
            }
            return true;
        }
        int iB = e0Var.b(obj);
        if (iB == -1) {
            return false;
        }
        if (dVar.f12212a.e() == Long.MIN_VALUE) {
            N0(e0Var, dVar, cVar, bVar);
            return true;
        }
        dVar.f12213b = iB;
        e0Var2.h(dVar.f12215d, bVar);
        if (bVar.f9627f && e0Var2.n(bVar.f9624c, cVar).f9652n == e0Var2.b(dVar.f12215d)) {
            Pair pairJ = e0Var.j(cVar, bVar, e0Var.h(dVar.f12215d, bVar).f9624c, dVar.f12214c + bVar.o());
            dVar.b(e0Var.b(pairJ.first), ((Long) pairJ.second).longValue(), pairJ.first);
        }
        return true;
    }

    private void O1() throws ExoPlaybackException {
        if (this.D.f12231a.q() || !this.f12200t.t()) {
            return;
        }
        boolean zO0 = o0();
        s0();
        t0();
        u0();
        q0();
        r0(zO0);
    }

    private void P(androidx.media3.exoplayer.source.q qVar) {
        if (this.f12199s.F(qVar)) {
            this.f12199s.L(this.S);
            g0();
        } else if (this.f12199s.G(qVar)) {
            h0();
        }
    }

    private void P0(androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2) {
        if (e0Var.q() && e0Var2.q()) {
            return;
        }
        for (int size = this.f12196p.size() - 1; size >= 0; size--) {
            if (!O0((d) this.f12196p.get(size), e0Var, e0Var2, this.L, this.M, this.f12191k, this.f12192l)) {
                ((d) this.f12196p.get(size)).f12212a.j(false);
                this.f12196p.remove(size);
            }
        }
        Collections.sort(this.f12196p);
    }

    private static int P1(int i10, int i11) {
        if (i10 == -1) {
            return 2;
        }
        if (i11 == 2) {
            return 1;
        }
        return i11;
    }

    private void Q(IOException iOException, int i10) {
        ExoPlaybackException exoPlaybackExceptionCreateForSource = ExoPlaybackException.createForSource(iOException, i10);
        y2 y2VarU = this.f12199s.u();
        if (y2VarU != null) {
            exoPlaybackExceptionCreateForSource = exoPlaybackExceptionCreateForSource.copyWithMediaPeriodId(y2VarU.f13063h.f13076a);
        }
        androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForSource);
        I1(false, false);
        this.D = this.D.f(exoPlaybackExceptionCreateForSource);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0150  */
    /* JADX WARN: Code duplicated, block: B:52:0x016e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0184  */
    /* JADX WARN: Code duplicated, block: B:69:0x019d  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:83:0x01d9  */
    private static g Q0(androidx.media3.common.e0 e0Var, r3 r3Var, h hVar, b3 b3Var, int i10, boolean z10, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        androidx.media3.exoplayer.source.r.b bVar2;
        int i11;
        androidx.media3.exoplayer.source.r.b bVar3;
        int i12;
        long jLongValue;
        boolean z11;
        boolean z12;
        boolean z13;
        int iA;
        boolean z14;
        long j10;
        androidx.media3.exoplayer.source.r.b bVarR;
        int i13;
        boolean z15;
        boolean z16;
        androidx.media3.exoplayer.source.r.b bVar4;
        int i14;
        int iA2;
        boolean z17;
        boolean z18;
        boolean z19;
        if (e0Var.q()) {
            return new g(r3.l(), 0L, C.TIME_UNSET, false, true, false);
        }
        androidx.media3.exoplayer.source.r.b bVar5 = r3Var.f12232b;
        Object obj = bVar5.f12571a;
        boolean zC0 = c0(r3Var, bVar);
        long j11 = (r3Var.f12232b.b() || zC0) ? r3Var.f12233c : r3Var.f12249s;
        if (hVar != null) {
            bVar2 = bVar5;
            i11 = -1;
            Pair pairR0 = R0(e0Var, hVar, true, i10, z10, cVar, bVar);
            if (pairR0 == null) {
                iA2 = e0Var.a(z10);
                jLongValue = j11;
                z17 = false;
                z18 = false;
                z19 = true;
            } else {
                if (hVar.f12229c == C.TIME_UNSET) {
                    iA2 = e0Var.h(pairR0.first, bVar).f9624c;
                    jLongValue = j11;
                    z17 = false;
                } else {
                    obj = pairR0.first;
                    jLongValue = ((Long) pairR0.second).longValue();
                    iA2 = -1;
                    z17 = true;
                }
                z18 = r3Var.f12235e == 4;
                z19 = false;
            }
            z13 = z17;
            z11 = z18;
            z12 = z19;
            i12 = iA2;
        } else {
            bVar2 = bVar5;
            i11 = -1;
            if (!r3Var.f12231a.q()) {
                if (e0Var.b(obj) == -1) {
                    int iS0 = S0(cVar, bVar, i10, z10, obj, r3Var.f12231a, e0Var);
                    if (iS0 == -1) {
                        iS0 = e0Var.a(z10);
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    i12 = iS0;
                    z12 = z14;
                    jLongValue = j11;
                    z11 = false;
                    z13 = false;
                } else if (j11 == C.TIME_UNSET) {
                    iA = e0Var.h(obj, bVar).f9624c;
                } else if (zC0) {
                    bVar3 = bVar2;
                    r3Var.f12231a.h(bVar3.f12571a, bVar);
                    if (r3Var.f12231a.n(bVar.f9624c, cVar).f9652n == r3Var.f12231a.b(bVar3.f12571a)) {
                        Pair pairJ = e0Var.j(cVar, bVar, e0Var.h(obj, bVar).f9624c, j11 + bVar.o());
                        obj = pairJ.first;
                        jLongValue = ((Long) pairJ.second).longValue();
                    } else {
                        jLongValue = j11;
                    }
                    i12 = -1;
                    z11 = false;
                    z12 = false;
                    z13 = true;
                } else {
                    bVar3 = bVar2;
                    i12 = -1;
                    jLongValue = j11;
                    z11 = false;
                    z12 = false;
                    z13 = false;
                }
                if (i12 != i11) {
                    Pair pairJ2 = e0Var.j(cVar, bVar, i12, C.TIME_UNSET);
                    obj = pairJ2.first;
                    jLongValue = ((Long) pairJ2.second).longValue();
                    j10 = -9223372036854775807L;
                } else {
                    j10 = jLongValue;
                }
                bVarR = b3Var.R(e0Var, obj, jLongValue);
                i13 = bVarR.f12575e;
                if (i13 != i11 || ((i14 = bVar3.f12575e) != i11 && i13 >= i14)) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z16 = (bVar3.f12571a.equals(obj) || bVar3.b() || bVarR.b() || !z15) ? false : true;
                bVar4 = bVar3;
                boolean Z = Z(zC0, bVar3, j11, bVarR, e0Var.h(obj, bVar), j10);
                if (z16 || Z) {
                    bVarR = bVar4;
                }
                if (bVarR.b()) {
                    if (bVarR.equals(bVar4)) {
                        jLongValue = r3Var.f12249s;
                    } else {
                        e0Var.h(bVarR.f12571a, bVar);
                        if (bVarR.f12573c == bVar.l(bVarR.f12572b)) {
                            jLongValue = bVar.g();
                        } else {
                            jLongValue = 0;
                        }
                    }
                }
                return new g(bVarR, jLongValue, j10, z11, z12, z13);
            }
            iA = e0Var.a(z10);
            i12 = iA;
            jLongValue = j11;
            z11 = false;
            z12 = false;
            z13 = false;
        }
        bVar3 = bVar2;
        if (i12 != i11) {
            Pair pairJ3 = e0Var.j(cVar, bVar, i12, C.TIME_UNSET);
            obj = pairJ3.first;
            jLongValue = ((Long) pairJ3.second).longValue();
            j10 = -9223372036854775807L;
        } else {
            j10 = jLongValue;
        }
        bVarR = b3Var.R(e0Var, obj, jLongValue);
        i13 = bVarR.f12575e;
        if (i13 != i11) {
            z15 = true;
        } else {
            z15 = true;
        }
        if (bVar3.f12571a.equals(obj)) {
        }
        bVar4 = bVar3;
        boolean Z2 = Z(zC0, bVar3, j11, bVarR, e0Var.h(obj, bVar), j10);
        if (z16) {
            bVarR = bVar4;
        } else {
            bVarR = bVar4;
        }
        if (bVarR.b()) {
            if (bVarR.equals(bVar4)) {
                jLongValue = r3Var.f12249s;
            } else {
                e0Var.h(bVarR.f12571a, bVar);
                if (bVarR.f12573c == bVar.l(bVarR.f12572b)) {
                    jLongValue = bVar.g();
                } else {
                    jLongValue = 0;
                }
            }
        }
        return new g(bVarR, jLongValue, j10, z11, z12, z13);
    }

    private void Q1() {
        r3 r3Var = this.D;
        R1(r3Var.f12242l, r3Var.f12244n, r3Var.f12243m);
    }

    private void R(boolean z10) {
        y2 y2VarN = this.f12199s.n();
        androidx.media3.exoplayer.source.r.b bVar = y2VarN == null ? this.D.f12232b : y2VarN.f13063h.f13076a;
        boolean zEquals = this.D.f12241k.equals(bVar);
        if (!zEquals) {
            this.D = this.D.c(bVar);
        }
        r3 r3Var = this.D;
        r3Var.f12247q = y2VarN == null ? r3Var.f12249s : y2VarN.j();
        this.D.f12248r = L();
        if ((!zEquals || z10) && y2VarN != null && y2VarN.f13061f) {
            L1(y2VarN.f13063h.f13076a, y2VarN.o(), y2VarN.p());
        }
    }

    private static Pair R0(androidx.media3.common.e0 e0Var, h hVar, boolean z10, int i10, boolean z11, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        int iS0;
        androidx.media3.common.e0 e0Var2 = hVar.f12227a;
        if (e0Var.q()) {
            return null;
        }
        androidx.media3.common.e0 e0Var3 = e0Var2.q() ? e0Var : e0Var2;
        try {
            Pair pairJ = e0Var3.j(cVar, bVar, hVar.f12228b, hVar.f12229c);
            if (e0Var.equals(e0Var3)) {
                return pairJ;
            }
            if (e0Var.b(pairJ.first) != -1) {
                return (e0Var3.h(pairJ.first, bVar).f9627f && e0Var3.n(bVar.f9624c, cVar).f9652n == e0Var3.b(pairJ.first)) ? e0Var.j(cVar, bVar, e0Var.h(pairJ.first, bVar).f9624c, hVar.f12229c) : pairJ;
            }
            if (z10 && (iS0 = S0(cVar, bVar, i10, z11, pairJ.first, e0Var3, e0Var)) != -1) {
                return e0Var.j(cVar, bVar, iS0, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    private void R1(boolean z10, int i10, int i11) {
        S1(z10, this.B.o(z10, this.D.f12235e), i10, i11);
    }

    private void S(y2 y2Var) throws ExoPlaybackException {
        if (!y2Var.f13061f) {
            float f10 = this.f12195o.getPlaybackParameters().f10254a;
            r3 r3Var = this.D;
            y2Var.q(f10, r3Var.f12231a, r3Var.f12242l);
        }
        L1(y2Var.f13063h.f13076a, y2Var.o(), y2Var.p());
        if (y2Var == this.f12199s.u()) {
            M0(y2Var.f13063h.f13077b);
            C();
            y2Var.f13064i = true;
            r3 r3Var2 = this.D;
            androidx.media3.exoplayer.source.r.b bVar = r3Var2.f12232b;
            long j10 = y2Var.f13063h.f13077b;
            this.D = X(bVar, j10, r3Var2.f12233c, j10, false, 5);
        }
        g0();
    }

    static int S0(androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar, int i10, boolean z10, Object obj, androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2) {
        Object obj2 = e0Var.n(e0Var.h(obj, bVar).f9624c, cVar).f9639a;
        for (int i11 = 0; i11 < e0Var2.p(); i11++) {
            if (e0Var2.n(i11, cVar).f9639a.equals(obj2)) {
                return i11;
            }
        }
        int iB = e0Var.b(obj);
        int i12 = e0Var.i();
        int iD = iB;
        int iB2 = -1;
        for (int i13 = 0; i13 < i12 && iB2 == -1; i13++) {
            iD = e0Var.d(iD, bVar, cVar, i10, z10);
            if (iD == -1) {
                break;
            }
            iB2 = e0Var2.b(e0Var.m(iD));
        }
        if (iB2 == -1) {
            return -1;
        }
        return e0Var2.f(iB2, bVar).f9624c;
    }

    private void S1(boolean z10, int i10, int i11, int i12) {
        boolean z11 = z10 && i10 != -1;
        int iP1 = P1(i10, i12);
        int iV1 = V1(i10, i11);
        r3 r3Var = this.D;
        if (r3Var.f12242l == z11 && r3Var.f12244n == iV1 && r3Var.f12243m == iP1) {
            return;
        }
        this.D = r3Var.e(z11, iP1, iV1);
        W1(false, false);
        y0(z11);
        if (!D1()) {
            J1();
            T1();
            this.f12199s.L(this.S);
            return;
        }
        int i13 = this.D.f12235e;
        if (i13 == 3) {
            this.f12195o.f();
            G1();
            this.f12188h.sendEmptyMessage(2);
        } else if (i13 == 2) {
            this.f12188h.sendEmptyMessage(2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:106:0x01df  */
    /* JADX WARN: Code duplicated, block: B:110:0x0207  */
    /* JADX WARN: Code duplicated, block: B:89:0x019c  */
    /* JADX WARN: Code duplicated, block: B:90:0x019e  */
    /* JADX WARN: Code duplicated, block: B:95:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:97:0x01bf A[ADDED_TO_REGION] */
    private void T(androidx.media3.common.e0 e0Var, boolean z10) throws Throwable {
        int i10;
        h hVar;
        long j10;
        h hVar2;
        boolean z11;
        int i11;
        boolean z12;
        long j11;
        long jX0;
        g gVarQ0 = Q0(e0Var, this.D, this.R, this.f12199s, this.L, this.M, this.f12191k, this.f12192l);
        androidx.media3.exoplayer.source.r.b bVar = gVarQ0.f12221a;
        long j12 = gVarQ0.f12223c;
        boolean z13 = gVarQ0.f12224d;
        long j13 = gVarQ0.f12222b;
        boolean z14 = (this.D.f12232b.equals(bVar) && j13 == this.D.f12249s) ? false : true;
        try {
            if (gVarQ0.f12225e) {
                if (this.D.f12235e != 1) {
                    w1(4);
                }
                K0(false, false, false, true);
            }
            try {
                for (a4 a4Var : this.f12177a) {
                    a4Var.R(e0Var);
                }
                try {
                    if (z14) {
                        z12 = false;
                        j11 = j12;
                        i11 = 4;
                        jX0 = j13;
                        if (!e0Var.q()) {
                            for (y2 y2VarU = this.f12199s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
                                if (y2VarU.f13063h.f13076a.equals(bVar)) {
                                    y2VarU.f13063h = this.f12199s.z(e0Var, y2VarU.f13063h);
                                    y2VarU.E();
                                }
                            }
                            jX0 = X0(bVar, jX0, z13);
                        }
                    } else {
                        try {
                            i11 = 4;
                            z12 = false;
                            j11 = j12;
                            jX0 = j13;
                            int iX = this.f12199s.X(e0Var, this.S, this.f12199s.y() == null ? 0L : I(this.f12199s.y()), (!r() || this.f12199s.x() == null) ? 0L : I(this.f12199s.x()));
                            if ((iX & 1) != 0) {
                                V0(false);
                            } else if ((iX & 2) != 0) {
                                x();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            j12 = j12;
                            i10 = 4;
                            j12 = j13;
                            hVar = null;
                            r3 r3Var = this.D;
                            androidx.media3.common.e0 e0Var2 = r3Var.f12231a;
                            androidx.media3.exoplayer.source.r.b bVar2 = r3Var.f12232b;
                            if (gVarQ0.f12226f) {
                                j10 = j12;
                            } else {
                                j10 = -9223372036854775807L;
                            }
                            hVar2 = hVar;
                            U1(e0Var, bVar, e0Var2, bVar2, j10, false);
                            if (z14 || j12 != this.D.f12233c) {
                                r3 r3Var2 = this.D;
                                Object obj = r3Var2.f12232b.f12571a;
                                androidx.media3.common.e0 e0Var3 = r3Var2.f12231a;
                                if (z14 || !z10 || e0Var3.q() || e0Var3.h(obj, this.f12192l).f9627f) {
                                    z11 = false;
                                } else {
                                    z11 = true;
                                }
                                this.D = X(bVar, j12, j12, this.D.f12234d, z11, e0Var.b(obj) == -1 ? i10 : 3);
                            }
                            L0();
                            P0(e0Var, this.D.f12231a);
                            this.D = this.D.j(e0Var);
                            if (!e0Var.q()) {
                                this.R = hVar2;
                            }
                            R(false);
                            this.f12188h.sendEmptyMessage(2);
                            throw th;
                        }
                    }
                    r3 r3Var3 = this.D;
                    U1(e0Var, bVar, r3Var3.f12231a, r3Var3.f12232b, gVarQ0.f12226f ? jX0 : -9223372036854775807L, false);
                    if (z14 || j11 != this.D.f12233c) {
                        r3 r3Var4 = this.D;
                        Object obj2 = r3Var4.f12232b.f12571a;
                        androidx.media3.common.e0 e0Var4 = r3Var4.f12231a;
                        this.D = X(bVar, jX0, j11, this.D.f12234d, (!z14 || !z10 || e0Var4.q() || e0Var4.h(obj2, this.f12192l).f9627f) ? z12 : true, e0Var.b(obj2) == -1 ? i11 : 3);
                    }
                    L0();
                    P0(e0Var, this.D.f12231a);
                    this.D = this.D.j(e0Var);
                    if (!e0Var.q()) {
                        this.R = null;
                    }
                    R(z12);
                    this.f12188h.sendEmptyMessage(2);
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                i10 = 4;
                j12 = j13;
                hVar = null;
                r3 r3Var5 = this.D;
                androidx.media3.common.e0 e0Var5 = r3Var5.f12231a;
                androidx.media3.exoplayer.source.r.b bVar3 = r3Var5.f12232b;
                if (gVarQ0.f12226f) {
                    j10 = j12;
                } else {
                    j10 = -9223372036854775807L;
                }
                hVar2 = hVar;
                U1(e0Var, bVar, e0Var5, bVar3, j10, false);
                if (z14) {
                    r3 r3Var6 = this.D;
                    Object obj3 = r3Var6.f12232b.f12571a;
                    androidx.media3.common.e0 e0Var6 = r3Var6.f12231a;
                    if (z14) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    this.D = X(bVar, j12, j12, this.D.f12234d, z11, e0Var.b(obj3) == -1 ? i10 : 3);
                } else {
                    r3 r3Var7 = this.D;
                    Object obj4 = r3Var7.f12232b.f12571a;
                    androidx.media3.common.e0 e0Var7 = r3Var7.f12231a;
                    if (z14) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    this.D = X(bVar, j12, j12, this.D.f12234d, z11, e0Var.b(obj4) == -1 ? i10 : 3);
                }
                L0();
                P0(e0Var, this.D.f12231a);
                this.D = this.D.j(e0Var);
                if (!e0Var.q()) {
                    this.R = hVar2;
                }
                R(false);
                this.f12188h.sendEmptyMessage(2);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            i10 = 4;
        }
    }

    private void T0(long j10) {
        long jMin = (this.D.f12235e != 3 || (!this.f12204x && D1())) ? f12176e0 : 1000L;
        if (this.f12204x && D1()) {
            for (a4 a4Var : this.f12177a) {
                jMin = Math.min(jMin, androidx.media3.common.util.a1.y1(a4Var.j(this.S, this.T)));
            }
            y2 y2VarK = this.f12199s.u() != null ? this.f12199s.u().k() : null;
            if (y2VarK != null && this.S + (androidx.media3.common.util.a1.R0(jMin) * this.D.f12245o.f10254a) >= y2VarK.n()) {
                jMin = Math.min(jMin, f12176e0);
            }
        }
        this.f12188h.sendEmptyMessageAtTime(2, j10 + jMin);
    }

    private void T1() {
        y2 y2VarU = this.f12199s.u();
        if (y2VarU == null) {
            return;
        }
        long discontinuity = y2VarU.f13061f ? y2VarU.f13056a.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != C.TIME_UNSET) {
            if (!y2VarU.s()) {
                this.f12199s.O(y2VarU);
                R(false);
                g0();
            }
            M0(discontinuity);
            if (discontinuity != this.D.f12249s) {
                r3 r3Var = this.D;
                this.D = X(r3Var.f12232b, discontinuity, r3Var.f12233c, discontinuity, true, 5);
            }
        } else {
            long jI = this.f12195o.i(y2VarU != this.f12199s.y());
            this.S = jI;
            long jC = y2VarU.C(jI);
            n0(this.D.f12249s, jC);
            if (this.f12195o.h()) {
                boolean z10 = !this.E.f12219d;
                r3 r3Var2 = this.D;
                this.D = X(r3Var2.f12232b, jC, r3Var2.f12233c, jC, z10, 6);
            } else {
                this.D.o(jC);
            }
        }
        this.D.f12247q = this.f12199s.n().j();
        this.D.f12248r = L();
        r3 r3Var3 = this.D;
        if (r3Var3.f12242l && r3Var3.f12235e == 3 && F1(r3Var3.f12231a, r3Var3.f12232b) && this.D.f12245o.f10254a == 1.0f) {
            float fA = this.f12201u.a(G(), this.D.f12248r);
            if (this.f12195o.getPlaybackParameters().f10254a != fA) {
                g1(this.D.f12245o.b(fA));
                V(this.D.f12245o, this.f12195o.getPlaybackParameters().f10254a, false, false);
            }
        }
    }

    private void U(androidx.media3.exoplayer.source.q qVar) throws ExoPlaybackException {
        if (this.f12199s.F(qVar)) {
            S((y2) androidx.media3.common.util.a.e(this.f12199s.n()));
            return;
        }
        y2 y2VarV = this.f12199s.v(qVar);
        if (y2VarV != null) {
            androidx.media3.common.util.a.g(!y2VarV.f13061f);
            float f10 = this.f12195o.getPlaybackParameters().f10254a;
            r3 r3Var = this.D;
            y2VarV.q(f10, r3Var.f12231a, r3Var.f12242l);
            if (this.f12199s.G(qVar)) {
                h0();
            }
        }
    }

    private void U1(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var2, androidx.media3.exoplayer.source.r.b bVar2, long j10, boolean z10) {
        if (!F1(e0Var, bVar)) {
            androidx.media3.common.z zVar = bVar.b() ? androidx.media3.common.z.f10251d : this.D.f12245o;
            if (this.f12195o.getPlaybackParameters().equals(zVar)) {
                return;
            }
            g1(zVar);
            V(this.D.f12245o, zVar.f10254a, false, false);
            return;
        }
        e0Var.n(e0Var.h(bVar.f12571a, this.f12192l).f9624c, this.f12191k);
        this.f12201u.e((androidx.media3.common.t.g) androidx.media3.common.util.a1.i(this.f12191k.f9648j));
        if (j10 != C.TIME_UNSET) {
            this.f12201u.d(H(e0Var, bVar.f12571a, j10));
            return;
        }
        if (!Objects.equals(!e0Var2.q() ? e0Var2.n(e0Var2.h(bVar2.f12571a, this.f12192l).f9624c, this.f12191k).f9639a : null, this.f12191k.f9639a) || z10) {
            this.f12201u.d(C.TIME_UNSET);
        }
    }

    private void V(androidx.media3.common.z zVar, float f10, boolean z10, boolean z11) {
        if (z10) {
            if (z11) {
                this.E.b(1);
            }
            this.D = this.D.g(zVar);
        }
        Y1(zVar.f10254a);
        for (a4 a4Var : this.f12177a) {
            a4Var.Q(f10, zVar.f10254a);
        }
    }

    private void V0(boolean z10) throws ExoPlaybackException {
        androidx.media3.exoplayer.source.r.b bVar = this.f12199s.u().f13063h.f13076a;
        long jY0 = Y0(bVar, this.D.f12249s, true, false);
        if (jY0 != this.D.f12249s) {
            r3 r3Var = this.D;
            this.D = X(bVar, jY0, r3Var.f12233c, r3Var.f12234d, z10, 5);
        }
    }

    private static int V1(int i10, int i11) {
        if (i10 == 0) {
            return 1;
        }
        if (i11 == 1) {
            return 0;
        }
        return i11;
    }

    private void W(androidx.media3.common.z zVar, boolean z10) {
        V(zVar, zVar.f10254a, true, z10);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00ac A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c5 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cf A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:56:0x011b  */
    /* JADX WARN: Code duplicated, block: B:57:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0127  */
    private void W0(h hVar) throws Throwable {
        long jLongValue;
        long j10;
        boolean z10;
        androidx.media3.exoplayer.source.r.b bVar;
        long jG;
        long j11;
        long j12;
        long jB;
        boolean z11;
        long jX0;
        long j13;
        y2 y2VarU;
        r3 r3Var;
        int i10;
        this.E.b(1);
        Pair pairR0 = R0(this.D.f12231a, hVar, true, this.L, this.M, this.f12191k, this.f12192l);
        try {
            if (pairR0 != null) {
                Object obj = pairR0.first;
                jLongValue = ((Long) pairR0.second).longValue();
                long j14 = hVar.f12229c == C.TIME_UNSET ? -9223372036854775807L : jLongValue;
                androidx.media3.exoplayer.source.r.b bVarR = this.f12199s.R(this.D.f12231a, obj, jLongValue);
                if (bVarR.b()) {
                    this.D.f12231a.h(bVarR.f12571a, this.f12192l);
                    jG = this.f12192l.l(bVarR.f12572b) == bVarR.f12573c ? this.f12192l.g() : 0L;
                    j11 = j14;
                    bVar = bVarR;
                    z10 = true;
                } else {
                    j10 = j14;
                    z10 = hVar.f12229c == C.TIME_UNSET;
                    bVar = bVarR;
                }
                if (this.D.f12231a.q()) {
                    if (pairR0 == null) {
                        if (this.D.f12235e != 1) {
                            w1(4);
                        }
                        K0(false, true, false, true);
                    } else {
                        if (bVar.equals(this.D.f12232b)) {
                            y2VarU = this.f12199s.u();
                            if (y2VarU == null && y2VarU.f13061f && jG != 0) {
                                jB = y2VarU.f13056a.b(jG, this.C);
                            } else {
                                jB = jG;
                            }
                            if (androidx.media3.common.util.a1.y1(jB) == androidx.media3.common.util.a1.y1(this.D.f12249s) && ((i10 = (r3Var = this.D).f12235e) == 2 || i10 == 3)) {
                                long j15 = r3Var.f12249s;
                                this.D = X(bVar, j15, j11, j15, z10, 2);
                                return;
                            }
                        } else {
                            jB = jG;
                        }
                        if (this.D.f12235e == 4) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        jX0 = X0(bVar, jB, z11);
                        z10 |= jG != jX0;
                        try {
                            r3 r3Var2 = this.D;
                            androidx.media3.common.e0 e0Var = r3Var2.f12231a;
                            U1(e0Var, bVar, e0Var, r3Var2.f12232b, j11, true);
                            j13 = jX0;
                        } catch (Throwable th2) {
                            th = th2;
                            j12 = jX0;
                            this.D = X(bVar, j12, j11, j12, z10, 2);
                            throw th;
                        }
                    }
                    this.D = X(bVar, j13, j11, j13, z10, 2);
                    return;
                }
                this.R = hVar;
                j13 = jG;
                this.D = X(bVar, j13, j11, j13, z10, 2);
                return;
            }
            Pair pairJ = J(this.D.f12231a);
            bVar = (androidx.media3.exoplayer.source.r.b) pairJ.first;
            jLongValue = ((Long) pairJ.second).longValue();
            z10 = !this.D.f12231a.q();
            j10 = -9223372036854775807L;
            if (this.D.f12231a.q()) {
                if (pairR0 == null) {
                    if (this.D.f12235e != 1) {
                        w1(4);
                    }
                    K0(false, true, false, true);
                } else {
                    if (bVar.equals(this.D.f12232b)) {
                        y2VarU = this.f12199s.u();
                        if (y2VarU == null) {
                            jB = jG;
                        } else {
                            jB = jG;
                        }
                        if (androidx.media3.common.util.a1.y1(jB) == androidx.media3.common.util.a1.y1(this.D.f12249s)) {
                            long j16 = r3Var.f12249s;
                            this.D = X(bVar, j16, j11, j16, z10, 2);
                            return;
                        }
                    } else {
                        jB = jG;
                    }
                    if (this.D.f12235e == 4) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    jX0 = X0(bVar, jB, z11);
                    z10 |= jG != jX0;
                    r3 r3Var3 = this.D;
                    androidx.media3.common.e0 e0Var2 = r3Var3.f12231a;
                    U1(e0Var2, bVar, e0Var2, r3Var3.f12232b, j11, true);
                    j13 = jX0;
                }
                this.D = X(bVar, j13, j11, j13, z10, 2);
                return;
            }
            this.R = hVar;
            j13 = jG;
            this.D = X(bVar, j13, j11, j13, z10, 2);
            return;
        } catch (Throwable th3) {
            th = th3;
            j12 = jG;
        }
        jG = jLongValue;
        j11 = j10;
    }

    private void W1(boolean z10, boolean z11) {
        this.I = z10;
        this.J = (!z10 || z11) ? C.TIME_UNSET : this.f12197q.elapsedRealtime();
    }

    private r3 X(androidx.media3.exoplayer.source.r.b bVar, long j10, long j11, long j12, boolean z10, int i10) {
        List listOf;
        f2.z zVar;
        i2.f0 f0Var;
        this.V = (!this.V && j10 == this.D.f12249s && bVar.equals(this.D.f12232b)) ? false : true;
        L0();
        r3 r3Var = this.D;
        f2.z zVar2 = r3Var.f12238h;
        i2.f0 f0Var2 = r3Var.f12239i;
        List list = r3Var.f12240j;
        if (this.f12200t.t()) {
            y2 y2VarU = this.f12199s.u();
            f2.z zVarO = y2VarU == null ? f2.z.f59966d : y2VarU.o();
            i2.f0 f0VarP = y2VarU == null ? this.f12185e : y2VarU.p();
            ImmutableList immutableListF = F(f0VarP.f61646c);
            if (y2VarU != null) {
                z2 z2Var = y2VarU.f13063h;
                if (z2Var.f13078c != j11) {
                    y2VarU.f13063h = z2Var.a(j11);
                }
            }
            p0();
            zVar = zVarO;
            f0Var = f0VarP;
            listOf = immutableListF;
        } else if (bVar.equals(this.D.f12232b)) {
            listOf = list;
            zVar = zVar2;
            f0Var = f0Var2;
        } else {
            zVar = f2.z.f59966d;
            f0Var = this.f12185e;
            listOf = ImmutableList.of();
        }
        if (z10) {
            this.E.d(i10);
        }
        return this.D.d(bVar, j10, j11, j12, L(), zVar, f0Var, listOf);
    }

    private long X0(androidx.media3.exoplayer.source.r.b bVar, long j10, boolean z10) {
        return Y0(bVar, j10, this.f12199s.u() != this.f12199s.y(), z10);
    }

    private boolean X1() throws ExoPlaybackException {
        y2 y2VarY = this.f12199s.y();
        i2.f0 f0VarP = y2VarY.p();
        boolean z10 = true;
        int i10 = 0;
        while (true) {
            a4[] a4VarArr = this.f12177a;
            if (i10 >= a4VarArr.length) {
                break;
            }
            int iH = a4VarArr[i10].h();
            int iJ = this.f12177a[i10].J(y2VarY, f0VarP, this.f12195o);
            if ((iJ & 2) != 0 && this.P) {
                j1(false);
            }
            this.Q -= iH - this.f12177a[i10].h();
            z10 &= (iJ & 1) != 0;
            i10++;
        }
        if (z10) {
            for (int i11 = 0; i11 < this.f12177a.length; i11++) {
                if (f0VarP.c(i11) && !this.f12177a[i11].w(y2VarY)) {
                    B(y2VarY, i11, false, y2VarY.n());
                }
            }
        }
        return z10;
    }

    private boolean Y() {
        y2 y2VarY = this.f12199s.y();
        if (!y2VarY.f13061f) {
            return false;
        }
        int i10 = 0;
        while (true) {
            a4[] a4VarArr = this.f12177a;
            if (i10 >= a4VarArr.length) {
                return true;
            }
            if (!a4VarArr[i10].o(y2VarY)) {
                return false;
            }
            i10++;
        }
    }

    private long Y0(androidx.media3.exoplayer.source.r.b bVar, long j10, boolean z10, boolean z11) throws ExoPlaybackException {
        J1();
        W1(false, true);
        if (z11 || this.D.f12235e == 3) {
            w1(2);
        }
        y2 y2VarU = this.f12199s.u();
        y2 y2VarK = y2VarU;
        while (y2VarK != null && !bVar.equals(y2VarK.f13063h.f13076a)) {
            y2VarK = y2VarK.k();
        }
        if (z10 || y2VarU != y2VarK || (y2VarK != null && y2VarK.D(j10) < 0)) {
            z();
            if (y2VarK != null) {
                while (this.f12199s.u() != y2VarK) {
                    this.f12199s.b();
                }
                this.f12199s.O(y2VarK);
                y2VarK.B(1000000000000L);
                C();
                y2VarK.f13064i = true;
            }
        }
        x();
        if (y2VarK != null) {
            this.f12199s.O(y2VarK);
            if (!y2VarK.f13061f) {
                y2VarK.f13063h = y2VarK.f13063h.b(j10);
            } else if (y2VarK.f13062g) {
                j10 = y2VarK.f13056a.seekToUs(j10);
                y2VarK.f13056a.discardBuffer(j10 - this.f12193m, this.f12194n);
            }
            M0(j10);
            g0();
        } else {
            this.f12199s.g();
            M0(j10);
        }
        R(false);
        this.f12188h.sendEmptyMessage(2);
        return j10;
    }

    private void Y1(float f10) {
        for (y2 y2VarU = this.f12199s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
            for (i2.z zVar : y2VarU.p().f61646c) {
                if (zVar != null) {
                    zVar.onPlaybackSpeed(f10);
                }
            }
        }
    }

    private static boolean Z(boolean z10, androidx.media3.exoplayer.source.r.b bVar, long j10, androidx.media3.exoplayer.source.r.b bVar2, androidx.media3.common.e0.b bVar3, long j11) {
        if (z10 || j10 != j11 || !bVar.f12571a.equals(bVar2.f12571a)) {
            return false;
        }
        if (bVar.b() && bVar3.s(bVar.f12572b)) {
            return (bVar3.h(bVar.f12572b, bVar.f12573c) == 4 || bVar3.h(bVar.f12572b, bVar.f12573c) == 2) ? false : true;
        }
        return bVar2.b() && bVar3.s(bVar2.f12572b);
    }

    private void Z0(t3 t3Var) {
        if (t3Var.e() == C.TIME_UNSET) {
            a1(t3Var);
            return;
        }
        if (this.D.f12231a.q()) {
            this.f12196p.add(new d(t3Var));
            return;
        }
        d dVar = new d(t3Var);
        androidx.media3.common.e0 e0Var = this.D.f12231a;
        if (!O0(dVar, e0Var, e0Var, this.L, this.M, this.f12191k, this.f12192l)) {
            t3Var.j(false);
        } else {
            this.f12196p.add(dVar);
            Collections.sort(this.f12196p);
        }
    }

    private synchronized void Z1(com.google.common.base.q qVar, long j10) {
        long jElapsedRealtime = this.f12197q.elapsedRealtime() + j10;
        boolean z10 = false;
        while (!((Boolean) qVar.get()).booleanValue() && j10 > 0) {
            try {
                this.f12197q.a();
                wait(j10);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j10 = jElapsedRealtime - this.f12197q.elapsedRealtime();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private boolean a0(y2 y2Var) {
        return (y2Var == null || y2Var.r() || y2Var.l() == Long.MIN_VALUE) ? false : true;
    }

    private void a1(t3 t3Var) {
        if (t3Var.b() != this.f12190j) {
            this.f12188h.obtainMessage(15, t3Var).a();
            return;
        }
        w(t3Var);
        int i10 = this.D.f12235e;
        if (i10 == 3 || i10 == 2) {
            this.f12188h.sendEmptyMessage(2);
        }
    }

    private boolean b0() {
        y2 y2VarU = this.f12199s.u();
        long j10 = y2VarU.f13063h.f13080e;
        return y2VarU.f13061f && (j10 == C.TIME_UNSET || this.D.f12249s < j10 || !D1());
    }

    private void b1(final t3 t3Var) {
        Looper looperB = t3Var.b();
        if (looperB.getThread().isAlive()) {
            this.f12197q.createHandler(looperB, null).post(new Runnable() {
                @Override
                public final void run() {
                    this.f12146a.f0(t3Var);
                }
            });
        } else {
            androidx.media3.common.util.u.h("TAG", "Trying to send message on a dead thread.");
            t3Var.j(false);
        }
    }

    private static boolean c0(r3 r3Var, androidx.media3.common.e0.b bVar) {
        androidx.media3.exoplayer.source.r.b bVar2 = r3Var.f12232b;
        androidx.media3.common.e0 e0Var = r3Var.f12231a;
        return e0Var.q() || e0Var.h(bVar2.f12571a, bVar).f9627f;
    }

    private void c1(long j10) {
        for (a4 a4Var : this.f12177a) {
            a4Var.N(j10);
        }
    }

    public void d0(int i10, boolean z10) {
        this.f12205y.D(i10, this.f12177a[i10].m(), z10);
    }

    public Boolean e0() {
        return Boolean.valueOf(this.F);
    }

    private void e1(androidx.media3.common.c cVar, boolean z10) {
        this.f12183d.l(cVar);
        androidx.media3.exoplayer.h hVar = this.B;
        if (!z10) {
            cVar = null;
        }
        hVar.l(cVar);
        Q1();
    }

    public void f0(t3 t3Var) {
        try {
            w(t3Var);
        } catch (ExoPlaybackException e10) {
            androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
            throw new RuntimeException(e10);
        }
    }

    private void f1(boolean z10, AtomicBoolean atomicBoolean) {
        if (this.N != z10) {
            this.N = z10;
            if (!z10) {
                for (a4 a4Var : this.f12177a) {
                    a4Var.L();
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void g0() {
        boolean zC1 = C1();
        this.K = zC1;
        if (zC1) {
            y2 y2Var = (y2) androidx.media3.common.util.a.e(this.f12199s.n());
            y2Var.e(new v2.b().f(y2Var.C(this.S)).g(this.f12195o.getPlaybackParameters().f10254a).e(this.J).d());
        }
        K1();
    }

    private void g1(androidx.media3.common.z zVar) {
        this.f12188h.removeMessages(16);
        this.f12195o.b(zVar);
    }

    private void h0() {
        this.f12199s.J();
        y2 y2VarW = this.f12199s.w();
        if (y2VarW != null) {
            if ((!y2VarW.f13060e || y2VarW.f13061f) && !y2VarW.f13056a.isLoading()) {
                if (this.f12186f.e(this.D.f12231a, y2VarW.f13063h.f13076a, y2VarW.f13061f ? y2VarW.f13056a.getBufferedPositionUs() : 0L)) {
                    if (y2VarW.f13060e) {
                        y2VarW.e(new v2.b().f(y2VarW.C(this.S)).g(this.f12195o.getPlaybackParameters().f10254a).e(this.J).d());
                    } else {
                        y2VarW.v(this, y2VarW.f13063h.f13077b);
                    }
                }
            }
        }
    }

    private void h1(b bVar) throws Throwable {
        this.E.b(1);
        if (bVar.f12210c != -1) {
            this.R = new h(new u3(bVar.f12208a, bVar.f12209b), bVar.f12210c, bVar.f12211d);
        }
        T(this.f12200t.C(bVar.f12208a, bVar.f12209b), false);
    }

    private void i0() {
        for (a4 a4Var : this.f12177a) {
            a4Var.D();
        }
    }

    private void j0() {
        this.E.c(this.D);
        if (this.E.f12216a) {
            this.f12198r.a(this.E);
            this.E = new e(this.D);
        }
    }

    private void j1(boolean z10) {
        if (z10 == this.P) {
            return;
        }
        this.P = z10;
        if (z10 || !this.D.f12246p) {
            return;
        }
        this.f12188h.sendEmptyMessage(2);
    }

    private void k0() throws ExoPlaybackException {
        y2 y2VarX = this.f12199s.x();
        if (y2VarX == null) {
            return;
        }
        i2.f0 f0VarP = y2VarX.p();
        for (int i10 = 0; i10 < this.f12177a.length; i10++) {
            if (f0VarP.c(i10) && this.f12177a[i10].s() && !this.f12177a[i10].u()) {
                this.f12177a[i10].V();
                B(y2VarX, i10, false, y2VarX.n());
            }
        }
        if (r()) {
            this.f12180b0 = y2VarX.f13056a.readDiscontinuity();
            if (y2VarX.s()) {
                return;
            }
            this.f12199s.O(y2VarX);
            R(false);
            g0();
        }
    }

    private void k1(boolean z10) throws ExoPlaybackException {
        this.G = z10;
        L0();
        if (!this.H || this.f12199s.y() == this.f12199s.u()) {
            return;
        }
        V0(true);
        R(false);
    }

    private void l0(int i10) {
        a4 a4Var = this.f12177a[i10];
        try {
            a4Var.G((y2) androidx.media3.common.util.a.e(this.f12199s.u()));
        } catch (IOException | RuntimeException e10) {
            int iM = a4Var.m();
            if (iM != 3 && iM != 5) {
                throw e10;
            }
            i2.f0 f0VarP = this.f12199s.u().p();
            androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Disabling track due to error: " + androidx.media3.common.r.i(f0VarP.f61646c[i10].getSelectedFormat()), e10);
            i2.f0 f0Var = new i2.f0((z3[]) f0VarP.f61645b.clone(), (i2.z[]) f0VarP.f61646c.clone(), f0VarP.f61647d, f0VarP.f61648e);
            f0Var.f61645b[i10] = null;
            f0Var.f61646c[i10] = null;
            y(i10);
            this.f12199s.u().a(f0Var, this.D.f12249s, false);
        }
    }

    private void m0(final int i10, final boolean z10) {
        boolean[] zArr = this.f12181c;
        if (zArr[i10] != z10) {
            zArr[i10] = z10;
            this.f12206z.post(new Runnable() {
                @Override
                public final void run() {
                    this.f11964a.d0(i10, z10);
                }
            });
        }
    }

    private void m1(boolean z10, int i10, boolean z11, int i11) {
        this.E.b(z11 ? 1 : 0);
        R1(z10, i10, i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void n0(long j10, long j11) {
        if (this.f12196p.isEmpty() || this.D.f12232b.b()) {
            return;
        }
        if (this.V) {
            j10--;
            this.V = false;
        }
        r3 r3Var = this.D;
        int iB = r3Var.f12231a.b(r3Var.f12232b.f12571a);
        int iMin = Math.min(this.U, this.f12196p.size());
        d dVar = iMin > 0 ? (d) this.f12196p.get(iMin - 1) : null;
        while (dVar != null) {
            int i10 = dVar.f12213b;
            if (i10 <= iB && (i10 != iB || dVar.f12214c <= j10)) {
                break;
            }
            int i11 = iMin - 1;
            dVar = i11 > 0 ? (d) this.f12196p.get(iMin - 2) : null;
            iMin = i11;
        }
        if (iMin < this.f12196p.size()) {
            d dVar2 = (d) this.f12196p.get(iMin);
            while (dVar2 != null && dVar2.f12215d != null) {
                int i12 = dVar2.f12213b;
                if (i12 >= iB && (i12 != iB || dVar2.f12214c > j10)) {
                    break;
                }
                iMin++;
                dVar2 = iMin < this.f12196p.size() ? (d) this.f12196p.get(iMin) : null;
            }
            while (dVar2 != null && dVar2.f12215d != null && dVar2.f12213b == iB) {
                long j12 = dVar2.f12214c;
                if (j12 <= j10 || j12 > j11) {
                    break;
                }
                try {
                    a1(dVar2.f12212a);
                    if (dVar2.f12212a.a() || dVar2.f12212a.i()) {
                        this.f12196p.remove(iMin);
                    } else {
                        iMin++;
                    }
                    dVar2 = iMin < this.f12196p.size() ? (d) this.f12196p.get(iMin) : null;
                } catch (Throwable th2) {
                    if (dVar2.f12212a.a() || dVar2.f12212a.i()) {
                        this.f12196p.remove(iMin);
                    }
                    throw th2;
                }
            }
            this.U = iMin;
        }
    }

    private void o(b bVar, int i10) throws Throwable {
        this.E.b(1);
        q3 q3Var = this.f12200t;
        if (i10 == -1) {
            i10 = q3Var.r();
        }
        T(q3Var.f(i10, bVar.f12208a, bVar.f12209b), false);
    }

    private boolean o0() {
        z2 z2VarT;
        this.f12199s.L(this.S);
        boolean z10 = false;
        if (this.f12199s.U() && (z2VarT = this.f12199s.t(this.S, this.D)) != null) {
            y2 y2VarH = this.f12199s.h(z2VarT);
            if (!y2VarH.f13060e) {
                y2VarH.v(this, z2VarT.f13077b);
            } else if (y2VarH.f13061f) {
                this.f12188h.obtainMessage(8, y2VarH.f13056a).a();
            }
            if (this.f12199s.u() == y2VarH) {
                M0(z2VarT.f13077b);
            }
            R(false);
            z10 = true;
        }
        if (this.K) {
            this.K = a0(this.f12199s.n());
            K1();
        } else {
            g0();
        }
        return z10;
    }

    private void o1(androidx.media3.common.z zVar) {
        g1(zVar);
        W(this.f12195o.getPlaybackParameters(), true);
    }

    private void p0() {
        y2 y2VarU;
        boolean z10;
        if (this.f12199s.u() == this.f12199s.y() && (y2VarU = this.f12199s.u()) != null) {
            i2.f0 f0VarP = y2VarU.p();
            boolean z11 = false;
            int i10 = 0;
            boolean z12 = false;
            while (true) {
                if (i10 >= this.f12177a.length) {
                    z10 = true;
                    break;
                }
                if (f0VarP.c(i10)) {
                    if (this.f12177a[i10].m() != 1) {
                        z10 = false;
                        break;
                    } else if (f0VarP.f61645b[i10].f13087a != 0) {
                        z12 = true;
                    }
                }
                i10++;
            }
            if (z12 && z10) {
                z11 = true;
            }
            j1(z11);
        }
    }

    private void p1(ExoPlayer.c cVar) {
        this.Z = cVar;
        this.f12199s.W(this.D.f12231a, cVar);
    }

    private void q() {
        i2.f0 f0VarP = this.f12199s.u().p();
        for (int i10 = 0; i10 < this.f12177a.length; i10++) {
            if (f0VarP.c(i10)) {
                this.f12177a[i10].f();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    private void q0() {
        boolean z10;
        boolean z11 = false;
        while (B1()) {
            if (z11) {
                j0();
            }
            this.f12182c0 = false;
            y2 y2Var = (y2) androidx.media3.common.util.a.e(this.f12199s.b());
            if (this.D.f12232b.f12571a.equals(y2Var.f13063h.f13076a.f12571a)) {
                androidx.media3.exoplayer.source.r.b bVar = this.D.f12232b;
                if (bVar.f12572b == -1) {
                    androidx.media3.exoplayer.source.r.b bVar2 = y2Var.f13063h.f13076a;
                    if (bVar2.f12572b != -1 || bVar.f12575e == bVar2.f12575e) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            z2 z2Var = y2Var.f13063h;
            androidx.media3.exoplayer.source.r.b bVar3 = z2Var.f13076a;
            long j10 = z2Var.f13077b;
            this.D = X(bVar3, j10, z2Var.f13078c, j10, !z10, 0);
            L0();
            T1();
            if (r() && y2Var == this.f12199s.x()) {
                i0();
            }
            if (this.D.f12235e == 3) {
                G1();
            }
            q();
            z11 = true;
        }
    }

    private boolean r() {
        if (!this.A) {
            return false;
        }
        for (a4 a4Var : this.f12177a) {
            if (a4Var.u()) {
                return true;
            }
        }
        return false;
    }

    private void r0(boolean z10) {
        if (this.Z.f10674a == C.TIME_UNSET) {
            return;
        }
        if (z10 || !this.D.f12231a.equals(this.f12178a0)) {
            androidx.media3.common.e0 e0Var = this.D.f12231a;
            this.f12178a0 = e0Var;
            this.f12199s.B(e0Var);
        }
        h0();
    }

    private void r1(int i10) throws ExoPlaybackException {
        this.L = i10;
        int iY = this.f12199s.Y(this.D.f12231a, i10);
        if ((iY & 1) != 0) {
            V0(true);
        } else if ((iY & 2) != 0) {
            x();
        }
        R(false);
    }

    private void s0() throws ExoPlaybackException {
        y2 y2VarX;
        if (this.H || !this.A || this.f12182c0 || r() || (y2VarX = this.f12199s.x()) == null || y2VarX != this.f12199s.y() || y2VarX.k() == null || !y2VarX.k().f13061f) {
            return;
        }
        this.f12199s.c();
        k0();
    }

    private void s1(c4 c4Var) {
        this.C = c4Var;
    }

    private void t() throws ExoPlaybackException {
        J0();
    }

    private void t0() {
        y2 y2VarY = this.f12199s.y();
        if (y2VarY == null) {
            return;
        }
        int i10 = 0;
        if (y2VarY.k() == null || this.H) {
            if (y2VarY.f13063h.f13085j || this.H) {
                a4[] a4VarArr = this.f12177a;
                int length = a4VarArr.length;
                while (i10 < length) {
                    a4 a4Var = a4VarArr[i10];
                    if (a4Var.w(y2VarY) && a4Var.r(y2VarY)) {
                        long j10 = y2VarY.f13063h.f13080e;
                        a4Var.O(y2VarY, (j10 == C.TIME_UNSET || j10 == Long.MIN_VALUE) ? -9223372036854775807L : y2VarY.m() + y2VarY.f13063h.f13080e);
                    }
                    i10++;
                }
                return;
            }
            return;
        }
        if (Y()) {
            if (r() && this.f12199s.x() == this.f12199s.y()) {
                return;
            }
            if (y2VarY.k().f13061f || this.S >= y2VarY.k().n()) {
                i2.f0 f0VarP = y2VarY.p();
                y2 y2VarD = this.f12199s.d();
                i2.f0 f0VarP2 = y2VarD.p();
                androidx.media3.common.e0 e0Var = this.D.f12231a;
                U1(e0Var, y2VarD.f13063h.f13076a, e0Var, y2VarY.f13063h.f13076a, C.TIME_UNSET, false);
                if (y2VarD.f13061f && ((this.A && this.f12180b0 != C.TIME_UNSET) || y2VarD.f13056a.readDiscontinuity() != C.TIME_UNSET)) {
                    this.f12180b0 = C.TIME_UNSET;
                    boolean z10 = this.A && !this.f12182c0;
                    if (z10) {
                        for (int i11 = 0; i11 < this.f12177a.length; i11++) {
                            if (f0VarP2.c(i11) && !androidx.media3.common.y.a(f0VarP2.f61646c[i11].getSelectedFormat().f9849o, f0VarP2.f61646c[i11].getSelectedFormat().f9845k) && !this.f12177a[i11].u()) {
                                z10 = false;
                                break;
                            }
                        }
                    }
                    if (!z10) {
                        c1(y2VarD.n());
                        if (y2VarD.s()) {
                            return;
                        }
                        this.f12199s.O(y2VarD);
                        R(false);
                        g0();
                        return;
                    }
                }
                a4[] a4VarArr2 = this.f12177a;
                int length2 = a4VarArr2.length;
                while (i10 < length2) {
                    a4VarArr2[i10].F(f0VarP, f0VarP2, y2VarD.n());
                    i10++;
                }
            }
        }
    }

    private void u0() {
        y2 y2VarY = this.f12199s.y();
        if (y2VarY == null || this.f12199s.u() == y2VarY || y2VarY.f13064i || !X1()) {
            return;
        }
        this.f12199s.y().f13064i = true;
    }

    private void u1(boolean z10) throws ExoPlaybackException {
        this.M = z10;
        int iZ = this.f12199s.Z(this.D.f12231a, z10);
        if ((iZ & 1) != 0) {
            V0(true);
        } else if ((iZ & 2) != 0) {
            x();
        }
        R(false);
    }

    public y2 v(z2 z2Var, long j10) {
        return new y2(this.f12179b, j10, this.f12183d, this.f12186f.getAllocator(), this.f12200t, z2Var, this.f12185e, this.Z.f10674a);
    }

    private void v0() throws Throwable {
        T(this.f12200t.i(), true);
    }

    private void v1(f2.v vVar) throws Throwable {
        this.E.b(1);
        T(this.f12200t.D(vVar), false);
    }

    private void w(t3 t3Var) {
        if (t3Var.i()) {
            return;
        }
        try {
            t3Var.f().handleMessage(t3Var.h(), t3Var.d());
        } finally {
            t3Var.j(true);
        }
    }

    private void w0(c cVar) {
        this.E.b(1);
        throw null;
    }

    private void w1(int i10) {
        r3 r3Var = this.D;
        if (r3Var.f12235e != i10) {
            if (i10 != 2) {
                this.Y = C.TIME_UNSET;
            }
            this.D = r3Var.h(i10);
        }
    }

    private void x() {
        if (this.A && r()) {
            for (a4 a4Var : this.f12177a) {
                int iH = a4Var.h();
                a4Var.c(this.f12195o);
                this.Q -= iH - a4Var.h();
            }
            this.f12180b0 = C.TIME_UNSET;
        }
    }

    private void x0() {
        for (y2 y2VarU = this.f12199s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
            for (i2.z zVar : y2VarU.p().f61646c) {
                if (zVar != null) {
                    zVar.a();
                }
            }
        }
    }

    private void y(int i10) {
        int iH = this.f12177a[i10].h();
        this.f12177a[i10].b(this.f12195o);
        m0(i10, false);
        this.Q -= iH;
    }

    private void y0(boolean z10) {
        for (y2 y2VarU = this.f12199s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
            for (i2.z zVar : y2VarU.p().f61646c) {
                if (zVar != null) {
                    zVar.b(z10);
                }
            }
        }
    }

    private void y1(Object obj, AtomicBoolean atomicBoolean) {
        for (a4 a4Var : this.f12177a) {
            a4Var.S(obj);
        }
        int i10 = this.D.f12235e;
        if (i10 == 3 || i10 == 2) {
            this.f12188h.sendEmptyMessage(2);
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void z() {
        for (int i10 = 0; i10 < this.f12177a.length; i10++) {
            y(i10);
        }
        this.f12180b0 = C.TIME_UNSET;
    }

    private void z0() {
        for (y2 y2VarU = this.f12199s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
            for (i2.z zVar : y2VarU.p().f61646c) {
                if (zVar != null) {
                    zVar.c();
                }
            }
        }
    }

    @Override
    public void h(androidx.media3.exoplayer.source.q qVar) {
        this.f12188h.obtainMessage(9, qVar).a();
    }

    public void B0() {
        this.f12188h.obtainMessage(29).a();
    }

    public synchronized boolean D0() {
        if (!this.F && this.f12190j.getThread().isAlive()) {
            this.f12188h.sendEmptyMessage(7);
            Z1(new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return this.f11817a.e0();
                }
            }, this.f12202v);
            return this.F;
        }
        return true;
    }

    public void E(long j10) {
        this.X = j10;
    }

    public void H0(int i10, int i11, f2.v vVar) {
        this.f12188h.obtainMessage(20, i10, i11, vVar).a();
    }

    public void H1() {
        this.f12188h.obtainMessage(6).a();
    }

    public Looper K() {
        return this.f12190j;
    }

    public void M1(int i10, int i11, List list) {
        this.f12188h.obtainMessage(27, i10, i11, list).a();
    }

    public void U0(androidx.media3.common.e0 e0Var, int i10, long j10) {
        this.f12188h.obtainMessage(3, new h(e0Var, i10, j10)).a();
    }

    @Override
    public void a() {
        this.f12188h.removeMessages(2);
        this.f12188h.sendEmptyMessage(22);
    }

    @Override
    public void b(w3 w3Var) {
        this.f12188h.sendEmptyMessage(26);
    }

    @Override
    public synchronized void c(t3 t3Var) {
        if (!this.F && this.f12190j.getThread().isAlive()) {
            this.f12188h.obtainMessage(14, t3Var).a();
            return;
        }
        androidx.media3.common.util.u.h("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        t3Var.j(false);
    }

    public void d1(androidx.media3.common.c cVar, boolean z10) {
        this.f12188h.obtainMessage(31, z10 ? 1 : 0, 0, cVar).a();
    }

    @Override
    public void g(androidx.media3.exoplayer.source.q qVar) {
        this.f12188h.obtainMessage(8, qVar).a();
    }

    /* JADX WARN: Code duplicated, block: B:121:0x023b  */
    /* JADX WARN: Code duplicated, block: B:123:0x023f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0292  */
    /* JADX WARN: Code duplicated, block: B:145:0x02bc  */
    @Override
    public boolean handleMessage(Message message) throws Throwable {
        ExoPlaybackException exoPlaybackException;
        ExoPlaybackException exoPlaybackException2;
        int i10;
        y2 y2VarY;
        int i11 = 1000;
        try {
            switch (message.what) {
                case 1:
                    boolean z10 = message.arg1 != 0;
                    int i12 = message.arg2;
                    m1(z10, i12 >> 4, true, i12 & 15);
                    break;
                case 2:
                    A();
                    break;
                case 3:
                    W0((h) message.obj);
                    break;
                case 4:
                    o1((androidx.media3.common.z) message.obj);
                    break;
                case 5:
                    s1((c4) message.obj);
                    break;
                case 6:
                    I1(false, true);
                    break;
                case 7:
                    E0();
                    return true;
                case 8:
                    U((androidx.media3.exoplayer.source.q) message.obj);
                    break;
                case 9:
                    P((androidx.media3.exoplayer.source.q) message.obj);
                    break;
                case 10:
                    I0();
                    break;
                case 11:
                    r1(message.arg1);
                    break;
                case 12:
                    u1(message.arg1 != 0);
                    break;
                case 13:
                    f1(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    Z0((t3) message.obj);
                    break;
                case 15:
                    b1((t3) message.obj);
                    break;
                case 16:
                    W((androidx.media3.common.z) message.obj, false);
                    break;
                case 17:
                    h1((b) message.obj);
                    break;
                case 18:
                    o((b) message.obj, message.arg1);
                    break;
                case 19:
                    android.support.v4.media.session.c.a(message.obj);
                    w0(null);
                    break;
                case 20:
                    G0(message.arg1, message.arg2, (f2.v) message.obj);
                    break;
                case 21:
                    v1((f2.v) message.obj);
                    break;
                case 22:
                    v0();
                    break;
                case 23:
                    k1(message.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    t();
                    break;
                case 26:
                    J0();
                    break;
                case 27:
                    N1(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    p1((ExoPlayer.c) message.obj);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    C0();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    y1(pair.first, (AtomicBoolean) pair.second);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    e1((androidx.media3.common.c) message.obj, message.arg1 != 0);
                    break;
                case 32:
                    A1(((Float) message.obj).floatValue());
                    break;
                case 33:
                    N(message.arg1);
                    break;
                case 34:
                    O();
                    break;
            }
        } catch (ParserException e10) {
            int i13 = e10.dataType;
            if (i13 == 1) {
                i11 = e10.contentIsMalformed ? 3001 : 3003;
            } else if (i13 == 4) {
                i11 = e10.contentIsMalformed ? 3002 : 3004;
            }
            Q(e10, i11);
        } catch (DataSourceException e11) {
            Q(e11, e11.reason);
        } catch (ExoPlaybackException e12) {
            ExoPlaybackException exoPlaybackExceptionCopyWithMediaPeriodId = e12;
            if (exoPlaybackExceptionCopyWithMediaPeriodId.type == 1 && (y2VarY = this.f12199s.y()) != null) {
                a4[] a4VarArr = this.f12177a;
                int i14 = exoPlaybackExceptionCopyWithMediaPeriodId.rendererIndex;
                exoPlaybackExceptionCopyWithMediaPeriodId = exoPlaybackExceptionCopyWithMediaPeriodId.copyWithMediaPeriodId((!a4VarArr[i14 % a4VarArr.length].z(i14) || y2VarY.k() == null) ? y2VarY.f13063h.f13076a : y2VarY.k().f13063h.f13076a);
            }
            if (exoPlaybackExceptionCopyWithMediaPeriodId.type == 1) {
                a4[] a4VarArr2 = this.f12177a;
                int i15 = exoPlaybackExceptionCopyWithMediaPeriodId.rendererIndex;
                if (a4VarArr2[i15 % a4VarArr2.length].z(i15)) {
                    this.f12182c0 = true;
                    x();
                    y2 y2VarX = this.f12199s.x();
                    y2 y2VarU = this.f12199s.u();
                    if (this.f12199s.u() != y2VarX) {
                        while (y2VarU != null && y2VarU.k() != y2VarX) {
                            y2VarU = y2VarU.k();
                        }
                    }
                    this.f12199s.O(y2VarU);
                    if (this.D.f12235e != 4) {
                        g0();
                        this.f12188h.sendEmptyMessage(2);
                    }
                } else {
                    exoPlaybackException = this.W;
                    if (exoPlaybackException != null) {
                        exoPlaybackException.addSuppressed(exoPlaybackExceptionCopyWithMediaPeriodId);
                        exoPlaybackExceptionCopyWithMediaPeriodId = this.W;
                    }
                    exoPlaybackException2 = exoPlaybackExceptionCopyWithMediaPeriodId;
                    if (exoPlaybackException2.type != 1 && this.f12199s.u() != this.f12199s.y()) {
                        while (this.f12199s.u() != this.f12199s.y()) {
                            this.f12199s.b();
                        }
                        y2 y2Var = (y2) androidx.media3.common.util.a.e(this.f12199s.u());
                        j0();
                        z2 z2Var = y2Var.f13063h;
                        androidx.media3.exoplayer.source.r.b bVar = z2Var.f13076a;
                        long j10 = z2Var.f13077b;
                        this.D = X(bVar, j10, z2Var.f13078c, j10, true, 0);
                    }
                    if (exoPlaybackException2.isRecoverable || !(this.W == null || (i10 = exoPlaybackException2.errorCode) == 5004 || i10 == 5003)) {
                        androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException2);
                        I1(true, false);
                        this.D = this.D.f(exoPlaybackException2);
                    } else {
                        androidx.media3.common.util.u.i("ExoPlayerImplInternal", "Recoverable renderer error", exoPlaybackException2);
                        if (this.W == null) {
                            this.W = exoPlaybackException2;
                        }
                        androidx.media3.common.util.p pVar = this.f12188h;
                        pVar.b(pVar.obtainMessage(25, exoPlaybackException2));
                    }
                }
            } else {
                exoPlaybackException = this.W;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(exoPlaybackExceptionCopyWithMediaPeriodId);
                    exoPlaybackExceptionCopyWithMediaPeriodId = this.W;
                }
                exoPlaybackException2 = exoPlaybackExceptionCopyWithMediaPeriodId;
                if (exoPlaybackException2.type != 1) {
                }
                if (exoPlaybackException2.isRecoverable) {
                    androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException2);
                    I1(true, false);
                    this.D = this.D.f(exoPlaybackException2);
                } else {
                    androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException2);
                    I1(true, false);
                    this.D = this.D.f(exoPlaybackException2);
                }
            }
        } catch (DrmSession.DrmSessionException e13) {
            Q(e13, e13.errorCode);
        } catch (BehindLiveWindowException e14) {
            Q(e14, 1002);
        } catch (IOException e15) {
            Q(e15, 2000);
        } catch (RuntimeException e16) {
            ExoPlaybackException exoPlaybackExceptionCreateForUnexpected = ExoPlaybackException.createForUnexpected(e16, ((e16 instanceof IllegalStateException) || (e16 instanceof IllegalArgumentException)) ? 1004 : 1000);
            androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForUnexpected);
            I1(true, false);
            this.D = this.D.f(exoPlaybackExceptionCreateForUnexpected);
        }
        j0();
        return true;
    }

    public void i1(List list, int i10, long j10, f2.v vVar) {
        this.f12188h.obtainMessage(17, new b(list, vVar, i10, j10, null)).a();
    }

    public void l1(boolean z10, int i10, int i11) {
        this.f12188h.obtainMessage(1, z10 ? 1 : 0, i10 | (i11 << 4)).a();
    }

    public void n1(androidx.media3.common.z zVar) {
        this.f12188h.obtainMessage(4, zVar).a();
    }

    @Override
    public void onPlaybackParametersChanged(androidx.media3.common.z zVar) {
        this.f12188h.obtainMessage(16, zVar).a();
    }

    @Override
    public void onTrackSelectionsInvalidated() {
        this.f12188h.sendEmptyMessage(10);
    }

    public void p(int i10, List list, f2.v vVar) {
        this.f12188h.obtainMessage(18, i10, 0, new b(list, vVar, -1, C.TIME_UNSET, null)).a();
    }

    public void q1(int i10) {
        this.f12188h.obtainMessage(11, i10, 0).a();
    }

    @Override
    public void s(float f10) {
        this.f12188h.sendEmptyMessage(34);
    }

    public void t1(boolean z10) {
        this.f12188h.obtainMessage(12, z10 ? 1 : 0, 0).a();
    }

    @Override
    public void u(int i10) {
        this.f12188h.obtainMessage(33, i10, 0).a();
    }

    public synchronized boolean x1(Object obj, long j10) {
        if (!this.F && this.f12190j.getThread().isAlive()) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.f12188h.obtainMessage(30, new Pair(obj, atomicBoolean)).a();
            if (j10 == C.TIME_UNSET) {
                return true;
            }
            Z1(new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return Boolean.valueOf(atomicBoolean.get());
                }
            }, j10);
            return atomicBoolean.get();
        }
        return true;
    }

    public void z1(float f10) {
        this.f12188h.obtainMessage(32, Float.valueOf(f10)).a();
    }
}
