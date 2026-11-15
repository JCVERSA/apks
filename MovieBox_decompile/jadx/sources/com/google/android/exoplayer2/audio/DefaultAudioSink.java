package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.exoplayer.audio.w0;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.u1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

public final class DefaultAudioSink implements AudioSink {

    public static boolean f23843c0 = false;
    private int A;
    private long B;
    private long C;
    private long D;
    private long E;
    private int F;
    private boolean G;
    private boolean H;
    private long I;
    private float J;
    private AudioProcessor[] K;
    private ByteBuffer[] L;
    private ByteBuffer M;
    private int N;
    private ByteBuffer O;
    private byte[] P;
    private int Q;
    private int R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private int W;
    private u X;
    private boolean Y;
    private long Z;

    private final com.google.android.exoplayer2.audio.f f23844a;

    private boolean f23845a0;

    private final b f23846b;

    private boolean f23847b0;

    private final boolean f23848c;

    private final w f23849d;

    private final h0 f23850e;

    private final AudioProcessor[] f23851f;

    private final AudioProcessor[] f23852g;

    private final com.google.android.exoplayer2.util.h f23853h;

    private final t f23854i;

    private final ArrayDeque f23855j;

    private final boolean f23856k;

    private final int f23857l;

    private j f23858m;

    private final h f23859n;

    private final h f23860o;

    private final c f23861p;

    private u1 f23862q;

    private AudioSink.a f23863r;

    private e f23864s;

    private e f23865t;

    private AudioTrack f23866u;

    private com.google.android.exoplayer2.audio.e f23867v;

    private g f23868w;

    private g f23869x;

    private o2 f23870y;

    private ByteBuffer f23871z;

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    private static final class a {
        public static void a(AudioTrack audioTrack, u1 u1Var) {
            LogSessionId logSessionIdA = u1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionIdA);
        }
    }

    public interface b {
        boolean a(boolean z10);

        o2 b(o2 o2Var);

        AudioProcessor[] getAudioProcessors();

        long getMediaDuration(long j10);

        long getSkippedOutputFrameCount();
    }

    interface c {

        public static final c f23872a = new x.a().g();

        int a(int i10, int i11, int i12, int i13, int i14, double d10);
    }

    public static final class d {

        private b f23874b;

        private boolean f23875c;

        private boolean f23876d;

        private com.google.android.exoplayer2.audio.f f23873a = com.google.android.exoplayer2.audio.f.f23968c;

        private int f23877e = 0;

        c f23878f = c.f23872a;

        public DefaultAudioSink f() {
            if (this.f23874b == null) {
                this.f23874b = new f(new AudioProcessor[0]);
            }
            return new DefaultAudioSink(this);
        }

        public d g(com.google.android.exoplayer2.audio.f fVar) {
            com.google.android.exoplayer2.util.a.e(fVar);
            this.f23873a = fVar;
            return this;
        }

        public d h(boolean z10) {
            this.f23876d = z10;
            return this;
        }

        public d i(boolean z10) {
            this.f23875c = z10;
            return this;
        }

        public d j(int i10) {
            this.f23877e = i10;
            return this;
        }
    }

    private static final class e {

        public final p1 f23879a;

        public final int f23880b;

        public final int f23881c;

        public final int f23882d;

        public final int f23883e;

        public final int f23884f;

        public final int f23885g;

        public final int f23886h;

        public final AudioProcessor[] f23887i;

        public e(p1 p1Var, int i10, int i11, int i12, int i13, int i14, int i15, int i16, AudioProcessor[] audioProcessorArr) {
            this.f23879a = p1Var;
            this.f23880b = i10;
            this.f23881c = i11;
            this.f23882d = i12;
            this.f23883e = i13;
            this.f23884f = i14;
            this.f23885g = i15;
            this.f23886h = i16;
            this.f23887i = audioProcessorArr;
        }

        private AudioTrack d(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i10) {
            int i11 = p0.f26854a;
            if (i11 >= 29) {
                return f(z10, eVar, i10);
            }
            return i11 >= 21 ? e(z10, eVar, i10) : g(eVar, i10);
        }

        private AudioTrack e(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i10) {
            return new AudioTrack(i(eVar, z10), DefaultAudioSink.B(this.f23883e, this.f23884f, this.f23885g), this.f23886h, 1, i10);
        }

        private AudioTrack f(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i10) {
            return new AudioTrack.Builder().setAudioAttributes(i(eVar, z10)).setAudioFormat(DefaultAudioSink.B(this.f23883e, this.f23884f, this.f23885g)).setTransferMode(1).setBufferSizeInBytes(this.f23886h).setSessionId(i10).setOffloadedPlayback(this.f23881c == 1).build();
        }

        private AudioTrack g(com.google.android.exoplayer2.audio.e eVar, int i10) {
            int iG0 = p0.g0(eVar.f23946c);
            return i10 == 0 ? new AudioTrack(iG0, this.f23883e, this.f23884f, this.f23885g, this.f23886h, 1) : new AudioTrack(iG0, this.f23883e, this.f23884f, this.f23885g, this.f23886h, 1, i10);
        }

        private static AudioAttributes i(com.google.android.exoplayer2.audio.e eVar, boolean z10) {
            return z10 ? j() : eVar.b().f23950a;
        }

        private static AudioAttributes j() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        public AudioTrack a(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i10) throws AudioSink.InitializationException {
            try {
                AudioTrack audioTrackD = d(z10, eVar, i10);
                int state = audioTrackD.getState();
                if (state == 1) {
                    return audioTrackD;
                }
                try {
                    audioTrackD.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.f23883e, this.f23884f, this.f23886h, this.f23879a, l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e10) {
                throw new AudioSink.InitializationException(0, this.f23883e, this.f23884f, this.f23886h, this.f23879a, l(), e10);
            }
        }

        public boolean b(e eVar) {
            return eVar.f23881c == this.f23881c && eVar.f23885g == this.f23885g && eVar.f23883e == this.f23883e && eVar.f23884f == this.f23884f && eVar.f23882d == this.f23882d;
        }

        public e c(int i10) {
            return new e(this.f23879a, this.f23880b, this.f23881c, this.f23882d, this.f23883e, this.f23884f, this.f23885g, i10, this.f23887i);
        }

        public long h(long j10) {
            return (j10 * 1000000) / ((long) this.f23883e);
        }

        public long k(long j10) {
            return (j10 * 1000000) / ((long) this.f23879a.f24915z);
        }

        public boolean l() {
            return this.f23881c == 1;
        }
    }

    public static class f implements b {

        private final AudioProcessor[] f23888a;

        private final e0 f23889b;

        private final g0 f23890c;

        public f(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new e0(), new g0());
        }

        @Override
        public boolean a(boolean z10) {
            this.f23889b.q(z10);
            return z10;
        }

        @Override
        public o2 b(o2 o2Var) {
            this.f23890c.d(o2Var.f24845a);
            this.f23890c.c(o2Var.f24846b);
            return o2Var;
        }

        @Override
        public AudioProcessor[] getAudioProcessors() {
            return this.f23888a;
        }

        @Override
        public long getMediaDuration(long j10) {
            return this.f23890c.b(j10);
        }

        @Override
        public long getSkippedOutputFrameCount() {
            return this.f23889b.k();
        }

        public f(AudioProcessor[] audioProcessorArr, e0 e0Var, g0 g0Var) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f23888a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f23889b = e0Var;
            this.f23890c = g0Var;
            audioProcessorArr2[audioProcessorArr.length] = e0Var;
            audioProcessorArr2[audioProcessorArr.length + 1] = g0Var;
        }
    }

    private static final class g {

        public final o2 f23891a;

        public final boolean f23892b;

        public final long f23893c;

        public final long f23894d;

        private g(o2 o2Var, boolean z10, long j10, long j11) {
            this.f23891a = o2Var;
            this.f23892b = z10;
            this.f23893c = j10;
            this.f23894d = j11;
        }
    }

    private static final class h {

        private final long f23895a;

        private Exception f23896b;

        private long f23897c;

        public h(long j10) {
            this.f23895a = j10;
        }

        public void a() {
            this.f23896b = null;
        }

        public void b(Exception exc) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f23896b == null) {
                this.f23896b = exc;
                this.f23897c = this.f23895a + jElapsedRealtime;
            }
            if (jElapsedRealtime >= this.f23897c) {
                Exception exc2 = this.f23896b;
                if (exc2 != exc) {
                    exc2.addSuppressed(exc);
                }
                Exception exc3 = this.f23896b;
                a();
                throw exc3;
            }
        }
    }

    private final class i implements t.a {
        private i() {
        }

        @Override
        public void b(long j10) {
            if (DefaultAudioSink.this.f23863r != null) {
                DefaultAudioSink.this.f23863r.b(j10);
            }
        }

        @Override
        public void onInvalidLatency(long j10) {
            com.google.android.exoplayer2.util.s.i("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j10);
        }

        @Override
        public void onPositionFramesMismatch(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.I() + ", " + DefaultAudioSink.this.J();
            if (DefaultAudioSink.f23843c0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            com.google.android.exoplayer2.util.s.i("DefaultAudioSink", str);
        }

        @Override
        public void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.I() + ", " + DefaultAudioSink.this.J();
            if (DefaultAudioSink.f23843c0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            com.google.android.exoplayer2.util.s.i("DefaultAudioSink", str);
        }

        @Override
        public void onUnderrun(int i10, long j10) {
            if (DefaultAudioSink.this.f23863r != null) {
                DefaultAudioSink.this.f23863r.onUnderrun(i10, j10, SystemClock.elapsedRealtime() - DefaultAudioSink.this.Z);
            }
        }
    }

    private final class j {

        private final Handler f23899a = new Handler();

        private final AudioTrack$StreamEventCallback f23900b;

        class a extends AudioTrack$StreamEventCallback {

            final DefaultAudioSink f23902a;

            a(DefaultAudioSink defaultAudioSink) {
                this.f23902a = defaultAudioSink;
            }

            public void onDataRequest(AudioTrack audioTrack, int i10) {
                com.google.android.exoplayer2.util.a.g(audioTrack == DefaultAudioSink.this.f23866u);
                if (DefaultAudioSink.this.f23863r == null || !DefaultAudioSink.this.U) {
                    return;
                }
                DefaultAudioSink.this.f23863r.d();
            }

            public void onTearDown(AudioTrack audioTrack) {
                com.google.android.exoplayer2.util.a.g(audioTrack == DefaultAudioSink.this.f23866u);
                if (DefaultAudioSink.this.f23863r == null || !DefaultAudioSink.this.U) {
                    return;
                }
                DefaultAudioSink.this.f23863r.d();
            }
        }

        public j() {
            this.f23900b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f23899a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new w0(handler), this.f23900b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f23900b);
            this.f23899a.removeCallbacksAndMessages(null);
        }
    }

    private void A() {
        int i10 = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.K;
            if (i10 >= audioProcessorArr.length) {
                return;
            }
            AudioProcessor audioProcessor = audioProcessorArr[i10];
            audioProcessor.flush();
            this.L[i10] = audioProcessor.getOutput();
            i10++;
        }
    }

    public static AudioFormat B(int i10, int i11, int i12) {
        return new AudioFormat.Builder().setSampleRate(i10).setChannelMask(i11).setEncoding(i12).build();
    }

    private o2 C() {
        return F().f23891a;
    }

    private static int D(int i10, int i11, int i12) {
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i11, i12);
        com.google.android.exoplayer2.util.a.g(minBufferSize != -2);
        return minBufferSize;
    }

    private static int E(int i10, ByteBuffer byteBuffer) {
        switch (i10) {
            case 5:
            case 6:
            case 18:
                return com.google.android.exoplayer2.audio.b.d(byteBuffer);
            case 7:
            case 8:
                return y.e(byteBuffer);
            case 9:
                int iM = b0.m(p0.I(byteBuffer, byteBuffer.position()));
                if (iM != -1) {
                    return iM;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i10);
            case 14:
                int iA = com.google.android.exoplayer2.audio.b.a(byteBuffer);
                if (iA == -1) {
                    return 0;
                }
                return com.google.android.exoplayer2.audio.b.h(byteBuffer, iA) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return com.google.android.exoplayer2.audio.c.c(byteBuffer);
        }
    }

    private g F() {
        g gVar = this.f23868w;
        if (gVar != null) {
            return gVar;
        }
        return !this.f23855j.isEmpty() ? (g) this.f23855j.getLast() : this.f23869x;
    }

    private int G(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        int i10 = p0.f26854a;
        if (i10 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i10 == 30 && p0.f26857d.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    public long I() {
        e eVar = this.f23865t;
        return eVar.f23881c == 0 ? this.B / ((long) eVar.f23880b) : this.C;
    }

    public long J() {
        e eVar = this.f23865t;
        return eVar.f23881c == 0 ? this.D / ((long) eVar.f23882d) : this.E;
    }

    private boolean K() throws AudioSink.InitializationException {
        u1 u1Var;
        if (!this.f23853h.e()) {
            return false;
        }
        AudioTrack audioTrackY = y();
        this.f23866u = audioTrackY;
        if (N(audioTrackY)) {
            R(this.f23866u);
            if (this.f23857l != 3) {
                AudioTrack audioTrack = this.f23866u;
                p1 p1Var = this.f23865t.f23879a;
                audioTrack.setOffloadDelayPadding(p1Var.B, p1Var.C);
            }
        }
        if (p0.f26854a >= 31 && (u1Var = this.f23862q) != null) {
            a.a(this.f23866u, u1Var);
        }
        this.W = this.f23866u.getAudioSessionId();
        t tVar = this.f23854i;
        AudioTrack audioTrack2 = this.f23866u;
        e eVar = this.f23865t;
        tVar.s(audioTrack2, eVar.f23881c == 2, eVar.f23885g, eVar.f23882d, eVar.f23886h);
        V();
        int i10 = this.X.f24082a;
        if (i10 != 0) {
            this.f23866u.attachAuxEffect(i10);
            this.f23866u.setAuxEffectSendLevel(this.X.f24083b);
        }
        this.H = true;
        return true;
    }

    private static boolean L(int i10) {
        return (p0.f26854a >= 24 && i10 == -6) || i10 == -32;
    }

    private boolean M() {
        return this.f23866u != null;
    }

    private static boolean N(AudioTrack audioTrack) {
        return p0.f26854a >= 29 && audioTrack.isOffloadedPlayback();
    }

    private void O() {
        if (this.f23865t.l()) {
            this.f23845a0 = true;
        }
    }

    private void P() {
        if (this.T) {
            return;
        }
        this.T = true;
        this.f23854i.g(J());
        this.f23866u.stop();
        this.A = 0;
    }

    private void Q(long j10) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.K.length;
        int i10 = length;
        while (i10 >= 0) {
            if (i10 > 0) {
                byteBuffer = this.L[i10 - 1];
            } else {
                byteBuffer = this.M;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f23837a;
                }
            }
            if (i10 == length) {
                c0(byteBuffer, j10);
            } else {
                AudioProcessor audioProcessor = this.K[i10];
                if (i10 > this.R) {
                    audioProcessor.queueInput(byteBuffer);
                }
                ByteBuffer output = audioProcessor.getOutput();
                this.L[i10] = output;
                if (output.hasRemaining()) {
                    i10++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i10--;
            }
        }
    }

    private void R(AudioTrack audioTrack) {
        if (this.f23858m == null) {
            this.f23858m = new j();
        }
        this.f23858m.a(audioTrack);
    }

    private void S() {
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.f23847b0 = false;
        this.F = 0;
        this.f23869x = new g(C(), H(), 0L, 0L);
        this.I = 0L;
        this.f23868w = null;
        this.f23855j.clear();
        this.M = null;
        this.N = 0;
        this.O = null;
        this.T = false;
        this.S = false;
        this.R = -1;
        this.f23871z = null;
        this.A = 0;
        this.f23850e.i();
        A();
    }

    private void T(o2 o2Var, boolean z10) {
        g gVarF = F();
        if (o2Var.equals(gVarF.f23891a) && z10 == gVarF.f23892b) {
            return;
        }
        g gVar = new g(o2Var, z10, C.TIME_UNSET, C.TIME_UNSET);
        if (M()) {
            this.f23868w = gVar;
        } else {
            this.f23869x = gVar;
        }
    }

    private void U(o2 o2Var) {
        if (M()) {
            try {
                this.f23866u.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(o2Var.f24845a).setPitch(o2Var.f24846b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e10) {
                com.google.android.exoplayer2.util.s.j("DefaultAudioSink", "Failed to set playback params", e10);
            }
            o2Var = new o2(this.f23866u.getPlaybackParams().getSpeed(), this.f23866u.getPlaybackParams().getPitch());
            this.f23854i.t(o2Var.f24845a);
        }
        this.f23870y = o2Var;
    }

    private void V() {
        if (M()) {
            if (p0.f26854a >= 21) {
                W(this.f23866u, this.J);
            } else {
                X(this.f23866u, this.J);
            }
        }
    }

    private static void W(AudioTrack audioTrack, float f10) {
        audioTrack.setVolume(f10);
    }

    private static void X(AudioTrack audioTrack, float f10) {
        audioTrack.setStereoVolume(f10, f10);
    }

    private void Y() {
        AudioProcessor[] audioProcessorArr = this.f23865t.f23887i;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.K = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.L = new ByteBuffer[size];
        A();
    }

    private boolean Z() {
        return (this.Y || !MimeTypes.AUDIO_RAW.equals(this.f23865t.f23879a.f24901l) || a0(this.f23865t.f23879a.A)) ? false : true;
    }

    private boolean a0(int i10) {
        return this.f23848c && p0.t0(i10);
    }

    private boolean b0(p1 p1Var, com.google.android.exoplayer2.audio.e eVar) {
        int iF;
        int iG;
        int iG2;
        if (p0.f26854a < 29 || this.f23857l == 0 || (iF = com.google.android.exoplayer2.util.w.f((String) com.google.android.exoplayer2.util.a.e(p1Var.f24901l), p1Var.f24898i)) == 0 || (iG = p0.G(p1Var.f24914y)) == 0 || (iG2 = G(B(p1Var.f24915z, iG, iF), eVar.b().f23950a)) == 0) {
            return false;
        }
        if (iG2 == 1) {
            return ((p1Var.B != 0 || p1Var.C != 0) && (this.f23857l == 1)) ? false : true;
        }
        if (iG2 == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    private void c0(ByteBuffer byteBuffer, long j10) throws Exception {
        int iD0;
        AudioSink.a aVar;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.O;
            if (byteBuffer2 != null) {
                com.google.android.exoplayer2.util.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.O = byteBuffer;
                if (p0.f26854a < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.P;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.P = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.P, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.Q = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            if (p0.f26854a < 21) {
                int iC = this.f23854i.c(this.D);
                if (iC > 0) {
                    iD0 = this.f23866u.write(this.P, this.Q, Math.min(iRemaining2, iC));
                    if (iD0 > 0) {
                        this.Q += iD0;
                        byteBuffer.position(byteBuffer.position() + iD0);
                    }
                } else {
                    iD0 = 0;
                }
            } else if (this.Y) {
                com.google.android.exoplayer2.util.a.g(j10 != C.TIME_UNSET);
                iD0 = e0(this.f23866u, byteBuffer, iRemaining2, j10);
            } else {
                iD0 = d0(this.f23866u, byteBuffer, iRemaining2);
            }
            this.Z = SystemClock.elapsedRealtime();
            if (iD0 < 0) {
                boolean zL = L(iD0);
                if (zL) {
                    O();
                }
                AudioSink.WriteException writeException = new AudioSink.WriteException(iD0, this.f23865t.f23879a, zL);
                AudioSink.a aVar2 = this.f23863r;
                if (aVar2 != null) {
                    aVar2.a(writeException);
                }
                if (writeException.isRecoverable) {
                    throw writeException;
                }
                this.f23860o.b(writeException);
                return;
            }
            this.f23860o.a();
            if (N(this.f23866u)) {
                if (this.E > 0) {
                    this.f23847b0 = false;
                }
                if (this.U && (aVar = this.f23863r) != null && iD0 < iRemaining2 && !this.f23847b0) {
                    aVar.c();
                }
            }
            int i10 = this.f23865t.f23881c;
            if (i10 == 0) {
                this.D += (long) iD0;
            }
            if (iD0 == iRemaining2) {
                if (i10 != 0) {
                    com.google.android.exoplayer2.util.a.g(byteBuffer == this.M);
                    this.E += ((long) this.F) * ((long) this.N);
                }
                this.O = null;
            }
        }
    }

    private static int d0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10) {
        return audioTrack.write(byteBuffer, i10, 1);
    }

    private int e0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10, long j10) {
        if (p0.f26854a >= 26) {
            return audioTrack.write(byteBuffer, i10, 1, j10 * 1000);
        }
        if (this.f23871z == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.f23871z = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.f23871z.putInt(1431633921);
        }
        if (this.A == 0) {
            this.f23871z.putInt(4, i10);
            this.f23871z.putLong(8, j10 * 1000);
            this.f23871z.position(0);
            this.A = i10;
        }
        int iRemaining = this.f23871z.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.f23871z, iRemaining, 1);
            if (iWrite < 0) {
                this.A = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iD0 = d0(audioTrack, byteBuffer, i10);
        if (iD0 < 0) {
            this.A = 0;
            return iD0;
        }
        this.A -= iD0;
        return iD0;
    }

    private void u(long j10) {
        o2 o2VarB = Z() ? this.f23846b.b(C()) : o2.f24843d;
        boolean zA = Z() ? this.f23846b.a(H()) : false;
        this.f23855j.add(new g(o2VarB, zA, Math.max(0L, j10), this.f23865t.h(J())));
        Y();
        AudioSink.a aVar = this.f23863r;
        if (aVar != null) {
            aVar.onSkipSilenceEnabledChanged(zA);
        }
    }

    private long v(long j10) {
        while (!this.f23855j.isEmpty() && j10 >= ((g) this.f23855j.getFirst()).f23894d) {
            this.f23869x = (g) this.f23855j.remove();
        }
        g gVar = this.f23869x;
        long j11 = j10 - gVar.f23894d;
        if (gVar.f23891a.equals(o2.f24843d)) {
            return this.f23869x.f23893c + j11;
        }
        if (this.f23855j.isEmpty()) {
            return this.f23869x.f23893c + this.f23846b.getMediaDuration(j11);
        }
        g gVar2 = (g) this.f23855j.getFirst();
        return gVar2.f23893c - p0.a0(gVar2.f23894d - j10, this.f23869x.f23891a.f24845a);
    }

    private long w(long j10) {
        return j10 + this.f23865t.h(this.f23846b.getSkippedOutputFrameCount());
    }

    private AudioTrack x(e eVar) throws AudioSink.InitializationException {
        try {
            return eVar.a(this.Y, this.f23867v, this.W);
        } catch (AudioSink.InitializationException e10) {
            AudioSink.a aVar = this.f23863r;
            if (aVar != null) {
                aVar.a(e10);
            }
            throw e10;
        }
    }

    private AudioTrack y() throws AudioSink.InitializationException {
        try {
            return x((e) com.google.android.exoplayer2.util.a.e(this.f23865t));
        } catch (AudioSink.InitializationException e10) {
            e eVar = this.f23865t;
            if (eVar.f23886h > 1000000) {
                e eVarC = eVar.c(1000000);
                try {
                    AudioTrack audioTrackX = x(eVarC);
                    this.f23865t = eVarC;
                    return audioTrackX;
                } catch (AudioSink.InitializationException e11) {
                    e10.addSuppressed(e11);
                    O();
                    throw e10;
                }
            }
            O();
            throw e10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private boolean z() {
        /*
            r9 = this;
            int r0 = r9.R
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.R = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.R
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.K
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.queueEndOfStream()
        L1f:
            r9.Q(r7)
            boolean r0 = r4.isEnded()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.R
            int r0 = r0 + r1
            r9.R = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            r9.c0(r0, r7)
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.R = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.z():boolean");
    }

    public boolean H() {
        return F().f23892b;
    }

    @Override
    public boolean a(p1 p1Var) {
        return i(p1Var) != 0;
    }

    @Override
    public void b(o2 o2Var) {
        o2 o2Var2 = new o2(p0.p(o2Var.f24845a, 0.1f, 8.0f), p0.p(o2Var.f24846b, 0.1f, 8.0f));
        if (!this.f23856k || p0.f26854a < 23) {
            T(o2Var2, H());
        } else {
            U(o2Var2);
        }
    }

    @Override
    public boolean c(ByteBuffer byteBuffer, long j10, int i10) throws Exception {
        ByteBuffer byteBuffer2 = this.M;
        com.google.android.exoplayer2.util.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f23864s != null) {
            if (!z()) {
                return false;
            }
            if (this.f23864s.b(this.f23865t)) {
                this.f23865t = this.f23864s;
                this.f23864s = null;
                if (N(this.f23866u) && this.f23857l != 3) {
                    if (this.f23866u.getPlayState() == 3) {
                        this.f23866u.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.f23866u;
                    p1 p1Var = this.f23865t.f23879a;
                    audioTrack.setOffloadDelayPadding(p1Var.B, p1Var.C);
                    this.f23847b0 = true;
                }
            } else {
                P();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            u(j10);
        }
        if (!M()) {
            try {
                if (!K()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e10) {
                if (e10.isRecoverable) {
                    throw e10;
                }
                this.f23859n.b(e10);
                return false;
            }
        }
        this.f23859n.a();
        if (this.H) {
            this.I = Math.max(0L, j10);
            this.G = false;
            this.H = false;
            if (this.f23856k && p0.f26854a >= 23) {
                U(this.f23870y);
            }
            u(j10);
            if (this.U) {
                play();
            }
        }
        if (!this.f23854i.k(J())) {
            return false;
        }
        if (this.M == null) {
            com.google.android.exoplayer2.util.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            e eVar = this.f23865t;
            if (eVar.f23881c != 0 && this.F == 0) {
                int iE = E(eVar.f23885g, byteBuffer);
                this.F = iE;
                if (iE == 0) {
                    return true;
                }
            }
            if (this.f23868w != null) {
                if (!z()) {
                    return false;
                }
                u(j10);
                this.f23868w = null;
            }
            long jK = this.I + this.f23865t.k(I() - this.f23850e.h());
            if (!this.G && Math.abs(jK - j10) > 200000) {
                this.f23863r.a(new AudioSink.UnexpectedDiscontinuityException(j10, jK));
                this.G = true;
            }
            if (this.G) {
                if (!z()) {
                    return false;
                }
                long j11 = j10 - jK;
                this.I += j11;
                this.G = false;
                u(j10);
                AudioSink.a aVar = this.f23863r;
                if (aVar != null && j11 != 0) {
                    aVar.onPositionDiscontinuity();
                }
            }
            if (this.f23865t.f23881c == 0) {
                this.B += (long) byteBuffer.remaining();
            } else {
                this.C += ((long) this.F) * ((long) i10);
            }
            this.M = byteBuffer;
            this.N = i10;
        }
        Q(j10);
        if (!this.M.hasRemaining()) {
            this.M = null;
            this.N = 0;
            return true;
        }
        if (!this.f23854i.j(J())) {
            return false;
        }
        com.google.android.exoplayer2.util.s.i("DefaultAudioSink", "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override
    public void d() {
        com.google.android.exoplayer2.util.a.g(p0.f26854a >= 21);
        com.google.android.exoplayer2.util.a.g(this.V);
        if (this.Y) {
            return;
        }
        this.Y = true;
        flush();
    }

    @Override
    public void disableTunneling() {
        if (this.Y) {
            this.Y = false;
            flush();
        }
    }

    @Override
    public void e(boolean z10) {
        T(C(), z10);
    }

    @Override
    public void f(com.google.android.exoplayer2.audio.e eVar) {
        if (this.f23867v.equals(eVar)) {
            return;
        }
        this.f23867v = eVar;
        if (this.Y) {
            return;
        }
        flush();
    }

    @Override
    public void flush() {
        if (M()) {
            S();
            if (this.f23854i.i()) {
                this.f23866u.pause();
            }
            if (N(this.f23866u)) {
                ((j) com.google.android.exoplayer2.util.a.e(this.f23858m)).b(this.f23866u);
            }
            final AudioTrack audioTrack = this.f23866u;
            this.f23866u = null;
            if (p0.f26854a < 21 && !this.V) {
                this.W = 0;
            }
            e eVar = this.f23864s;
            if (eVar != null) {
                this.f23865t = eVar;
                this.f23864s = null;
            }
            this.f23854i.q();
            this.f23853h.d();
            new Thread("ExoPlayer:AudioTrackReleaseThread") {
                @Override
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        DefaultAudioSink.this.f23853h.f();
                    }
                }
            }.start();
        }
        this.f23860o.a();
        this.f23859n.a();
    }

    @Override
    public void g(u1 u1Var) {
        this.f23862q = u1Var;
    }

    @Override
    public long getCurrentPositionUs(boolean z10) {
        if (!M() || this.H) {
            return Long.MIN_VALUE;
        }
        return w(v(Math.min(this.f23854i.d(z10), this.f23865t.h(J()))));
    }

    @Override
    public o2 getPlaybackParameters() {
        return this.f23856k ? this.f23870y : C();
    }

    @Override
    public void h(AudioSink.a aVar) {
        this.f23863r = aVar;
    }

    @Override
    public void handleDiscontinuity() {
        this.G = true;
    }

    @Override
    public boolean hasPendingData() {
        return M() && this.f23854i.h(J());
    }

    @Override
    public int i(p1 p1Var) {
        if (!MimeTypes.AUDIO_RAW.equals(p1Var.f24901l)) {
            return ((this.f23845a0 || !b0(p1Var, this.f23867v)) && !this.f23844a.h(p1Var)) ? 0 : 2;
        }
        if (p0.u0(p1Var.A)) {
            int i10 = p1Var.A;
            return (i10 == 2 || (this.f23848c && i10 == 4)) ? 2 : 1;
        }
        com.google.android.exoplayer2.util.s.i("DefaultAudioSink", "Invalid PCM encoding: " + p1Var.A);
        return 0;
    }

    @Override
    public boolean isEnded() {
        return !M() || (this.S && !hasPendingData());
    }

    @Override
    public void j() {
        if (p0.f26854a < 25) {
            flush();
            return;
        }
        this.f23860o.a();
        this.f23859n.a();
        if (M()) {
            S();
            if (this.f23854i.i()) {
                this.f23866u.pause();
            }
            this.f23866u.flush();
            this.f23854i.q();
            t tVar = this.f23854i;
            AudioTrack audioTrack = this.f23866u;
            e eVar = this.f23865t;
            tVar.s(audioTrack, eVar.f23881c == 2, eVar.f23885g, eVar.f23882d, eVar.f23886h);
            this.H = true;
        }
    }

    @Override
    public void k(u uVar) {
        if (this.X.equals(uVar)) {
            return;
        }
        int i10 = uVar.f24082a;
        float f10 = uVar.f24083b;
        AudioTrack audioTrack = this.f23866u;
        if (audioTrack != null) {
            if (this.X.f24082a != i10) {
                audioTrack.attachAuxEffect(i10);
            }
            if (i10 != 0) {
                this.f23866u.setAuxEffectSendLevel(f10);
            }
        }
        this.X = uVar;
    }

    @Override
    public void l(p1 p1Var, int i10, int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessor[] audioProcessorArr;
        int i11;
        int i12;
        int iIntValue;
        int i13;
        int iE0;
        int iF;
        int i14;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(p1Var.f24901l)) {
            com.google.android.exoplayer2.util.a.a(p0.u0(p1Var.A));
            int iE1 = p0.e0(p1Var.A, p1Var.f24914y);
            AudioProcessor[] audioProcessorArr2 = a0(p1Var.A) ? this.f23852g : this.f23851f;
            this.f23850e.j(p1Var.B, p1Var.C);
            if (p0.f26854a < 21 && p1Var.f24914y == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i15 = 0; i15 < 6; i15++) {
                    iArr2[i15] = i15;
                }
            } else {
                iArr2 = iArr;
            }
            this.f23849d.h(iArr2);
            AudioProcessor.a aVar = new AudioProcessor.a(p1Var.f24915z, p1Var.f24914y, p1Var.A);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.a aVarA = audioProcessor.a(aVar);
                    if (audioProcessor.isActive()) {
                        aVar = aVarA;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e10) {
                    throw new AudioSink.ConfigurationException(e10, p1Var);
                }
            }
            int i16 = aVar.f23841c;
            int i17 = aVar.f23839a;
            int iG = p0.G(aVar.f23840b);
            audioProcessorArr = audioProcessorArr2;
            iE0 = p0.e0(i16, aVar.f23840b);
            iF = i16;
            i11 = i17;
            iIntValue = iG;
            i13 = iE1;
            i14 = 0;
        } else {
            audioProcessorArr = new AudioProcessor[0];
            i11 = p1Var.f24915z;
            if (b0(p1Var, this.f23867v)) {
                i12 = 1;
                iF = com.google.android.exoplayer2.util.w.f((String) com.google.android.exoplayer2.util.a.e(p1Var.f24901l), p1Var.f24898i);
                i13 = -1;
                iE0 = -1;
                iIntValue = p0.G(p1Var.f24914y);
            } else {
                Pair pairF = this.f23844a.f(p1Var);
                if (pairF == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + p1Var, p1Var);
                }
                int iIntValue2 = ((Integer) pairF.first).intValue();
                i12 = 2;
                iIntValue = ((Integer) pairF.second).intValue();
                i13 = -1;
                iE0 = -1;
                iF = iIntValue2;
            }
            i14 = i12;
        }
        int iA = i10 != 0 ? i10 : this.f23861p.a(D(i11, iIntValue, iF), iF, i14, iE0, i11, this.f23856k ? 8.0d : 1.0d);
        if (iF == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i14 + ") for: " + p1Var, p1Var);
        }
        if (iIntValue == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i14 + ") for: " + p1Var, p1Var);
        }
        this.f23845a0 = false;
        e eVar = new e(p1Var, i13, i14, iE0, i11, iIntValue, iF, iA, audioProcessorArr);
        if (M()) {
            this.f23864s = eVar;
        } else {
            this.f23865t = eVar;
        }
    }

    @Override
    public void pause() {
        this.U = false;
        if (M() && this.f23854i.p()) {
            this.f23866u.pause();
        }
    }

    @Override
    public void play() {
        this.U = true;
        if (M()) {
            this.f23854i.u();
            this.f23866u.play();
        }
    }

    @Override
    public void playToEndOfStream() {
        if (!this.S && M() && z()) {
            P();
            this.S = true;
        }
    }

    @Override
    public void reset() {
        flush();
        for (AudioProcessor audioProcessor : this.f23851f) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.f23852g) {
            audioProcessor2.reset();
        }
        this.U = false;
        this.f23845a0 = false;
    }

    @Override
    public void setAudioSessionId(int i10) {
        if (this.W != i10) {
            this.W = i10;
            this.V = i10 != 0;
            flush();
        }
    }

    @Override
    public void setVolume(float f10) {
        if (this.J != f10) {
            this.J = f10;
            V();
        }
    }

    private DefaultAudioSink(d dVar) {
        this.f23844a = dVar.f23873a;
        b bVar = dVar.f23874b;
        this.f23846b = bVar;
        int i10 = p0.f26854a;
        this.f23848c = i10 >= 21 && dVar.f23875c;
        this.f23856k = i10 >= 23 && dVar.f23876d;
        this.f23857l = i10 >= 29 ? dVar.f23877e : 0;
        this.f23861p = dVar.f23878f;
        com.google.android.exoplayer2.util.h hVar = new com.google.android.exoplayer2.util.h(com.google.android.exoplayer2.util.e.f26795a);
        this.f23853h = hVar;
        hVar.f();
        this.f23854i = new t(new i());
        w wVar = new w();
        this.f23849d = wVar;
        h0 h0Var = new h0();
        this.f23850e = h0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new d0(), wVar, h0Var);
        Collections.addAll(arrayList, bVar.getAudioProcessors());
        this.f23851f = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f23852g = new AudioProcessor[]{new z()};
        this.J = 1.0f;
        this.f23867v = com.google.android.exoplayer2.audio.e.f23942g;
        this.W = 0;
        this.X = new u(0, 0.0f);
        o2 o2Var = o2.f24843d;
        this.f23869x = new g(o2Var, false, 0L, 0L);
        this.f23870y = o2Var;
        this.R = -1;
        this.K = new AudioProcessor[0];
        this.L = new ByteBuffer[0];
        this.f23855j = new ArrayDeque();
        this.f23859n = new h(100L);
        this.f23860o = new h(100L);
    }
}
