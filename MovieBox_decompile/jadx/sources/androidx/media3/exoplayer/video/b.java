package androidx.media3.exoplayer.video;

import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.media3.common.m0;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.o0;
import androidx.media3.common.util.q0;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.s2;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public abstract class b extends androidx.media3.exoplayer.i {
    private VideoDecoderOutputBuffer A;
    private int B;
    private Object C;
    private Surface D;
    private s E;
    private t F;
    private DrmSession G;
    private DrmSession H;
    private int I;
    private boolean J;
    private int K;
    private long L;
    private long M;
    private boolean N;
    private boolean O;
    private boolean P;
    private m0 Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private long V;
    protected androidx.media3.exoplayer.j W;

    private final long f12766r;

    private final int f12767s;

    private final i0.a f12768t;

    private final o0 f12769u;

    private final DecoderInputBuffer f12770v;

    private androidx.media3.common.r f12771w;

    private androidx.media3.common.r f12772x;

    private androidx.media3.decoder.g f12773y;

    private DecoderInputBuffer f12774z;

    protected b(long j10, Handler handler, i0 i0Var, int i10) {
        super(2);
        this.f12766r = j10;
        this.f12767s = i10;
        this.M = C.TIME_UNSET;
        this.f12769u = new o0();
        this.f12770v = DecoderInputBuffer.f();
        this.f12768t = new i0.a(handler, i0Var);
        this.I = 0;
        this.B = -1;
        this.K = 0;
        this.W = new androidx.media3.exoplayer.j();
    }

    private boolean S(long j10, long j11) throws ExoPlaybackException {
        if (this.A == null) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) ((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f12773y)).dequeueOutputBuffer();
            this.A = videoDecoderOutputBuffer;
            if (videoDecoderOutputBuffer == null) {
                return false;
            }
            androidx.media3.exoplayer.j jVar = this.W;
            int i10 = jVar.f11724f;
            int i11 = videoDecoderOutputBuffer.skippedOutputBufferCount;
            jVar.f11724f = i10 + i11;
            this.U -= i11;
        }
        if (!this.A.isEndOfStream()) {
            boolean zN0 = n0(j10, j11);
            if (zN0) {
                l0(((VideoDecoderOutputBuffer) androidx.media3.common.util.a.e(this.A)).timeUs);
                this.A = null;
            }
            return zN0;
        }
        if (this.I == 2) {
            o0();
            b0();
        } else {
            this.A.release();
            this.A = null;
            this.P = true;
        }
        return false;
    }

    private boolean U() throws ExoPlaybackException {
        androidx.media3.decoder.g gVar = this.f12773y;
        if (gVar == null || this.I == 2 || this.O) {
            return false;
        }
        if (this.f12774z == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) gVar.dequeueInputBuffer();
            this.f12774z = decoderInputBuffer;
            if (decoderInputBuffer == null) {
                return false;
            }
        }
        DecoderInputBuffer decoderInputBuffer2 = (DecoderInputBuffer) androidx.media3.common.util.a.e(this.f12774z);
        if (this.I == 1) {
            decoderInputBuffer2.setFlags(4);
            ((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f12773y)).queueInputBuffer(decoderInputBuffer2);
            this.f12774z = null;
            this.I = 2;
            return false;
        }
        s2 s2VarU = u();
        int iN = N(s2VarU, decoderInputBuffer2, 0);
        if (iN == -5) {
            h0(s2VarU);
            return true;
        }
        if (iN != -4) {
            if (iN == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        if (decoderInputBuffer2.isEndOfStream()) {
            this.O = true;
            ((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f12773y)).queueInputBuffer(decoderInputBuffer2);
            this.f12774z = null;
            return false;
        }
        if (this.N) {
            this.f12769u.a(decoderInputBuffer2.f10608e, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.f12771w));
            this.N = false;
        }
        decoderInputBuffer2.d();
        decoderInputBuffer2.f10604a = this.f12771w;
        m0(decoderInputBuffer2);
        ((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f12773y)).queueInputBuffer(decoderInputBuffer2);
        this.U++;
        this.J = true;
        this.W.f11721c++;
        this.f12774z = null;
        return true;
    }

    private boolean W() {
        return this.B != -1;
    }

    private static boolean X(long j10) {
        return j10 < -30000;
    }

    private static boolean Y(long j10) {
        return j10 < -500000;
    }

    private void Z(int i10) {
        this.K = Math.min(this.K, i10);
    }

    private void b0() throws ExoPlaybackException {
        androidx.media3.decoder.b bVarC;
        if (this.f12773y != null) {
            return;
        }
        r0(this.H);
        DrmSession drmSession = this.G;
        if (drmSession != null) {
            bVarC = drmSession.c();
            if (bVarC == null && this.G.getError() == null) {
                return;
            }
        } else {
            bVarC = null;
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            androidx.media3.decoder.g gVarR = R((androidx.media3.common.r) androidx.media3.common.util.a.e(this.f12771w), bVarC);
            this.f12773y = gVarR;
            gVarR.a(w());
            s0(this.B);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f12768t.k(((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f12773y)).getName(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.W.f11719a++;
        } catch (DecoderException e10) {
            androidx.media3.common.util.u.d("DecoderVideoRenderer", "Video codec error", e10);
            this.f12768t.C(e10);
            throw q(e10, this.f12771w, 4001);
        } catch (OutOfMemoryError e11) {
            throw q(e11, this.f12771w, 4001);
        }
    }

    private void c0() {
        if (this.S > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f12768t.n(this.S, jElapsedRealtime - this.R);
            this.S = 0;
            this.R = jElapsedRealtime;
        }
    }

    private void d0() {
        if (this.K != 3) {
            this.K = 3;
            Object obj = this.C;
            if (obj != null) {
                this.f12768t.A(obj);
            }
        }
    }

    private void e0(int i10, int i11) {
        m0 m0Var = this.Q;
        if (m0Var != null && m0Var.f9803a == i10 && m0Var.f9804b == i11) {
            return;
        }
        m0 m0Var2 = new m0(i10, i11);
        this.Q = m0Var2;
        this.f12768t.D(m0Var2);
    }

    private void f0() {
        Object obj;
        if (this.K != 3 || (obj = this.C) == null) {
            return;
        }
        this.f12768t.A(obj);
    }

    private void g0() {
        m0 m0Var = this.Q;
        if (m0Var != null) {
            this.f12768t.D(m0Var);
        }
    }

    private void i0() {
        g0();
        Z(1);
        if (getState() == 2) {
            t0();
        }
    }

    private void j0() {
        this.Q = null;
        Z(1);
    }

    private void k0() {
        g0();
        f0();
    }

    private boolean n0(long j10, long j11) {
        if (this.L == C.TIME_UNSET) {
            this.L = j10;
        }
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) androidx.media3.common.util.a.e(this.A);
        long j12 = videoDecoderOutputBuffer.timeUs;
        long j13 = j12 - j10;
        if (!W()) {
            if (!X(j13)) {
                return false;
            }
            A0(videoDecoderOutputBuffer);
            return true;
        }
        androidx.media3.common.r rVar = (androidx.media3.common.r) this.f12769u.j(j12);
        if (rVar != null) {
            this.f12772x = rVar;
        } else if (this.f12772x == null) {
            this.f12772x = (androidx.media3.common.r) this.f12769u.i();
        }
        long jZ = j12 - z();
        if (y0(j13)) {
            p0(videoDecoderOutputBuffer, jZ, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.f12772x));
            return true;
        }
        if (getState() != 2 || j10 == this.L || (w0(j13, j11) && a0(j10))) {
            return false;
        }
        if (x0(j13, j11)) {
            T(videoDecoderOutputBuffer);
            return true;
        }
        if (j13 < 30000) {
            p0(videoDecoderOutputBuffer, jZ, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.f12772x));
            return true;
        }
        return false;
    }

    private void r0(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.G, drmSession);
        this.G = drmSession;
    }

    private void t0() {
        this.M = this.f12766r > 0 ? SystemClock.elapsedRealtime() + this.f12766r : C.TIME_UNSET;
    }

    private void v0(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.H, drmSession);
        this.H = drmSession;
    }

    private boolean y0(long j10) {
        boolean z10 = getState() == 2;
        int i10 = this.K;
        if (i10 == 0) {
            return z10;
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 3) {
            return z10 && z0(j10, a1.R0(SystemClock.elapsedRealtime()) - this.V);
        }
        throw new IllegalStateException();
    }

    protected void A0(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.W.f11724f++;
        videoDecoderOutputBuffer.release();
    }

    protected void B0(int i10, int i11) {
        androidx.media3.exoplayer.j jVar = this.W;
        jVar.f11726h += i10;
        int i12 = i10 + i11;
        jVar.f11725g += i12;
        this.S += i12;
        int i13 = this.T + i12;
        this.T = i13;
        jVar.f11727i = Math.max(i13, jVar.f11727i);
        int i14 = this.f12767s;
        if (i14 <= 0 || this.S < i14) {
            return;
        }
        c0();
    }

    @Override
    protected void C() {
        this.f12771w = null;
        this.Q = null;
        Z(0);
        try {
            v0(null);
            o0();
        } finally {
            this.f12768t.m(this.W);
        }
    }

    @Override
    protected void D(boolean z10, boolean z11) {
        androidx.media3.exoplayer.j jVar = new androidx.media3.exoplayer.j();
        this.W = jVar;
        this.f12768t.o(jVar);
        this.K = z11 ? 1 : 0;
    }

    @Override
    protected void F(long j10, boolean z10) throws ExoPlaybackException {
        this.O = false;
        this.P = false;
        Z(1);
        this.L = C.TIME_UNSET;
        this.T = 0;
        if (this.f12773y != null) {
            V();
        }
        if (z10) {
            t0();
        } else {
            this.M = C.TIME_UNSET;
        }
        this.f12769u.c();
    }

    @Override
    protected void J() {
        this.S = 0;
        this.R = SystemClock.elapsedRealtime();
        this.V = a1.R0(SystemClock.elapsedRealtime());
    }

    @Override
    protected void K() {
        this.M = C.TIME_UNSET;
        c0();
    }

    @Override
    protected void L(androidx.media3.common.r[] rVarArr, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar) {
        super.L(rVarArr, j10, j11, bVar);
    }

    protected androidx.media3.exoplayer.k Q(String str, androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        return new androidx.media3.exoplayer.k(str, rVar, rVar2, 0, 1);
    }

    protected abstract androidx.media3.decoder.g R(androidx.media3.common.r rVar, androidx.media3.decoder.b bVar);

    protected void T(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        B0(0, 1);
        videoDecoderOutputBuffer.release();
    }

    protected void V() throws ExoPlaybackException {
        this.U = 0;
        if (this.I != 0) {
            o0();
            b0();
            return;
        }
        this.f12774z = null;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.A;
        if (videoDecoderOutputBuffer != null) {
            videoDecoderOutputBuffer.release();
            this.A = null;
        }
        androidx.media3.decoder.g gVar = (androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f12773y);
        gVar.flush();
        gVar.a(w());
        this.J = false;
    }

    protected boolean a0(long j10) throws ExoPlaybackException {
        int iP = P(j10);
        if (iP == 0) {
            return false;
        }
        this.W.f11728j++;
        B0(iP, this.U);
        V();
        return true;
    }

    @Override
    public void c() {
        if (this.K == 0) {
            this.K = 1;
        }
    }

    protected void h0(s2 s2Var) throws ExoPlaybackException {
        this.N = true;
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12258b);
        v0(s2Var.f12257a);
        androidx.media3.common.r rVar2 = this.f12771w;
        this.f12771w = rVar;
        androidx.media3.decoder.g gVar = this.f12773y;
        if (gVar == null) {
            b0();
            this.f12768t.p((androidx.media3.common.r) androidx.media3.common.util.a.e(this.f12771w), null);
            return;
        }
        androidx.media3.exoplayer.k kVar = this.H != this.G ? new androidx.media3.exoplayer.k(gVar.getName(), (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar2), rVar, 0, 128) : Q(gVar.getName(), (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar2), rVar);
        if (kVar.f11741d == 0) {
            if (this.J) {
                this.I = 1;
            } else {
                o0();
                b0();
            }
        }
        this.f12768t.p((androidx.media3.common.r) androidx.media3.common.util.a.e(this.f12771w), kVar);
    }

    @Override
    public void handleMessage(int i10, Object obj) {
        if (i10 == 1) {
            u0(obj);
        } else if (i10 == 7) {
            this.F = (t) obj;
        } else {
            super.handleMessage(i10, obj);
        }
    }

    @Override
    public boolean isEnded() {
        return this.P;
    }

    @Override
    public boolean isReady() {
        if (this.f12771w != null && ((B() || this.A != null) && (this.K == 3 || !W()))) {
            this.M = C.TIME_UNSET;
            return true;
        }
        if (this.M == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.M) {
            return true;
        }
        this.M = C.TIME_UNSET;
        return false;
    }

    protected void l0(long j10) {
        this.U--;
    }

    protected void o0() {
        this.f12774z = null;
        this.A = null;
        this.I = 0;
        this.J = false;
        this.U = 0;
        androidx.media3.decoder.g gVar = this.f12773y;
        if (gVar != null) {
            this.W.f11720b++;
            gVar.release();
            this.f12768t.l(this.f12773y.getName());
            this.f12773y = null;
        }
        r0(null);
    }

    protected void p0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, long j10, androidx.media3.common.r rVar) {
        t tVar = this.F;
        if (tVar != null) {
            tVar.f(j10, s().nanoTime(), rVar, null);
        }
        this.V = a1.R0(SystemClock.elapsedRealtime());
        int i10 = videoDecoderOutputBuffer.mode;
        boolean z10 = i10 == 1 && this.D != null;
        boolean z11 = i10 == 0 && this.E != null;
        if (!z11 && !z10) {
            T(videoDecoderOutputBuffer);
            return;
        }
        e0(videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height);
        if (z11) {
            ((s) androidx.media3.common.util.a.e(this.E)).setOutputBuffer(videoDecoderOutputBuffer);
        } else {
            q0(videoDecoderOutputBuffer, (Surface) androidx.media3.common.util.a.e(this.D));
        }
        this.T = 0;
        this.W.f11723e++;
        d0();
    }

    protected abstract void q0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface);

    @Override
    public void render(long j10, long j11) throws ExoPlaybackException {
        if (this.P) {
            return;
        }
        if (this.f12771w == null) {
            s2 s2VarU = u();
            this.f12770v.clear();
            int iN = N(s2VarU, this.f12770v, 2);
            if (iN != -5) {
                if (iN == -4) {
                    androidx.media3.common.util.a.g(this.f12770v.isEndOfStream());
                    this.O = true;
                    this.P = true;
                    return;
                }
                return;
            }
            h0(s2VarU);
        }
        b0();
        if (this.f12773y != null) {
            try {
                q0.a("drainAndFeed");
                while (S(j10, j11)) {
                }
                while (U()) {
                }
                q0.b();
                this.W.c();
            } catch (DecoderException e10) {
                androidx.media3.common.util.u.d("DecoderVideoRenderer", "Video codec error", e10);
                this.f12768t.C(e10);
                throw q(e10, this.f12771w, 4003);
            }
        }
    }

    protected abstract void s0(int i10);

    protected final void u0(Object obj) {
        if (obj instanceof Surface) {
            this.D = (Surface) obj;
            this.E = null;
            this.B = 1;
        } else if (obj instanceof s) {
            this.D = null;
            this.E = (s) obj;
            this.B = 0;
        } else {
            this.D = null;
            this.E = null;
            this.B = -1;
            obj = null;
        }
        if (this.C == obj) {
            if (obj != null) {
                k0();
                return;
            }
            return;
        }
        this.C = obj;
        if (obj == null) {
            j0();
            return;
        }
        if (this.f12773y != null) {
            s0(this.B);
        }
        i0();
    }

    protected boolean w0(long j10, long j11) {
        return Y(j10);
    }

    protected boolean x0(long j10, long j11) {
        return X(j10);
    }

    protected boolean z0(long j10, long j11) {
        return X(j10) && j11 > 100000;
    }

    protected void m0(DecoderInputBuffer decoderInputBuffer) {
    }
}
