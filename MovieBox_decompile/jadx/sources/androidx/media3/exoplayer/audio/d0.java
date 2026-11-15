package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.x2;
import androidx.media3.exoplayer.x3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import org.mvel2.ast.ASTNode;

public abstract class d0 extends androidx.media3.exoplayer.i implements x2 {
    private DecoderInputBuffer A;
    private SimpleDecoderOutputBuffer B;
    private DrmSession C;
    private DrmSession D;
    private int E;
    private boolean F;
    private boolean G;
    private long H;
    private boolean I;
    private boolean J;
    private boolean K;
    private long L;
    private final long[] M;
    private int N;
    private boolean O;
    private boolean P;
    private long Q;
    private long R;
    private long S;
    private boolean T;

    private final x.a f10826r;

    private final AudioSink f10827s;

    private final DecoderInputBuffer f10828t;

    private androidx.media3.exoplayer.j f10829u;

    private androidx.media3.common.r f10830v;

    private int f10831w;

    private int f10832x;

    private boolean f10833y;

    private androidx.media3.decoder.g f10834z;

    private static final class b {
        public static void a(AudioSink audioSink, Object obj) {
            audioSink.h((AudioDeviceInfo) obj);
        }
    }

    private final class c implements AudioSink.b {
        private c() {
        }

        @Override
        public void a(Exception exc) {
            androidx.media3.common.util.u.d("DecoderAudioRenderer", "Audio sink error", exc);
            d0.this.f10826r.n(exc);
        }

        @Override
        public void b(long j10) {
            d0.this.f10826r.H(j10);
        }

        @Override
        public void c() {
            z.c(this);
        }

        @Override
        public void d() {
            z.b(this);
        }

        @Override
        public void e() {
            d0.this.O = true;
        }

        @Override
        public void f() {
            z.a(this);
        }

        @Override
        public void j(AudioSink.a aVar) {
            d0.this.f10826r.o(aVar);
        }

        @Override
        public void k(AudioSink.a aVar) {
            d0.this.f10826r.p(aVar);
        }

        @Override
        public void onPositionDiscontinuity() {
            d0.this.c0();
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z10) {
            d0.this.f10826r.I(z10);
        }

        @Override
        public void onUnderrun(int i10, long j10, long j11) {
            d0.this.f10826r.J(i10, j10, j11);
        }
    }

    public d0() {
        this((Handler) null, (x) null, new AudioProcessor[0]);
    }

    private boolean U() throws ExoPlaybackException {
        if (this.B == null) {
            SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) this.f10834z.dequeueOutputBuffer();
            this.B = simpleDecoderOutputBuffer;
            if (simpleDecoderOutputBuffer == null) {
                return false;
            }
            int i10 = simpleDecoderOutputBuffer.skippedOutputBufferCount;
            if (i10 > 0) {
                this.f10829u.f11724f += i10;
                this.f10827s.handleDiscontinuity();
            }
            if (this.B.isFirstSample()) {
                e0();
            }
        }
        if (this.B.isEndOfStream()) {
            if (this.E == 2) {
                f0();
                a0();
                this.G = true;
            } else {
                this.B.release();
                this.B = null;
                try {
                    d0();
                } catch (AudioSink.WriteException e10) {
                    throw r(e10, e10.format, e10.isRecoverable, 5002);
                }
            }
            return false;
        }
        this.S = C.TIME_UNSET;
        if (this.G) {
            this.f10827s.l(Y(this.f10834z).b().Z(this.f10831w).a0(this.f10832x).n0(this.f10830v.f9846l).X(this.f10830v.f9847m).f0(this.f10830v.f9835a).h0(this.f10830v.f9836b).i0(this.f10830v.f9837c).j0(this.f10830v.f9838d).w0(this.f10830v.f9839e).s0(this.f10830v.f9840f).N(), 0, X(this.f10834z));
            this.G = false;
        }
        AudioSink audioSink = this.f10827s;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer2 = this.B;
        if (!audioSink.c(simpleDecoderOutputBuffer2.f10627b, simpleDecoderOutputBuffer2.timeUs, 1)) {
            this.S = this.B.timeUs;
            return false;
        }
        this.f10829u.f11723e++;
        this.B.release();
        this.B = null;
        return true;
    }

    private boolean V() throws ExoPlaybackException {
        androidx.media3.decoder.g gVar = this.f10834z;
        if (gVar == null || this.E == 2 || this.J) {
            return false;
        }
        if (this.A == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) gVar.dequeueInputBuffer();
            this.A = decoderInputBuffer;
            if (decoderInputBuffer == null) {
                return false;
            }
        }
        if (this.E == 1) {
            this.A.setFlags(4);
            this.f10834z.queueInputBuffer(this.A);
            this.A = null;
            this.E = 2;
            return false;
        }
        s2 s2VarU = u();
        int iN = N(s2VarU, this.A, 0);
        if (iN == -5) {
            b0(s2VarU);
            return true;
        }
        if (iN != -4) {
            if (iN != -3) {
                throw new IllegalStateException();
            }
            if (hasReadStreamToEnd()) {
                this.R = this.Q;
            }
            return false;
        }
        if (this.A.isEndOfStream()) {
            this.J = true;
            this.R = this.Q;
            this.f10834z.queueInputBuffer(this.A);
            this.A = null;
            return false;
        }
        if (!this.f10833y) {
            this.f10833y = true;
            this.A.addFlag(ASTNode.NOJIT);
        }
        this.Q = this.A.f10608e;
        if (hasReadStreamToEnd() || this.A.isLastSample()) {
            this.R = this.Q;
        }
        this.A.d();
        DecoderInputBuffer decoderInputBuffer2 = this.A;
        decoderInputBuffer2.f10604a = this.f10830v;
        this.f10834z.queueInputBuffer(decoderInputBuffer2);
        this.F = true;
        this.f10829u.f11721c++;
        this.A = null;
        return true;
    }

    private void W() throws ExoPlaybackException {
        if (this.E != 0) {
            f0();
            a0();
            return;
        }
        this.A = null;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = this.B;
        if (simpleDecoderOutputBuffer != null) {
            simpleDecoderOutputBuffer.release();
            this.B = null;
        }
        androidx.media3.decoder.g gVar = (androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f10834z);
        gVar.flush();
        gVar.a(w());
        this.F = false;
    }

    private void a0() throws ExoPlaybackException {
        androidx.media3.decoder.b bVarC;
        if (this.f10834z != null) {
            return;
        }
        g0(this.D);
        DrmSession drmSession = this.C;
        if (drmSession != null) {
            bVarC = drmSession.c();
            if (bVarC == null && this.C.getError() == null) {
                return;
            }
        } else {
            bVarC = null;
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            androidx.media3.common.util.q0.a("createAudioDecoder");
            androidx.media3.decoder.g gVarT = T(this.f10830v, bVarC);
            this.f10834z = gVarT;
            gVarT.a(w());
            androidx.media3.common.util.q0.b();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f10826r.q(this.f10834z.getName(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.f10829u.f11719a++;
        } catch (DecoderException e10) {
            androidx.media3.common.util.u.d("DecoderAudioRenderer", "Audio codec error", e10);
            this.f10826r.m(e10);
            throw q(e10, this.f10830v, 4001);
        } catch (OutOfMemoryError e11) {
            throw q(e11, this.f10830v, 4001);
        }
    }

    private void b0(s2 s2Var) throws ExoPlaybackException {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12258b);
        i0(s2Var.f12257a);
        androidx.media3.common.r rVar2 = this.f10830v;
        this.f10830v = rVar;
        this.f10831w = rVar.H;
        this.f10832x = rVar.I;
        androidx.media3.decoder.g gVar = this.f10834z;
        if (gVar == null) {
            a0();
            this.f10826r.u(this.f10830v, null);
            return;
        }
        androidx.media3.exoplayer.k kVar = this.D != this.C ? new androidx.media3.exoplayer.k(gVar.getName(), rVar2, rVar, 0, 128) : S(gVar.getName(), rVar2, rVar);
        if (kVar.f11741d == 0) {
            if (this.F) {
                this.E = 1;
            } else {
                f0();
                a0();
                this.G = true;
            }
        }
        this.f10826r.u(this.f10830v, kVar);
    }

    private void d0() {
        this.K = true;
        this.f10827s.playToEndOfStream();
        this.S = this.R;
        this.T = true;
    }

    private void e0() {
        this.f10827s.handleDiscontinuity();
        if (this.N != 0) {
            h0(this.M[0]);
            int i10 = this.N - 1;
            this.N = i10;
            long[] jArr = this.M;
            System.arraycopy(jArr, 1, jArr, 0, i10);
        }
    }

    private void f0() {
        this.A = null;
        this.B = null;
        this.E = 0;
        this.F = false;
        this.Q = C.TIME_UNSET;
        this.R = C.TIME_UNSET;
        androidx.media3.decoder.g gVar = this.f10834z;
        if (gVar != null) {
            this.f10829u.f11720b++;
            gVar.release();
            this.f10826r.r(this.f10834z.getName());
            this.f10834z = null;
        }
        g0(null);
    }

    private void g0(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.C, drmSession);
        this.C = drmSession;
    }

    private void h0(long j10) {
        this.L = j10;
        if (j10 != C.TIME_UNSET) {
            this.f10827s.o(j10);
        }
    }

    private void i0(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.D, drmSession);
        this.D = drmSession;
    }

    private void l0() {
        long currentPositionUs = this.f10827s.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.I) {
                currentPositionUs = Math.max(this.H, currentPositionUs);
            }
            this.H = currentPositionUs;
            this.I = false;
        }
    }

    @Override
    protected void C() {
        this.f10830v = null;
        this.G = true;
        h0(C.TIME_UNSET);
        this.O = false;
        this.S = C.TIME_UNSET;
        this.T = false;
        try {
            i0(null);
            f0();
            this.f10827s.reset();
        } finally {
            this.f10826r.s(this.f10829u);
        }
    }

    @Override
    protected void D(boolean z10, boolean z11) {
        androidx.media3.exoplayer.j jVar = new androidx.media3.exoplayer.j();
        this.f10829u = jVar;
        this.f10826r.t(jVar);
        if (t().f13088b) {
            this.f10827s.d();
        } else {
            this.f10827s.disableTunneling();
        }
        this.f10827s.n(x());
        this.f10827s.r(s());
    }

    @Override
    protected void F(long j10, boolean z10) throws ExoPlaybackException {
        this.f10827s.flush();
        this.H = j10;
        this.S = C.TIME_UNSET;
        this.T = false;
        this.O = false;
        this.I = true;
        this.J = false;
        this.K = false;
        if (this.f10834z != null) {
            W();
        }
    }

    @Override
    protected void J() {
        this.f10827s.play();
        this.P = true;
    }

    @Override
    protected void K() {
        l0();
        this.f10827s.pause();
        this.P = false;
    }

    @Override
    protected void L(androidx.media3.common.r[] rVarArr, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar) {
        super.L(rVarArr, j10, j11, bVar);
        this.f10833y = false;
        if (this.L == C.TIME_UNSET) {
            h0(j11);
            return;
        }
        int i10 = this.N;
        if (i10 == this.M.length) {
            androidx.media3.common.util.u.h("DecoderAudioRenderer", "Too many stream changes, so dropping offset: " + this.M[this.N - 1]);
        } else {
            this.N = i10 + 1;
        }
        this.M[this.N - 1] = j11;
    }

    protected androidx.media3.exoplayer.k S(String str, androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        return new androidx.media3.exoplayer.k(str, rVar, rVar2, 0, 1);
    }

    protected abstract androidx.media3.decoder.g T(androidx.media3.common.r rVar, androidx.media3.decoder.b bVar);

    protected int[] X(androidx.media3.decoder.g gVar) {
        return null;
    }

    protected abstract androidx.media3.common.r Y(androidx.media3.decoder.g gVar);

    protected final int Z(androidx.media3.common.r rVar) {
        return this.f10827s.p(rVar);
    }

    @Override
    public final int a(androidx.media3.common.r rVar) {
        if (!androidx.media3.common.y.o(rVar.f9849o)) {
            return x3.a(0);
        }
        int iK0 = k0(rVar);
        return iK0 <= 2 ? x3.a(iK0) : x3.b(iK0, 8, 32);
    }

    @Override
    public void b(androidx.media3.common.z zVar) {
        this.f10827s.b(zVar);
    }

    protected void c0() {
        this.I = true;
    }

    @Override
    public androidx.media3.common.z getPlaybackParameters() {
        return this.f10827s.getPlaybackParameters();
    }

    @Override
    public long getPositionUs() {
        if (getState() == 2) {
            l0();
        }
        return this.H;
    }

    @Override
    public boolean h() {
        boolean z10 = this.O;
        this.O = false;
        return z10;
    }

    @Override
    public void handleMessage(int i10, Object obj) {
        if (i10 == 2) {
            this.f10827s.setVolume(((Float) obj).floatValue());
            return;
        }
        if (i10 == 3) {
            this.f10827s.f((androidx.media3.common.c) obj);
            return;
        }
        if (i10 == 6) {
            this.f10827s.q((androidx.media3.common.f) obj);
            return;
        }
        if (i10 == 12) {
            if (androidx.media3.common.util.a1.f10038a >= 23) {
                b.a(this.f10827s, obj);
            }
        } else if (i10 == 9) {
            this.f10827s.e(((Boolean) obj).booleanValue());
        } else if (i10 != 10) {
            super.handleMessage(i10, obj);
        } else {
            this.f10827s.setAudioSessionId(((Integer) obj).intValue());
        }
    }

    @Override
    public boolean isEnded() {
        return this.K && this.f10827s.isEnded();
    }

    @Override
    public boolean isReady() {
        return this.f10827s.hasPendingData() || (this.f10830v != null && (B() || this.B != null));
    }

    protected final boolean j0(androidx.media3.common.r rVar) {
        return this.f10827s.a(rVar);
    }

    protected abstract int k0(androidx.media3.common.r rVar);

    @Override
    public long m(long j10, long j11) {
        if (this.S == C.TIME_UNSET) {
            return super.m(j10, j11);
        }
        long jI = this.f10827s.i();
        if (!this.T && jI == C.TIME_UNSET) {
            return super.m(j10, j11);
        }
        long jMin = this.S - j10;
        if (jI != C.TIME_UNSET) {
            jMin = Math.min(jI, jMin);
        }
        long jR0 = (long) ((jMin / (getPlaybackParameters() != null ? getPlaybackParameters().f10254a : 1.0f)) / 2.0f);
        if (this.P) {
            jR0 -= androidx.media3.common.util.a1.R0(s().elapsedRealtime()) - j11;
        }
        return Math.max(10000L, jR0);
    }

    @Override
    public void render(long j10, long j11) throws ExoPlaybackException {
        if (this.K) {
            try {
                this.f10827s.playToEndOfStream();
                this.S = this.R;
                this.T = true;
                return;
            } catch (AudioSink.WriteException e10) {
                throw r(e10, e10.format, e10.isRecoverable, 5002);
            }
        }
        if (this.f10830v == null) {
            s2 s2VarU = u();
            this.f10828t.clear();
            int iN = N(s2VarU, this.f10828t, 2);
            if (iN != -5) {
                if (iN == -4) {
                    androidx.media3.common.util.a.g(this.f10828t.isEndOfStream());
                    this.J = true;
                    try {
                        d0();
                        return;
                    } catch (AudioSink.WriteException e11) {
                        throw q(e11, null, 5002);
                    }
                }
                return;
            }
            b0(s2VarU);
        }
        a0();
        if (this.f10834z != null) {
            try {
                androidx.media3.common.util.q0.a("drainAndFeed");
                while (U()) {
                }
                while (V()) {
                }
                androidx.media3.common.util.q0.b();
                this.f10829u.c();
            } catch (DecoderException e12) {
                androidx.media3.common.util.u.d("DecoderAudioRenderer", "Audio codec error", e12);
                this.f10826r.m(e12);
                throw q(e12, this.f10830v, 4003);
            } catch (AudioSink.ConfigurationException e13) {
                throw q(e13, e13.format, 5001);
            } catch (AudioSink.InitializationException e14) {
                throw r(e14, e14.format, e14.isRecoverable, 5001);
            } catch (AudioSink.WriteException e15) {
                throw r(e15, e15.format, e15.isRecoverable, 5002);
            }
        }
    }

    public d0(Handler handler, x xVar, AudioProcessor... audioProcessorArr) {
        this(handler, xVar, null, audioProcessorArr);
    }

    public d0(Handler handler, x xVar, e eVar, AudioProcessor... audioProcessorArr) {
        this(handler, xVar, new DefaultAudioSink.g().k((e) com.google.common.base.h.a(eVar, e.f10850c)).m(audioProcessorArr).j());
    }

    public d0(Handler handler, x xVar, AudioSink audioSink) {
        super(1);
        this.f10826r = new x.a(handler, xVar);
        this.f10827s = audioSink;
        audioSink.j(new c());
        this.f10828t = DecoderInputBuffer.f();
        this.E = 0;
        this.G = true;
        h0(C.TIME_UNSET);
        this.M = new long[10];
        this.Q = C.TIME_UNSET;
        this.R = C.TIME_UNSET;
        this.S = C.TIME_UNSET;
    }

    @Override
    public x2 getMediaClock() {
        return this;
    }
}
