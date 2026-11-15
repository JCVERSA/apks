package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.exoplayer.ExoPlayer;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import x1.f4;

public final class DefaultAudioSink implements AudioSink {

    public static boolean f10695l0 = false;

    private static final Object f10696m0 = new Object();

    private static ScheduledExecutorService f10697n0;

    private static int f10698o0;
    private k A;
    private androidx.media3.common.c B;
    private j C;
    private j D;
    private androidx.media3.common.z E;
    private boolean F;
    private ByteBuffer G;
    private int H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    private boolean N;
    private boolean O;
    private long P;
    private float Q;
    private ByteBuffer R;
    private int S;
    private ByteBuffer T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private int Z;

    private final Context f10699a;

    private androidx.media3.common.f f10700a0;

    private final t1.n f10701b;

    private androidx.media3.exoplayer.audio.j f10702b0;

    private final boolean f10703c;

    private boolean f10704c0;

    private final c0 f10705d;

    private long f10706d0;

    private final f1 f10707e;

    private long f10708e0;

    private final ImmutableList f10709f;

    private boolean f10710f0;

    private final ImmutableList f10711g;

    private boolean f10712g0;

    private final b0 f10713h;

    private Looper f10714h0;

    private final ArrayDeque f10715i;

    private long f10716i0;

    private final boolean f10717j;

    private long f10718j0;

    private int f10719k;

    private Handler f10720k0;

    private n f10721l;

    private final l f10722m;

    private final l f10723n;

    private final e f10724o;

    private final d f10725p;

    private final ExoPlayer.a f10726q;

    private final f f10727r;

    private f4 f10728s;

    private AudioSink.b f10729t;

    private h f10730u;

    private h f10731v;

    private androidx.media3.common.audio.a f10732w;

    private AudioTrack f10733x;

    private androidx.media3.exoplayer.audio.e f10734y;

    private androidx.media3.exoplayer.audio.i f10735z;

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    private static final class b {
        public static long a(AudioTrack audioTrack, h hVar) {
            return hVar.f10750c == 0 ? hVar.d(audioTrack.getBufferSizeInFrames()) : androidx.media3.common.util.a1.g1(audioTrack.getBufferSizeInFrames(), 1000000L, x0.d(hVar.f10754g), RoundingMode.DOWN);
        }

        public static void b(AudioTrack audioTrack, androidx.media3.exoplayer.audio.j jVar) {
            audioTrack.setPreferredDevice(jVar == null ? null : jVar.f10884a);
        }
    }

    private static final class c {
        public static void a(AudioTrack audioTrack, f4 f4Var) {
            LogSessionId logSessionIdA = f4Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionIdA);
        }
    }

    public interface d {
        androidx.media3.exoplayer.audio.k a(androidx.media3.common.r rVar, androidx.media3.common.c cVar);
    }

    public interface e {

        public static final e f10736a = new x0.a().h();

        int a(int i10, int i11, int i12, int i13, int i14, int i15, double d10);
    }

    public interface f {

        public static final f f10737a = new z0();

        AudioTrack a(AudioSink.a aVar, androidx.media3.common.c cVar, int i10);
    }

    private static final class h {

        public final androidx.media3.common.r f10748a;

        public final int f10749b;

        public final int f10750c;

        public final int f10751d;

        public final int f10752e;

        public final int f10753f;

        public final int f10754g;

        public final int f10755h;

        public final androidx.media3.common.audio.a f10756i;

        public final boolean f10757j;

        public final boolean f10758k;

        public final boolean f10759l;

        public h(androidx.media3.common.r rVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, androidx.media3.common.audio.a aVar, boolean z10, boolean z11, boolean z12) {
            this.f10748a = rVar;
            this.f10749b = i10;
            this.f10750c = i11;
            this.f10751d = i12;
            this.f10752e = i13;
            this.f10753f = i14;
            this.f10754g = i15;
            this.f10755h = i16;
            this.f10756i = aVar;
            this.f10757j = z10;
            this.f10758k = z11;
            this.f10759l = z12;
        }

        public AudioSink.a a() {
            return new AudioSink.a(this.f10754g, this.f10752e, this.f10753f, this.f10759l, this.f10750c == 1, this.f10755h);
        }

        public boolean b(h hVar) {
            return hVar.f10750c == this.f10750c && hVar.f10754g == this.f10754g && hVar.f10752e == this.f10752e && hVar.f10753f == this.f10753f && hVar.f10751d == this.f10751d && hVar.f10757j == this.f10757j && hVar.f10758k == this.f10758k;
        }

        public h c(int i10) {
            return new h(this.f10748a, this.f10749b, this.f10750c, this.f10751d, this.f10752e, this.f10753f, this.f10754g, i10, this.f10756i, this.f10757j, this.f10758k, this.f10759l);
        }

        public long d(long j10) {
            return androidx.media3.common.util.a1.d1(j10, this.f10752e);
        }

        public long e(long j10) {
            return androidx.media3.common.util.a1.d1(j10, this.f10748a.F);
        }

        public boolean f() {
            return this.f10750c == 1;
        }
    }

    public static class i implements t1.n {

        private final AudioProcessor[] f10760a;

        private final d1 f10761b;

        private final androidx.media3.common.audio.d f10762c;

        public i(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new d1(), new androidx.media3.common.audio.d());
        }

        @Override
        public boolean a(boolean z10) {
            this.f10761b.y(z10);
            return z10;
        }

        @Override
        public androidx.media3.common.z b(androidx.media3.common.z zVar) {
            this.f10762c.e(zVar.f10254a);
            this.f10762c.d(zVar.f10255b);
            return zVar;
        }

        @Override
        public AudioProcessor[] getAudioProcessors() {
            return this.f10760a;
        }

        @Override
        public long getMediaDuration(long j10) {
            return this.f10762c.isActive() ? this.f10762c.c(j10) : j10;
        }

        @Override
        public long getSkippedOutputFrameCount() {
            return this.f10761b.p();
        }

        public i(AudioProcessor[] audioProcessorArr, d1 d1Var, androidx.media3.common.audio.d dVar) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f10760a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f10761b = d1Var;
            this.f10762c = dVar;
            audioProcessorArr2[audioProcessorArr.length] = d1Var;
            audioProcessorArr2[audioProcessorArr.length + 1] = dVar;
        }
    }

    private static final class j {

        public final androidx.media3.common.z f10763a;

        public final long f10764b;

        public final long f10765c;

        public long f10766d;

        private j(androidx.media3.common.z zVar, long j10, long j11) {
            this.f10763a = zVar;
            this.f10764b = j10;
            this.f10765c = j11;
        }
    }

    static final class k {

        private final AudioTrack f10767a;

        private final androidx.media3.exoplayer.audio.i f10768b;

        private AudioRouting.OnRoutingChangedListener f10769c = new AudioRouting.OnRoutingChangedListener() {
            @Override
            public final void onRoutingChanged(AudioRouting audioRouting) {
                this.f10921a.b(audioRouting);
            }
        };

        public k(AudioTrack audioTrack, androidx.media3.exoplayer.audio.i iVar) {
            this.f10767a = audioTrack;
            this.f10768b = iVar;
            audioTrack.addOnRoutingChangedListener(this.f10769c, new Handler(Looper.myLooper()));
        }

        public void b(AudioRouting audioRouting) {
            AudioDeviceInfo routedDevice;
            if (this.f10769c == null || (routedDevice = audioRouting.getRoutedDevice()) == null) {
                return;
            }
            this.f10768b.i(routedDevice);
        }

        public void c() {
            this.f10767a.removeOnRoutingChangedListener(q0.a(androidx.media3.common.util.a.e(this.f10769c)));
            this.f10769c = null;
        }
    }

    private static final class l {

        private Exception f10770a;

        private long f10771b = C.TIME_UNSET;

        private long f10772c = C.TIME_UNSET;

        public void a() {
            this.f10770a = null;
            this.f10771b = C.TIME_UNSET;
            this.f10772c = C.TIME_UNSET;
        }

        public boolean b() {
            if (this.f10770a == null) {
                return false;
            }
            return DefaultAudioSink.Q() || SystemClock.elapsedRealtime() < this.f10772c;
        }

        public void c(Exception exc) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f10770a == null) {
                this.f10770a = exc;
            }
            if (this.f10771b == C.TIME_UNSET && !DefaultAudioSink.Q()) {
                this.f10771b = 200 + jElapsedRealtime;
            }
            long j10 = this.f10771b;
            if (j10 == C.TIME_UNSET || jElapsedRealtime < j10) {
                this.f10772c = jElapsedRealtime + 50;
                return;
            }
            Exception exc2 = this.f10770a;
            if (exc2 != exc) {
                exc2.addSuppressed(exc);
            }
            Exception exc3 = this.f10770a;
            a();
            throw exc3;
        }
    }

    private final class m implements b0.a {
        private m() {
        }

        @Override
        public void b(long j10) {
            if (DefaultAudioSink.this.f10729t != null) {
                DefaultAudioSink.this.f10729t.b(j10);
            }
        }

        @Override
        public void onInvalidLatency(long j10) {
            androidx.media3.common.util.u.h("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j10);
        }

        @Override
        public void onPositionFramesMismatch(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.N() + ", " + DefaultAudioSink.this.O();
            if (DefaultAudioSink.f10695l0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            androidx.media3.common.util.u.h("DefaultAudioSink", str);
        }

        @Override
        public void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.N() + ", " + DefaultAudioSink.this.O();
            if (DefaultAudioSink.f10695l0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            androidx.media3.common.util.u.h("DefaultAudioSink", str);
        }

        @Override
        public void onUnderrun(int i10, long j10) {
            if (DefaultAudioSink.this.f10729t != null) {
                DefaultAudioSink.this.f10729t.onUnderrun(i10, j10, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f10708e0);
            }
        }
    }

    private final class n {

        private final Handler f10774a = new Handler(Looper.myLooper());

        private final AudioTrack$StreamEventCallback f10775b;

        class a extends AudioTrack$StreamEventCallback {

            final DefaultAudioSink f10777a;

            a(DefaultAudioSink defaultAudioSink) {
                this.f10777a = defaultAudioSink;
            }

            public void onDataRequest(AudioTrack audioTrack, int i10) {
                if (audioTrack.equals(DefaultAudioSink.this.f10733x) && DefaultAudioSink.this.f10729t != null && DefaultAudioSink.this.X) {
                    DefaultAudioSink.this.f10729t.d();
                }
            }

            public void onPresentationEnded(AudioTrack audioTrack) {
                if (audioTrack.equals(DefaultAudioSink.this.f10733x)) {
                    DefaultAudioSink.this.W = true;
                }
            }

            public void onTearDown(AudioTrack audioTrack) {
                if (audioTrack.equals(DefaultAudioSink.this.f10733x) && DefaultAudioSink.this.f10729t != null && DefaultAudioSink.this.X) {
                    DefaultAudioSink.this.f10729t.d();
                }
            }
        }

        public n() {
            this.f10775b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f10774a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new w0(handler), this.f10775b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f10775b);
            this.f10774a.removeCallbacksAndMessages(null);
        }
    }

    private void D(long j10) {
        androidx.media3.common.z zVarB;
        if (o0()) {
            zVarB = androidx.media3.common.z.f10251d;
        } else {
            zVarB = m0() ? this.f10701b.b(this.E) : androidx.media3.common.z.f10251d;
            this.E = zVarB;
        }
        androidx.media3.common.z zVar = zVarB;
        this.F = m0() ? this.f10701b.a(this.F) : false;
        this.f10715i.add(new j(zVar, Math.max(0L, j10), this.f10731v.d(O())));
        l0();
        AudioSink.b bVar = this.f10729t;
        if (bVar != null) {
            bVar.onSkipSilenceEnabledChanged(this.F);
        }
    }

    private long E(long j10) {
        while (!this.f10715i.isEmpty() && j10 >= ((j) this.f10715i.getFirst()).f10765c) {
            this.D = (j) this.f10715i.remove();
        }
        j jVar = this.D;
        long j11 = j10 - jVar.f10765c;
        long jG0 = androidx.media3.common.util.a1.g0(j11, jVar.f10763a.f10254a);
        if (!this.f10715i.isEmpty()) {
            j jVar2 = this.D;
            return jVar2.f10764b + jG0 + jVar2.f10766d;
        }
        long mediaDuration = this.f10701b.getMediaDuration(j11);
        j jVar3 = this.D;
        long j12 = jVar3.f10764b + mediaDuration;
        jVar3.f10766d = mediaDuration - jG0;
        return j12;
    }

    private long F(long j10) {
        long skippedOutputFrameCount = this.f10701b.getSkippedOutputFrameCount();
        long jD = j10 + this.f10731v.d(skippedOutputFrameCount);
        long j11 = this.f10716i0;
        if (skippedOutputFrameCount > j11) {
            long jD2 = this.f10731v.d(skippedOutputFrameCount - j11);
            this.f10716i0 = skippedOutputFrameCount;
            P(jD2);
        }
        return jD;
    }

    private AudioTrack G(AudioSink.a aVar, androidx.media3.common.c cVar, int i10, androidx.media3.common.r rVar) throws AudioSink.InitializationException {
        try {
            AudioTrack audioTrackA = this.f10727r.a(aVar, cVar, i10);
            int state = audioTrackA.getState();
            if (state == 1) {
                return audioTrackA;
            }
            try {
                audioTrackA.release();
            } catch (Exception unused) {
            }
            throw new AudioSink.InitializationException(state, aVar.f10690b, aVar.f10691c, aVar.f10689a, rVar, aVar.f10693e, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e10) {
            throw new AudioSink.InitializationException(0, aVar.f10690b, aVar.f10691c, aVar.f10689a, rVar, aVar.f10693e, e10);
        }
    }

    private AudioTrack H(h hVar) throws AudioSink.InitializationException {
        try {
            AudioTrack audioTrackG = G(hVar.a(), this.B, this.Z, hVar.f10748a);
            ExoPlayer.a aVar = this.f10726q;
            if (aVar != null) {
                aVar.w(U(audioTrackG));
            }
            return audioTrackG;
        } catch (AudioSink.InitializationException e10) {
            AudioSink.b bVar = this.f10729t;
            if (bVar != null) {
                bVar.a(e10);
            }
            throw e10;
        }
    }

    private AudioTrack I() throws AudioSink.InitializationException {
        try {
            return H((h) androidx.media3.common.util.a.e(this.f10731v));
        } catch (AudioSink.InitializationException e10) {
            h hVar = this.f10731v;
            if (hVar.f10755h > 1000000) {
                h hVarC = hVar.c(1000000);
                try {
                    AudioTrack audioTrackH = H(hVarC);
                    this.f10731v = hVarC;
                    return audioTrackH;
                } catch (AudioSink.InitializationException e11) {
                    e10.addSuppressed(e11);
                    X();
                    throw e10;
                }
            }
            X();
            throw e10;
        }
    }

    private void J(long j10) throws Exception {
        int iP0;
        AudioSink.b bVar;
        if (this.T == null || this.f10723n.b()) {
            return;
        }
        int iRemaining = this.T.remaining();
        boolean z10 = false;
        if (this.f10704c0) {
            androidx.media3.common.util.a.g(j10 != C.TIME_UNSET);
            if (j10 == Long.MIN_VALUE) {
                j10 = this.f10706d0;
            } else {
                this.f10706d0 = j10;
            }
            iP0 = q0(this.f10733x, this.T, iRemaining, j10);
        } else {
            iP0 = p0(this.f10733x, this.T, iRemaining);
        }
        this.f10708e0 = SystemClock.elapsedRealtime();
        if (iP0 < 0) {
            if (S(iP0)) {
                if (O() > 0) {
                    z10 = true;
                } else if (U(this.f10733x)) {
                    X();
                    z10 = true;
                }
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(iP0, this.f10731v.f10748a, z10);
            AudioSink.b bVar2 = this.f10729t;
            if (bVar2 != null) {
                bVar2.a(writeException);
            }
            if (!writeException.isRecoverable || this.f10699a == null) {
                this.f10723n.c(writeException);
                return;
            } else {
                this.f10734y = androidx.media3.exoplayer.audio.e.f10850c;
                throw writeException;
            }
        }
        this.f10723n.a();
        if (U(this.f10733x)) {
            if (this.L > 0) {
                this.f10712g0 = false;
            }
            if (this.X && (bVar = this.f10729t) != null && iP0 < iRemaining && !this.f10712g0) {
                bVar.c();
            }
        }
        int i10 = this.f10731v.f10750c;
        if (i10 == 0) {
            this.K += (long) iP0;
        }
        if (iP0 == iRemaining) {
            if (i10 != 0) {
                androidx.media3.common.util.a.g(this.T == this.R);
                this.L += ((long) this.M) * ((long) this.S);
            }
            this.T = null;
        }
    }

    private boolean K() throws Exception {
        if (!this.f10732w.f()) {
            J(Long.MIN_VALUE);
            return this.T == null;
        }
        this.f10732w.h();
        d0(Long.MIN_VALUE);
        if (!this.f10732w.e()) {
            return false;
        }
        ByteBuffer byteBuffer = this.T;
        return byteBuffer == null || !byteBuffer.hasRemaining();
    }

    private static int L(int i10, int i11, int i12) {
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i11, i12);
        androidx.media3.common.util.a.g(minBufferSize != -2);
        return minBufferSize;
    }

    private static int M(int i10, ByteBuffer byteBuffer) {
        if (i10 == 20) {
            return k2.k0.h(byteBuffer);
        }
        if (i10 != 30) {
            switch (i10) {
                case 5:
                case 6:
                    break;
                case 7:
                case 8:
                    break;
                case 9:
                    int iM = k2.i0.m(androidx.media3.common.util.a1.P(byteBuffer, byteBuffer.position()));
                    if (iM != -1) {
                        return iM;
                    }
                    throw new IllegalArgumentException();
                case 10:
                    return 1024;
                case 11:
                case 12:
                    return 2048;
                default:
                    switch (i10) {
                        case 14:
                            int iB = k2.b.b(byteBuffer);
                            if (iB == -1) {
                                return 0;
                            }
                            return k2.b.i(byteBuffer, iB) * 16;
                        case 15:
                            return 512;
                        case 16:
                            return 1024;
                        case 17:
                            return k2.c.e(byteBuffer);
                        case 18:
                            break;
                        default:
                            throw new IllegalStateException("Unexpected audio encoding: " + i10);
                    }
                    break;
            }
            return k2.b.e(byteBuffer);
        }
        return k2.p.f(byteBuffer);
    }

    public long N() {
        h hVar = this.f10731v;
        return hVar.f10750c == 0 ? this.I / ((long) hVar.f10749b) : this.J;
    }

    public long O() {
        h hVar = this.f10731v;
        return hVar.f10750c == 0 ? androidx.media3.common.util.a1.l(this.K, hVar.f10751d) : this.L;
    }

    private void P(long j10) {
        this.f10718j0 += j10;
        if (this.f10720k0 == null) {
            this.f10720k0 = new Handler(Looper.myLooper());
        }
        this.f10720k0.removeCallbacksAndMessages(null);
        this.f10720k0.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f10901a.Z();
            }
        }, 100L);
    }

    public static boolean Q() {
        boolean z10;
        synchronized (f10696m0) {
            z10 = f10698o0 > 0;
        }
        return z10;
    }

    private boolean R() throws AudioSink.InitializationException {
        androidx.media3.exoplayer.audio.i iVar;
        f4 f4Var;
        if (this.f10722m.b()) {
            return false;
        }
        AudioTrack audioTrackI = I();
        this.f10733x = audioTrackI;
        if (U(audioTrackI)) {
            e0(this.f10733x);
            h hVar = this.f10731v;
            if (hVar.f10758k) {
                AudioTrack audioTrack = this.f10733x;
                androidx.media3.common.r rVar = hVar.f10748a;
                audioTrack.setOffloadDelayPadding(rVar.H, rVar.I);
            }
        }
        int i10 = androidx.media3.common.util.a1.f10038a;
        if (i10 >= 31 && (f4Var = this.f10728s) != null) {
            c.a(this.f10733x, f4Var);
        }
        this.Z = this.f10733x.getAudioSessionId();
        b0 b0Var = this.f10713h;
        AudioTrack audioTrack2 = this.f10733x;
        h hVar2 = this.f10731v;
        b0Var.s(audioTrack2, hVar2.f10750c == 2, hVar2.f10754g, hVar2.f10751d, hVar2.f10755h);
        k0();
        int i11 = this.f10700a0.f9655a;
        if (i11 != 0) {
            this.f10733x.attachAuxEffect(i11);
            this.f10733x.setAuxEffectSendLevel(this.f10700a0.f9656b);
        }
        androidx.media3.exoplayer.audio.j jVar = this.f10702b0;
        if (jVar != null && i10 >= 23) {
            b.b(this.f10733x, jVar);
            androidx.media3.exoplayer.audio.i iVar2 = this.f10735z;
            if (iVar2 != null) {
                iVar2.i(this.f10702b0.f10884a);
            }
        }
        if (i10 >= 24 && (iVar = this.f10735z) != null) {
            this.A = new k(this.f10733x, iVar);
        }
        this.O = true;
        AudioSink.b bVar = this.f10729t;
        if (bVar != null) {
            bVar.j(this.f10731v.a());
        }
        return true;
    }

    private static boolean S(int i10) {
        return (androidx.media3.common.util.a1.f10038a >= 24 && i10 == -6) || i10 == -32;
    }

    private boolean T() {
        return this.f10733x != null;
    }

    private static boolean U(AudioTrack audioTrack) {
        return androidx.media3.common.util.a1.f10038a >= 29 && audioTrack.isOffloadedPlayback();
    }

    public static void W(AudioTrack audioTrack, final AudioSink.b bVar, Handler handler, final AudioSink.a aVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (bVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        bVar.k(aVar);
                    }
                });
            }
            synchronized (f10696m0) {
                try {
                    int i10 = f10698o0 - 1;
                    f10698o0 = i10;
                    if (i10 == 0) {
                        f10697n0.shutdown();
                        f10697n0 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            if (bVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        bVar.k(aVar);
                    }
                });
            }
            synchronized (f10696m0) {
                try {
                    int i11 = f10698o0 - 1;
                    f10698o0 = i11;
                    if (i11 == 0) {
                        f10697n0.shutdown();
                        f10697n0 = null;
                    }
                    throw th3;
                } catch (Throwable th4) {
                    throw th4;
                }
            }
        }
    }

    private void X() {
        if (this.f10731v.f()) {
            this.f10710f0 = true;
        }
    }

    private ByteBuffer Y(ByteBuffer byteBuffer) {
        if (this.f10731v.f10750c != 0) {
            return byteBuffer;
        }
        int iF = (int) androidx.media3.common.util.a1.F(androidx.media3.common.util.a1.R0(20L), this.f10731v.f10752e);
        long jO = O();
        if (jO >= iF) {
            return byteBuffer;
        }
        h hVar = this.f10731v;
        return c1.a(byteBuffer, hVar.f10754g, hVar.f10751d, (int) jO, iF);
    }

    public void Z() {
        if (this.f10718j0 >= 300000) {
            this.f10729t.e();
            this.f10718j0 = 0L;
        }
    }

    private void a0() {
        if (this.f10735z == null && this.f10699a != null) {
            this.f10714h0 = Looper.myLooper();
            androidx.media3.exoplayer.audio.i iVar = new androidx.media3.exoplayer.audio.i(this.f10699a, new androidx.media3.exoplayer.audio.i.f() {
                @Override
                public final void a(e eVar) {
                    this.f10898a.b0(eVar);
                }
            }, this.B, this.f10702b0);
            this.f10735z = iVar;
            this.f10734y = iVar.g();
        }
        androidx.media3.common.util.a.e(this.f10734y);
    }

    private void c0() {
        if (this.V) {
            return;
        }
        this.V = true;
        this.f10713h.g(O());
        if (U(this.f10733x)) {
            this.W = false;
        }
        this.f10733x.stop();
        this.H = 0;
    }

    private void d0(long j10) throws Exception {
        J(j10);
        if (this.T != null) {
            return;
        }
        if (!this.f10732w.f()) {
            ByteBuffer byteBuffer = this.R;
            if (byteBuffer != null) {
                j0(byteBuffer);
                J(j10);
                return;
            }
            return;
        }
        while (!this.f10732w.e()) {
            do {
                ByteBuffer byteBufferD = this.f10732w.d();
                if (byteBufferD.hasRemaining()) {
                    j0(byteBufferD);
                    J(j10);
                } else {
                    ByteBuffer byteBuffer2 = this.R;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.f10732w.i(this.R);
                    }
                }
            } while (this.T == null);
            return;
        }
    }

    private void e0(AudioTrack audioTrack) {
        if (this.f10721l == null) {
            this.f10721l = new n();
        }
        this.f10721l.a(audioTrack);
    }

    private static void f0(final AudioTrack audioTrack, final AudioSink.b bVar, final AudioSink.a aVar) {
        final Handler handler = new Handler(Looper.myLooper());
        synchronized (f10696m0) {
            try {
                if (f10697n0 == null) {
                    f10697n0 = androidx.media3.common.util.a1.T0("ExoPlayer:AudioTrackReleaseThread");
                }
                f10698o0++;
                f10697n0.schedule(new Runnable() {
                    @Override
                    public final void run() {
                        DefaultAudioSink.W(audioTrack, bVar, handler, aVar);
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void g0() {
        this.I = 0L;
        this.J = 0L;
        this.K = 0L;
        this.L = 0L;
        this.f10712g0 = false;
        this.M = 0;
        this.D = new j(this.E, 0L, 0L);
        this.P = 0L;
        this.C = null;
        this.f10715i.clear();
        this.R = null;
        this.S = 0;
        this.T = null;
        this.V = false;
        this.U = false;
        this.W = false;
        this.G = null;
        this.H = 0;
        this.f10707e.i();
        l0();
    }

    private void h0(androidx.media3.common.z zVar) {
        j jVar = new j(zVar, C.TIME_UNSET, C.TIME_UNSET);
        if (T()) {
            this.C = jVar;
        } else {
            this.D = jVar;
        }
    }

    private void i0() {
        if (T()) {
            try {
                this.f10733x.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(this.E.f10254a).setPitch(this.E.f10255b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e10) {
                androidx.media3.common.util.u.i("DefaultAudioSink", "Failed to set playback params", e10);
            }
            androidx.media3.common.z zVar = new androidx.media3.common.z(this.f10733x.getPlaybackParams().getSpeed(), this.f10733x.getPlaybackParams().getPitch());
            this.E = zVar;
            this.f10713h.t(zVar.f10254a);
        }
    }

    private void j0(ByteBuffer byteBuffer) {
        androidx.media3.common.util.a.g(this.T == null);
        if (byteBuffer.hasRemaining()) {
            this.T = Y(byteBuffer);
        }
    }

    private void k0() {
        if (T()) {
            this.f10733x.setVolume(this.Q);
        }
    }

    private void l0() {
        androidx.media3.common.audio.a aVar = this.f10731v.f10756i;
        this.f10732w = aVar;
        aVar.b();
    }

    private boolean m0() {
        if (!this.f10704c0) {
            h hVar = this.f10731v;
            if (hVar.f10750c == 0 && !n0(hVar.f10748a.G)) {
                return true;
            }
        }
        return false;
    }

    private boolean n0(int i10) {
        return this.f10703c && androidx.media3.common.util.a1.F0(i10);
    }

    private boolean o0() {
        h hVar = this.f10731v;
        return hVar != null && hVar.f10757j && androidx.media3.common.util.a1.f10038a >= 23;
    }

    private static int p0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10) {
        return audioTrack.write(byteBuffer, i10, 1);
    }

    private int q0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10, long j10) {
        if (androidx.media3.common.util.a1.f10038a >= 26) {
            return audioTrack.write(byteBuffer, i10, 1, j10 * 1000);
        }
        if (this.G == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.G = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.G.putInt(1431633921);
        }
        if (this.H == 0) {
            this.G.putInt(4, i10);
            this.G.putLong(8, j10 * 1000);
            this.G.position(0);
            this.H = i10;
        }
        int iRemaining = this.G.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.G, iRemaining, 1);
            if (iWrite < 0) {
                this.H = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iP0 = p0(audioTrack, byteBuffer, i10);
        if (iP0 < 0) {
            this.H = 0;
            return iP0;
        }
        this.H -= iP0;
        return iP0;
    }

    @Override
    public boolean a(androidx.media3.common.r rVar) {
        return p(rVar) != 0;
    }

    @Override
    public void b(androidx.media3.common.z zVar) {
        this.E = new androidx.media3.common.z(androidx.media3.common.util.a1.o(zVar.f10254a, 0.1f, 8.0f), androidx.media3.common.util.a1.o(zVar.f10255b, 0.1f, 8.0f));
        if (o0()) {
            i0();
        } else {
            h0(zVar);
        }
    }

    public void b0(androidx.media3.exoplayer.audio.e eVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f10714h0;
        if (looper != looperMyLooper) {
            String name = looper == null ? "null" : looper.getThread().getName();
            throw new IllegalStateException("Current looper (" + (looperMyLooper != null ? looperMyLooper.getThread().getName() : "null") + ") is not the playback looper (" + name + ")");
        }
        androidx.media3.exoplayer.audio.e eVar2 = this.f10734y;
        if (eVar2 == null || eVar.equals(eVar2)) {
            return;
        }
        this.f10734y = eVar;
        AudioSink.b bVar = this.f10729t;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override
    public boolean c(ByteBuffer byteBuffer, long j10, int i10) throws Exception {
        ByteBuffer byteBuffer2 = this.R;
        androidx.media3.common.util.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f10730u != null) {
            if (!K()) {
                return false;
            }
            if (this.f10730u.b(this.f10731v)) {
                this.f10731v = this.f10730u;
                this.f10730u = null;
                AudioTrack audioTrack = this.f10733x;
                if (audioTrack != null && U(audioTrack) && this.f10731v.f10758k) {
                    if (this.f10733x.getPlayState() == 3) {
                        this.f10733x.setOffloadEndOfStream();
                        this.f10713h.a();
                    }
                    AudioTrack audioTrack2 = this.f10733x;
                    androidx.media3.common.r rVar = this.f10731v.f10748a;
                    audioTrack2.setOffloadDelayPadding(rVar.H, rVar.I);
                    this.f10712g0 = true;
                }
            } else {
                c0();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            D(j10);
        }
        if (!T()) {
            try {
                if (!R()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e10) {
                if (e10.isRecoverable) {
                    throw e10;
                }
                this.f10722m.c(e10);
                return false;
            }
        }
        this.f10722m.a();
        if (this.O) {
            this.P = Math.max(0L, j10);
            this.N = false;
            this.O = false;
            if (o0()) {
                i0();
            }
            D(j10);
            if (this.X) {
                play();
            }
        }
        if (!this.f10713h.k(O())) {
            return false;
        }
        if (this.R == null) {
            androidx.media3.common.util.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            h hVar = this.f10731v;
            if (hVar.f10750c != 0 && this.M == 0) {
                int iM = M(hVar.f10754g, byteBuffer);
                this.M = iM;
                if (iM == 0) {
                    return true;
                }
            }
            if (this.C != null) {
                if (!K()) {
                    return false;
                }
                D(j10);
                this.C = null;
            }
            long jE = this.P + this.f10731v.e(N() - this.f10707e.h());
            if (!this.N && Math.abs(jE - j10) > 200000) {
                AudioSink.b bVar = this.f10729t;
                if (bVar != null) {
                    bVar.a(new AudioSink.UnexpectedDiscontinuityException(j10, jE));
                }
                this.N = true;
            }
            if (this.N) {
                if (!K()) {
                    return false;
                }
                long j11 = j10 - jE;
                this.P += j11;
                this.N = false;
                D(j10);
                AudioSink.b bVar2 = this.f10729t;
                if (bVar2 != null && j11 != 0) {
                    bVar2.onPositionDiscontinuity();
                }
            }
            if (this.f10731v.f10750c == 0) {
                this.I += (long) byteBuffer.remaining();
            } else {
                this.J += ((long) this.M) * ((long) i10);
            }
            this.R = byteBuffer;
            this.S = i10;
        }
        d0(j10);
        if (!this.R.hasRemaining()) {
            this.R = null;
            this.S = 0;
            return true;
        }
        if (!this.f10713h.j(O())) {
            return false;
        }
        androidx.media3.common.util.u.h("DefaultAudioSink", "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override
    public void d() {
        androidx.media3.common.util.a.g(this.Y);
        if (this.f10704c0) {
            return;
        }
        this.f10704c0 = true;
        flush();
    }

    @Override
    public void disableTunneling() {
        if (this.f10704c0) {
            this.f10704c0 = false;
            flush();
        }
    }

    @Override
    public void e(boolean z10) {
        this.F = z10;
        h0(o0() ? androidx.media3.common.z.f10251d : this.E);
    }

    @Override
    public void f(androidx.media3.common.c cVar) {
        if (this.B.equals(cVar)) {
            return;
        }
        this.B = cVar;
        if (this.f10704c0) {
            return;
        }
        androidx.media3.exoplayer.audio.i iVar = this.f10735z;
        if (iVar != null) {
            iVar.h(cVar);
        }
        flush();
    }

    @Override
    public void flush() {
        k kVar;
        if (T()) {
            g0();
            if (this.f10713h.i()) {
                this.f10733x.pause();
            }
            if (U(this.f10733x)) {
                ((n) androidx.media3.common.util.a.e(this.f10721l)).b(this.f10733x);
            }
            AudioSink.a aVarA = this.f10731v.a();
            h hVar = this.f10730u;
            if (hVar != null) {
                this.f10731v = hVar;
                this.f10730u = null;
            }
            this.f10713h.q();
            if (androidx.media3.common.util.a1.f10038a >= 24 && (kVar = this.A) != null) {
                kVar.c();
                this.A = null;
            }
            f0(this.f10733x, this.f10729t, aVarA);
            this.f10733x = null;
        }
        this.f10723n.a();
        this.f10722m.a();
        this.f10716i0 = 0L;
        this.f10718j0 = 0L;
        Handler handler = this.f10720k0;
        if (handler != null) {
            ((Handler) androidx.media3.common.util.a.e(handler)).removeCallbacksAndMessages(null);
        }
    }

    @Override
    public androidx.media3.exoplayer.audio.k g(androidx.media3.common.r rVar) {
        return this.f10710f0 ? androidx.media3.exoplayer.audio.k.f10885d : this.f10725p.a(rVar, this.B);
    }

    @Override
    public long getCurrentPositionUs(boolean z10) {
        if (!T() || this.O) {
            return Long.MIN_VALUE;
        }
        return F(E(Math.min(this.f10713h.c(), this.f10731v.d(O()))));
    }

    @Override
    public androidx.media3.common.z getPlaybackParameters() {
        return this.E;
    }

    @Override
    public void h(AudioDeviceInfo audioDeviceInfo) {
        this.f10702b0 = audioDeviceInfo == null ? null : new androidx.media3.exoplayer.audio.j(audioDeviceInfo);
        androidx.media3.exoplayer.audio.i iVar = this.f10735z;
        if (iVar != null) {
            iVar.i(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.f10733x;
        if (audioTrack != null) {
            b.b(audioTrack, this.f10702b0);
        }
    }

    @Override
    public void handleDiscontinuity() {
        this.N = true;
    }

    @Override
    public boolean hasPendingData() {
        return T() && !(androidx.media3.common.util.a1.f10038a >= 29 && this.f10733x.isOffloadedPlayback() && this.W) && this.f10713h.h(O());
    }

    @Override
    public long i() {
        if (!T()) {
            return C.TIME_UNSET;
        }
        if (androidx.media3.common.util.a1.f10038a >= 23) {
            return b.a(this.f10733x, this.f10731v);
        }
        h hVar = this.f10731v;
        return androidx.media3.common.util.a1.g1(this.f10731v.f10755h, 1000000L, hVar.f10750c == 0 ? ((long) hVar.f10752e) * ((long) hVar.f10751d) : x0.d(hVar.f10754g), RoundingMode.DOWN);
    }

    @Override
    public boolean isEnded() {
        return !T() || (this.U && !hasPendingData());
    }

    @Override
    public void j(AudioSink.b bVar) {
        this.f10729t = bVar;
    }

    @Override
    public void k(int i10) {
        androidx.media3.common.util.a.g(androidx.media3.common.util.a1.f10038a >= 29);
        this.f10719k = i10;
    }

    @Override
    public void l(androidx.media3.common.r rVar, int i10, int[] iArr) throws AudioSink.ConfigurationException {
        androidx.media3.common.audio.a aVar;
        int iK0;
        int iK1;
        boolean z10;
        int i11;
        int iIntValue;
        int i12;
        boolean z11;
        int i13;
        int iA;
        a0();
        if (MimeTypes.AUDIO_RAW.equals(rVar.f9849o)) {
            androidx.media3.common.util.a.a(androidx.media3.common.util.a1.G0(rVar.G));
            iK0 = androidx.media3.common.util.a1.k0(rVar.G, rVar.E);
            ImmutableList.a aVar2 = new ImmutableList.a();
            if (n0(rVar.G)) {
                aVar2.l(this.f10711g);
            } else {
                aVar2.l(this.f10709f);
                aVar2.k(this.f10701b.getAudioProcessors());
            }
            androidx.media3.common.audio.a aVar3 = new androidx.media3.common.audio.a(aVar2.e());
            if (aVar3.equals(this.f10732w)) {
                aVar3 = this.f10732w;
            }
            this.f10707e.j(rVar.H, rVar.I);
            this.f10705d.h(iArr);
            try {
                AudioProcessor.a aVarA = aVar3.a(new AudioProcessor.a(rVar));
                int i14 = aVarA.f9507c;
                int i15 = aVarA.f9505a;
                int iM = androidx.media3.common.util.a1.M(aVarA.f9506b);
                i13 = 0;
                z10 = false;
                iK1 = androidx.media3.common.util.a1.k0(i14, aVarA.f9506b);
                aVar = aVar3;
                i11 = i15;
                iIntValue = iM;
                z11 = this.f10717j;
                i12 = i14;
            } catch (AudioProcessor.UnhandledAudioFormatException e10) {
                throw new AudioSink.ConfigurationException(e10, rVar);
            }
        } else {
            androidx.media3.common.audio.a aVar4 = new androidx.media3.common.audio.a(ImmutableList.of());
            int i16 = rVar.F;
            androidx.media3.exoplayer.audio.k kVarG = this.f10719k != 0 ? g(rVar) : androidx.media3.exoplayer.audio.k.f10885d;
            if (this.f10719k == 0 || !kVarG.f10886a) {
                Pair pairH = this.f10734y.h(rVar, this.B);
                if (pairH == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + rVar, rVar);
                }
                int iIntValue2 = ((Integer) pairH.first).intValue();
                aVar = aVar4;
                iK0 = -1;
                iK1 = -1;
                z10 = false;
                i11 = i16;
                iIntValue = ((Integer) pairH.second).intValue();
                i12 = iIntValue2;
                z11 = this.f10717j;
                i13 = 2;
            } else {
                int iF = androidx.media3.common.y.f((String) androidx.media3.common.util.a.e(rVar.f9849o), rVar.f9845k);
                int iM2 = androidx.media3.common.util.a1.M(rVar.E);
                aVar = aVar4;
                i13 = 1;
                z11 = true;
                iK0 = -1;
                iK1 = -1;
                i11 = i16;
                z10 = kVarG.f10887b;
                i12 = iF;
                iIntValue = iM2;
            }
        }
        if (i12 == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i13 + ") for: " + rVar, rVar);
        }
        if (iIntValue == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i13 + ") for: " + rVar, rVar);
        }
        int i17 = rVar.f9844j;
        if (MimeTypes.AUDIO_DTS_EXPRESS.equals(rVar.f9849o) && i17 == -1) {
            i17 = 768000;
        }
        int i18 = i17;
        if (i10 != 0) {
            iA = i10;
        } else {
            iA = this.f10724o.a(L(i11, iIntValue, i12), i12, i13, iK1 != -1 ? iK1 : 1, i11, i18, z11 ? 8.0d : 1.0d);
        }
        this.f10710f0 = false;
        h hVar = new h(rVar, iK0, i13, iK1, i11, iIntValue, i12, iA, aVar, z11, z10, this.f10704c0);
        if (T()) {
            this.f10730u = hVar;
        } else {
            this.f10731v = hVar;
        }
    }

    @Override
    public void m(int i10, int i11) {
        h hVar;
        AudioTrack audioTrack = this.f10733x;
        if (audioTrack == null || !U(audioTrack) || (hVar = this.f10731v) == null || !hVar.f10758k) {
            return;
        }
        this.f10733x.setOffloadDelayPadding(i10, i11);
    }

    @Override
    public void n(f4 f4Var) {
        this.f10728s = f4Var;
    }

    @Override
    public void o(long j10) {
        y.a(this, j10);
    }

    @Override
    public int p(androidx.media3.common.r rVar) {
        a0();
        if (!MimeTypes.AUDIO_RAW.equals(rVar.f9849o)) {
            return this.f10734y.j(rVar, this.B) ? 2 : 0;
        }
        if (androidx.media3.common.util.a1.G0(rVar.G)) {
            int i10 = rVar.G;
            return (i10 == 2 || (this.f10703c && i10 == 4)) ? 2 : 1;
        }
        androidx.media3.common.util.u.h("DefaultAudioSink", "Invalid PCM encoding: " + rVar.G);
        return 0;
    }

    @Override
    public void pause() {
        this.X = false;
        if (T()) {
            if (this.f10713h.p() || U(this.f10733x)) {
                this.f10733x.pause();
            }
        }
    }

    @Override
    public void play() {
        this.X = true;
        if (T()) {
            this.f10713h.v();
            this.f10733x.play();
        }
    }

    @Override
    public void playToEndOfStream() {
        if (!this.U && T() && K()) {
            c0();
            this.U = true;
        }
    }

    @Override
    public void q(androidx.media3.common.f fVar) {
        if (this.f10700a0.equals(fVar)) {
            return;
        }
        int i10 = fVar.f9655a;
        float f10 = fVar.f9656b;
        AudioTrack audioTrack = this.f10733x;
        if (audioTrack != null) {
            if (this.f10700a0.f9655a != i10) {
                audioTrack.attachAuxEffect(i10);
            }
            if (i10 != 0) {
                this.f10733x.setAuxEffectSendLevel(f10);
            }
        }
        this.f10700a0 = fVar;
    }

    @Override
    public void r(androidx.media3.common.util.i iVar) {
        this.f10713h.u(iVar);
    }

    @Override
    public void release() {
        androidx.media3.exoplayer.audio.i iVar = this.f10735z;
        if (iVar != null) {
            iVar.j();
        }
    }

    @Override
    public void reset() {
        flush();
        r4 it = this.f10709f.iterator();
        while (it.hasNext()) {
            ((AudioProcessor) it.next()).reset();
        }
        r4 it2 = this.f10711g.iterator();
        while (it2.hasNext()) {
            ((AudioProcessor) it2.next()).reset();
        }
        androidx.media3.common.audio.a aVar = this.f10732w;
        if (aVar != null) {
            aVar.j();
        }
        this.X = false;
        this.f10710f0 = false;
    }

    @Override
    public void setAudioSessionId(int i10) {
        if (this.Z != i10) {
            this.Z = i10;
            this.Y = i10 != 0;
            flush();
        }
    }

    @Override
    public void setVolume(float f10) {
        if (this.Q != f10) {
            this.Q = f10;
            k0();
        }
    }

    private DefaultAudioSink(g gVar) {
        Context context = gVar.f10738a;
        this.f10699a = context;
        this.B = androidx.media3.common.c.f9595g;
        this.f10734y = context != null ? null : gVar.f10739b;
        this.f10701b = gVar.f10740c;
        this.f10703c = gVar.f10741d;
        this.f10717j = androidx.media3.common.util.a1.f10038a >= 23 && gVar.f10742e;
        this.f10719k = 0;
        this.f10724o = gVar.f10744g;
        this.f10725p = (d) androidx.media3.common.util.a.e(gVar.f10746i);
        this.f10713h = new b0(new m());
        c0 c0Var = new c0();
        this.f10705d = c0Var;
        f1 f1Var = new f1();
        this.f10707e = f1Var;
        this.f10709f = ImmutableList.of((f1) new androidx.media3.common.audio.e(), (f1) c0Var, f1Var);
        this.f10711g = ImmutableList.of((f1) new e1(), (f1) c0Var, f1Var);
        this.Q = 1.0f;
        this.Z = 0;
        this.f10700a0 = new androidx.media3.common.f(0, 0.0f);
        androidx.media3.common.z zVar = androidx.media3.common.z.f10251d;
        this.D = new j(zVar, 0L, 0L);
        this.E = zVar;
        this.F = false;
        this.f10715i = new ArrayDeque();
        this.f10722m = new l();
        this.f10723n = new l();
        this.f10726q = gVar.f10747j;
        this.f10727r = gVar.f10745h;
    }

    public static final class g {

        private final Context f10738a;

        private androidx.media3.exoplayer.audio.e f10739b;

        private t1.n f10740c;

        private boolean f10741d;

        private boolean f10742e;

        private boolean f10743f;

        private e f10744g;

        private f f10745h;

        private d f10746i;

        private ExoPlayer.a f10747j;

        @Deprecated
        public g() {
            this.f10738a = null;
            this.f10739b = androidx.media3.exoplayer.audio.e.f10850c;
            this.f10744g = e.f10736a;
            this.f10745h = f.f10737a;
        }

        public DefaultAudioSink j() {
            androidx.media3.common.util.a.g(!this.f10743f);
            this.f10743f = true;
            if (this.f10740c == null) {
                this.f10740c = new i(new AudioProcessor[0]);
            }
            if (this.f10746i == null) {
                this.f10746i = new f0(this.f10738a);
            }
            return new DefaultAudioSink(this);
        }

        public g k(androidx.media3.exoplayer.audio.e eVar) {
            androidx.media3.common.util.a.e(eVar);
            this.f10739b = eVar;
            return this;
        }

        public g l(t1.n nVar) {
            androidx.media3.common.util.a.e(nVar);
            this.f10740c = nVar;
            return this;
        }

        public g m(AudioProcessor[] audioProcessorArr) {
            androidx.media3.common.util.a.e(audioProcessorArr);
            return l(new i(audioProcessorArr));
        }

        public g n(boolean z10) {
            this.f10742e = z10;
            return this;
        }

        public g o(boolean z10) {
            this.f10741d = z10;
            return this;
        }

        public g(Context context) {
            this.f10738a = context;
            this.f10739b = androidx.media3.exoplayer.audio.e.f10850c;
            this.f10744g = e.f10736a;
            this.f10745h = f.f10737a;
        }
    }
}
