package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.media3.common.C;
import com.google.android.exoplayer2.s;
import defpackage.blb;
import defpackage.de1;
import defpackage.ey0;
import defpackage.kn;
import defpackage.le1;
import defpackage.n4;
import defpackage.op5;
import defpackage.q30;
import defpackage.q33;
import defpackage.qp6;
import defpackage.s4;
import defpackage.ta8;
import defpackage.ur6;
import defpackage.zi;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

public final class DefaultAudioSink implements AudioSink {
    public static boolean c0 = false;
    public int A;
    public long B;
    public long C;
    public long D;
    public long E;
    public int F;
    public boolean G;
    public boolean H;
    public long I;
    public float J;
    public AudioProcessor[] K;
    public ByteBuffer[] L;
    public ByteBuffer M;
    public int N;
    public ByteBuffer O;
    public byte[] P;
    public int Q;
    public int R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public int W;
    public q30 X;
    public boolean Y;
    public long Z;
    public final kn a;
    public boolean a0;
    public final b b;
    public boolean b0;
    public final boolean c;
    public final com.google.android.exoplayer2.audio.e d;
    public final l e;
    public final AudioProcessor[] f;
    public final AudioProcessor[] g;
    public final le1 h;
    public final com.google.android.exoplayer2.audio.c i;
    public final ArrayDeque j;
    public final boolean k;
    public final int l;
    public j m;
    public final h n;
    public final h o;
    public final c p;
    public ta8 q;
    public AudioSink.a r;
    public e s;
    public e t;
    public AudioTrack u;
    public com.google.android.exoplayer2.audio.a v;
    public g w;
    public g x;
    public s y;
    public ByteBuffer z;

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    public static final class a {
        @DoNotInline
        public static void a(AudioTrack audioTrack, ta8 ta8Var) {
            LogSessionId logSessionIdA = ta8Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionIdA);
        }
    }

    public interface b {
        s a(s sVar);

        boolean applySkipSilenceEnabled(boolean z);

        AudioProcessor[] getAudioProcessors();

        long getMediaDuration(long j);

        long getSkippedOutputFrameCount();
    }

    public interface c {
        public static final c a = new com.google.android.exoplayer2.audio.f.a().g();

        int a(int i, int i2, int i3, int i4, int i5, double d);
    }

    public static final class d {
        public b b;
        public boolean c;
        public boolean d;
        public kn a = kn.c;
        public int e = 0;
        public c f = c.a;

        public DefaultAudioSink f() {
            if (this.b == null) {
                this.b = new f(new AudioProcessor[0]);
            }
            return new DefaultAudioSink(this);
        }

        public d g(kn knVar) {
            zi.e(knVar);
            this.a = knVar;
            return this;
        }

        public d h(boolean z) {
            this.d = z;
            return this;
        }

        public d i(boolean z) {
            this.c = z;
            return this;
        }

        public d j(int i) {
            this.e = i;
            return this;
        }
    }

    public static final class e {
        public final com.google.android.exoplayer2.k a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final AudioProcessor[] i;

        public e(com.google.android.exoplayer2.k kVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, AudioProcessor[] audioProcessorArr) {
            this.a = kVar;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
            this.i = audioProcessorArr;
        }

        public static AudioAttributes i(com.google.android.exoplayer2.audio.a aVar, boolean z) {
            return z ? j() : aVar.b().a;
        }

        public static AudioAttributes j() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        public AudioTrack a(boolean z, com.google.android.exoplayer2.audio.a aVar, int i) throws AudioSink.InitializationException {
            try {
                AudioTrack audioTrackD = d(z, aVar, i);
                int state = audioTrackD.getState();
                if (state == 1) {
                    return audioTrackD;
                }
                try {
                    audioTrackD.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.e, this.f, this.h, this.a, l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e) {
                throw new AudioSink.InitializationException(0, this.e, this.f, this.h, this.a, l(), e);
            }
        }

        public boolean b(e eVar) {
            return eVar.c == this.c && eVar.g == this.g && eVar.e == this.e && eVar.f == this.f && eVar.d == this.d;
        }

        public e c(int i) {
            return new e(this.a, this.b, this.c, this.d, this.e, this.f, this.g, i, this.i);
        }

        public final AudioTrack d(boolean z, com.google.android.exoplayer2.audio.a aVar, int i) {
            int i2 = blb.a;
            if (i2 >= 29) {
                return f(z, aVar, i);
            }
            return i2 >= 21 ? e(z, aVar, i) : g(aVar, i);
        }

        public final AudioTrack e(boolean z, com.google.android.exoplayer2.audio.a aVar, int i) {
            return new AudioTrack(i(aVar, z), DefaultAudioSink.y(this.e, this.f, this.g), this.h, 1, i);
        }

        public final AudioTrack f(boolean z, com.google.android.exoplayer2.audio.a aVar, int i) {
            return new AudioTrack.Builder().setAudioAttributes(i(aVar, z)).setAudioFormat(DefaultAudioSink.y(this.e, this.f, this.g)).setTransferMode(1).setBufferSizeInBytes(this.h).setSessionId(i).setOffloadedPlayback(this.c == 1).build();
        }

        public final AudioTrack g(com.google.android.exoplayer2.audio.a aVar, int i) {
            int iZ = blb.Z(aVar.d);
            return i == 0 ? new AudioTrack(iZ, this.e, this.f, this.g, this.h, 1) : new AudioTrack(iZ, this.e, this.f, this.g, this.h, 1, i);
        }

        public long h(long j) {
            return (j * 1000000) / ((long) this.e);
        }

        public long k(long j) {
            return (j * 1000000) / ((long) this.a.A);
        }

        public boolean l() {
            return this.c == 1;
        }
    }

    public static class f implements b {
        public final AudioProcessor[] a;
        public final com.google.android.exoplayer2.audio.j b;
        public final k c;

        public f(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new com.google.android.exoplayer2.audio.j(), new k());
        }

        @Override
        public s a(s sVar) {
            this.c.d(sVar.b);
            this.c.c(sVar.c);
            return sVar;
        }

        @Override
        public boolean applySkipSilenceEnabled(boolean z) {
            this.b.q(z);
            return z;
        }

        @Override
        public AudioProcessor[] getAudioProcessors() {
            return this.a;
        }

        @Override
        public long getMediaDuration(long j) {
            return this.c.b(j);
        }

        @Override
        public long getSkippedOutputFrameCount() {
            return this.b.k();
        }

        public f(AudioProcessor[] audioProcessorArr, com.google.android.exoplayer2.audio.j jVar, k kVar) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.b = jVar;
            this.c = kVar;
            audioProcessorArr2[audioProcessorArr.length] = jVar;
            audioProcessorArr2[audioProcessorArr.length + 1] = kVar;
        }
    }

    public static final class g {
        public final s a;
        public final boolean b;
        public final long c;
        public final long d;

        public g(s sVar, boolean z, long j, long j2) {
            this.a = sVar;
            this.b = z;
            this.c = j;
            this.d = j2;
        }
    }

    public static final class h {
        public final long a;
        public Exception b;
        public long c;

        public h(long j) {
            this.a = j;
        }

        public void a() {
            this.b = null;
        }

        public void b(Exception exc) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.b == null) {
                this.b = exc;
                this.c = this.a + jElapsedRealtime;
            }
            if (jElapsedRealtime >= this.c) {
                Exception exc2 = this.b;
                if (exc2 != exc) {
                    exc2.addSuppressed(exc);
                }
                Exception exc3 = this.b;
                a();
                throw exc3;
            }
        }
    }

    public final class i implements com.google.android.exoplayer2.audio.c.a {
        public i() {
        }

        @Override
        public void onInvalidLatency(long j) {
            op5.i("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
        }

        @Override
        public void onPositionAdvancing(long j) {
            if (DefaultAudioSink.this.r != null) {
                DefaultAudioSink.this.r.onPositionAdvancing(j);
            }
        }

        @Override
        public void onPositionFramesMismatch(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.F() + ", " + DefaultAudioSink.this.G();
            if (DefaultAudioSink.c0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            op5.i("DefaultAudioSink", str);
        }

        @Override
        public void onSystemTimeUsMismatch(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.F() + ", " + DefaultAudioSink.this.G();
            if (DefaultAudioSink.c0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            op5.i("DefaultAudioSink", str);
        }

        @Override
        public void onUnderrun(int i, long j) {
            if (DefaultAudioSink.this.r != null) {
                DefaultAudioSink.this.r.onUnderrun(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.Z);
            }
        }
    }

    public final class j {
        public final Handler a = new Handler();
        public final AudioTrack.StreamEventCallback b;

        public class a extends AudioTrack.StreamEventCallback {
            public final DefaultAudioSink a;

            public a(DefaultAudioSink defaultAudioSink) {
                this.a = defaultAudioSink;
            }

            @Override
            public void onDataRequest(AudioTrack audioTrack, int i) {
                zi.g(audioTrack == DefaultAudioSink.this.u);
                if (DefaultAudioSink.this.r == null || !DefaultAudioSink.this.U) {
                    return;
                }
                DefaultAudioSink.this.r.onOffloadBufferEmptying();
            }

            @Override
            public void onTearDown(AudioTrack audioTrack) {
                zi.g(audioTrack == DefaultAudioSink.this.u);
                if (DefaultAudioSink.this.r == null || !DefaultAudioSink.this.U) {
                    return;
                }
                DefaultAudioSink.this.r.onOffloadBufferEmptying();
            }
        }

        public j() {
            this.b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new de1(handler), this.b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.b);
            this.a.removeCallbacksAndMessages(null);
        }
    }

    public static int A(int i2, int i3, int i4) {
        int minBufferSize = AudioTrack.getMinBufferSize(i2, i3, i4);
        zi.g(minBufferSize != -2);
        return minBufferSize;
    }

    public static int B(int i2, ByteBuffer byteBuffer) {
        switch (i2) {
            case 5:
            case 6:
            case 18:
                return n4.d(byteBuffer);
            case 7:
            case 8:
                return q33.e(byteBuffer);
            case 9:
                int iM = ur6.m(blb.F(byteBuffer, byteBuffer.position()));
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
                throw new IllegalStateException("Unexpected audio encoding: " + i2);
            case 14:
                int iA = n4.a(byteBuffer);
                if (iA == -1) {
                    return 0;
                }
                return n4.h(byteBuffer, iA) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return s4.c(byteBuffer);
        }
    }

    public static boolean I(int i2) {
        return (blb.a >= 24 && i2 == -6) || i2 == -32;
    }

    public static boolean K(AudioTrack audioTrack) {
        return blb.a >= 29 && audioTrack.isOffloadedPlayback();
    }

    public static void T(AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }

    public static void U(AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    public static int a0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i2) {
        return audioTrack.write(byteBuffer, i2, 1);
    }

    public static AudioFormat y(int i2, int i3, int i4) {
        return new AudioFormat.Builder().setSampleRate(i2).setChannelMask(i3).setEncoding(i4).build();
    }

    public final g C() {
        g gVar = this.w;
        if (gVar != null) {
            return gVar;
        }
        return !this.j.isEmpty() ? (g) this.j.getLast() : this.x;
    }

    public final int D(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        int i2 = blb.a;
        if (i2 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i2 == 30 && blb.d.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    public boolean E() {
        return C().b;
    }

    public final long F() {
        e eVar = this.t;
        return eVar.c == 0 ? this.B / ((long) eVar.b) : this.C;
    }

    public final long G() {
        e eVar = this.t;
        return eVar.c == 0 ? this.D / ((long) eVar.d) : this.E;
    }

    public final boolean H() throws AudioSink.InitializationException {
        ta8 ta8Var;
        if (!this.h.e()) {
            return false;
        }
        AudioTrack audioTrackV = v();
        this.u = audioTrackV;
        if (K(audioTrackV)) {
            O(this.u);
            if (this.l != 3) {
                AudioTrack audioTrack = this.u;
                com.google.android.exoplayer2.k kVar = this.t.a;
                audioTrack.setOffloadDelayPadding(kVar.C, kVar.D);
            }
        }
        if (blb.a >= 31 && (ta8Var = this.q) != null) {
            a.a(this.u, ta8Var);
        }
        this.W = this.u.getAudioSessionId();
        com.google.android.exoplayer2.audio.c cVar = this.i;
        AudioTrack audioTrack2 = this.u;
        e eVar = this.t;
        cVar.s(audioTrack2, eVar.c == 2, eVar.g, eVar.d, eVar.h);
        S();
        int i2 = this.X.a;
        if (i2 != 0) {
            this.u.attachAuxEffect(i2);
            this.u.setAuxEffectSendLevel(this.X.b);
        }
        this.H = true;
        return true;
    }

    public final boolean J() {
        return this.u != null;
    }

    public final void L() {
        if (this.t.l()) {
            this.a0 = true;
        }
    }

    public final void M() {
        if (this.T) {
            return;
        }
        this.T = true;
        this.i.g(G());
        this.u.stop();
        this.A = 0;
    }

    public final void N(long j2) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.K.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.L[i2 - 1];
            } else {
                byteBuffer = this.M;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.a;
                }
            }
            if (i2 == length) {
                Z(byteBuffer, j2);
            } else {
                AudioProcessor audioProcessor = this.K[i2];
                if (i2 > this.R) {
                    audioProcessor.queueInput(byteBuffer);
                }
                ByteBuffer output = audioProcessor.getOutput();
                this.L[i2] = output;
                if (output.hasRemaining()) {
                    i2++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i2--;
            }
        }
    }

    public final void O(AudioTrack audioTrack) {
        if (this.m == null) {
            this.m = new j();
        }
        this.m.a(audioTrack);
    }

    public final void P() {
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.b0 = false;
        this.F = 0;
        this.x = new g(z(), E(), 0L, 0L);
        this.I = 0L;
        this.w = null;
        this.j.clear();
        this.M = null;
        this.N = 0;
        this.O = null;
        this.T = false;
        this.S = false;
        this.R = -1;
        this.z = null;
        this.A = 0;
        this.e.i();
        x();
    }

    public final void Q(s sVar, boolean z) {
        g gVarC = C();
        if (sVar.equals(gVarC.a) && z == gVarC.b) {
            return;
        }
        g gVar = new g(sVar, z, C.TIME_UNSET, C.TIME_UNSET);
        if (J()) {
            this.w = gVar;
        } else {
            this.x = gVar;
        }
    }

    public final void R(s sVar) {
        if (J()) {
            try {
                this.u.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(sVar.b).setPitch(sVar.c).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e2) {
                op5.j("DefaultAudioSink", "Failed to set playback params", e2);
            }
            sVar = new s(this.u.getPlaybackParams().getSpeed(), this.u.getPlaybackParams().getPitch());
            this.i.t(sVar.b);
        }
        this.y = sVar;
    }

    public final void S() {
        if (J()) {
            if (blb.a >= 21) {
                T(this.u, this.J);
            } else {
                U(this.u, this.J);
            }
        }
    }

    public final void V() {
        AudioProcessor[] audioProcessorArr = this.t.i;
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
        x();
    }

    public final boolean W() {
        return (this.Y || !"audio/raw".equals(this.t.a.m) || X(this.t.a.B)) ? false : true;
    }

    public final boolean X(int i2) {
        return this.c && blb.l0(i2);
    }

    public final boolean Y(com.google.android.exoplayer2.k kVar, com.google.android.exoplayer2.audio.a aVar) {
        int iB;
        int iD;
        int iD2;
        if (blb.a < 29 || this.l == 0 || (iB = qp6.b((String) zi.e(kVar.m), kVar.j)) == 0 || (iD = blb.D(kVar.z)) == 0 || (iD2 = D(y(kVar.A, iD, iB), aVar.b().a)) == 0) {
            return false;
        }
        if (iD2 == 1) {
            return ((kVar.C != 0 || kVar.D != 0) && (this.l == 1)) ? false : true;
        }
        if (iD2 == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    public final void Z(ByteBuffer byteBuffer, long j2) throws Exception {
        int iA0;
        AudioSink.a aVar;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.O;
            if (byteBuffer2 != null) {
                zi.a(byteBuffer2 == byteBuffer);
            } else {
                this.O = byteBuffer;
                if (blb.a < 21) {
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
            if (blb.a < 21) {
                int iC = this.i.c(this.D);
                if (iC > 0) {
                    iA0 = this.u.write(this.P, this.Q, Math.min(iRemaining2, iC));
                    if (iA0 > 0) {
                        this.Q += iA0;
                        byteBuffer.position(byteBuffer.position() + iA0);
                    }
                } else {
                    iA0 = 0;
                }
            } else if (this.Y) {
                zi.g(j2 != C.TIME_UNSET);
                iA0 = b0(this.u, byteBuffer, iRemaining2, j2);
            } else {
                iA0 = a0(this.u, byteBuffer, iRemaining2);
            }
            this.Z = SystemClock.elapsedRealtime();
            if (iA0 < 0) {
                boolean zI = I(iA0);
                if (zI) {
                    L();
                }
                AudioSink.WriteException writeException = new AudioSink.WriteException(iA0, this.t.a, zI);
                AudioSink.a aVar2 = this.r;
                if (aVar2 != null) {
                    aVar2.onAudioSinkError(writeException);
                }
                if (writeException.isRecoverable) {
                    throw writeException;
                }
                this.o.b(writeException);
                return;
            }
            this.o.a();
            if (K(this.u)) {
                if (this.E > 0) {
                    this.b0 = false;
                }
                if (this.U && (aVar = this.r) != null && iA0 < iRemaining2 && !this.b0) {
                    aVar.onOffloadBufferFull();
                }
            }
            int i2 = this.t.c;
            if (i2 == 0) {
                this.D += (long) iA0;
            }
            if (iA0 == iRemaining2) {
                if (i2 != 0) {
                    zi.g(byteBuffer == this.M);
                    this.E += ((long) this.F) * ((long) this.N);
                }
                this.O = null;
            }
        }
    }

    @Override
    public boolean a(com.google.android.exoplayer2.k kVar) {
        return g(kVar) != 0;
    }

    @Override
    public void b(s sVar) {
        s sVar2 = new s(blb.o(sVar.b, 0.1f, 8.0f), blb.o(sVar.c, 0.1f, 8.0f));
        if (!this.k || blb.a < 23) {
            Q(sVar2, E());
        } else {
            R(sVar2);
        }
    }

    public final int b0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i2, long j2) {
        if (blb.a >= 26) {
            return audioTrack.write(byteBuffer, i2, 1, j2 * 1000);
        }
        if (this.z == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.z = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.z.putInt(1431633921);
        }
        if (this.A == 0) {
            this.z.putInt(4, i2);
            this.z.putLong(8, j2 * 1000);
            this.z.position(0);
            this.A = i2;
        }
        int iRemaining = this.z.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.z, iRemaining, 1);
            if (iWrite < 0) {
                this.A = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iA0 = a0(audioTrack, byteBuffer, i2);
        if (iA0 < 0) {
            this.A = 0;
            return iA0;
        }
        this.A -= iA0;
        return iA0;
    }

    @Override
    public void c(com.google.android.exoplayer2.audio.a aVar) {
        if (this.v.equals(aVar)) {
            return;
        }
        this.v = aVar;
        if (this.Y) {
            return;
        }
        flush();
    }

    @Override
    public void d() {
        if (blb.a < 25) {
            flush();
            return;
        }
        this.o.a();
        this.n.a();
        if (J()) {
            P();
            if (this.i.i()) {
                this.u.pause();
            }
            this.u.flush();
            this.i.q();
            com.google.android.exoplayer2.audio.c cVar = this.i;
            AudioTrack audioTrack = this.u;
            e eVar = this.t;
            cVar.s(audioTrack, eVar.c == 2, eVar.g, eVar.d, eVar.h);
            this.H = true;
        }
    }

    @Override
    public void disableTunneling() {
        if (this.Y) {
            this.Y = false;
            flush();
        }
    }

    @Override
    public void e(q30 q30Var) {
        if (this.X.equals(q30Var)) {
            return;
        }
        int i2 = q30Var.a;
        float f2 = q30Var.b;
        AudioTrack audioTrack = this.u;
        if (audioTrack != null) {
            if (this.X.a != i2) {
                audioTrack.attachAuxEffect(i2);
            }
            if (i2 != 0) {
                this.u.setAuxEffectSendLevel(f2);
            }
        }
        this.X = q30Var;
    }

    @Override
    public void enableTunnelingV21() {
        zi.g(blb.a >= 21);
        zi.g(this.V);
        if (this.Y) {
            return;
        }
        this.Y = true;
        flush();
    }

    @Override
    public void f(AudioSink.a aVar) {
        this.r = aVar;
    }

    @Override
    public void flush() {
        if (J()) {
            P();
            if (this.i.i()) {
                this.u.pause();
            }
            if (K(this.u)) {
                ((j) zi.e(this.m)).b(this.u);
            }
            final AudioTrack audioTrack = this.u;
            this.u = null;
            if (blb.a < 21 && !this.V) {
                this.W = 0;
            }
            e eVar = this.s;
            if (eVar != null) {
                this.t = eVar;
                this.s = null;
            }
            this.i.q();
            this.h.d();
            new Thread("ExoPlayer:AudioTrackReleaseThread") {
                @Override
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        DefaultAudioSink.this.h.f();
                    }
                }
            }.start();
        }
        this.o.a();
        this.n.a();
    }

    @Override
    public int g(com.google.android.exoplayer2.k kVar) {
        if (!"audio/raw".equals(kVar.m)) {
            return ((this.a0 || !Y(kVar, this.v)) && !this.a.h(kVar)) ? 0 : 2;
        }
        if (blb.m0(kVar.B)) {
            int i2 = kVar.B;
            return (i2 == 2 || (this.c && i2 == 4)) ? 2 : 1;
        }
        op5.i("DefaultAudioSink", "Invalid PCM encoding: " + kVar.B);
        return 0;
    }

    @Override
    public long getCurrentPositionUs(boolean z) {
        if (!J() || this.H) {
            return Long.MIN_VALUE;
        }
        return t(s(Math.min(this.i.d(z), this.t.h(G()))));
    }

    @Override
    public s getPlaybackParameters() {
        return this.k ? this.y : z();
    }

    @Override
    public void h(ta8 ta8Var) {
        this.q = ta8Var;
    }

    @Override
    public boolean handleBuffer(ByteBuffer byteBuffer, long j2, int i2) throws Exception {
        ByteBuffer byteBuffer2 = this.M;
        zi.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.s != null) {
            if (!w()) {
                return false;
            }
            if (this.s.b(this.t)) {
                this.t = this.s;
                this.s = null;
                if (K(this.u) && this.l != 3) {
                    if (this.u.getPlayState() == 3) {
                        this.u.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.u;
                    com.google.android.exoplayer2.k kVar = this.t.a;
                    audioTrack.setOffloadDelayPadding(kVar.C, kVar.D);
                    this.b0 = true;
                }
            } else {
                M();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            r(j2);
        }
        if (!J()) {
            try {
                if (!H()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e2) {
                if (e2.isRecoverable) {
                    throw e2;
                }
                this.n.b(e2);
                return false;
            }
        }
        this.n.a();
        if (this.H) {
            this.I = Math.max(0L, j2);
            this.G = false;
            this.H = false;
            if (this.k && blb.a >= 23) {
                R(this.y);
            }
            r(j2);
            if (this.U) {
                play();
            }
        }
        if (!this.i.k(G())) {
            return false;
        }
        if (this.M == null) {
            zi.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            e eVar = this.t;
            if (eVar.c != 0 && this.F == 0) {
                int iB = B(eVar.g, byteBuffer);
                this.F = iB;
                if (iB == 0) {
                    return true;
                }
            }
            if (this.w != null) {
                if (!w()) {
                    return false;
                }
                r(j2);
                this.w = null;
            }
            long jK = this.I + this.t.k(F() - this.e.h());
            if (!this.G && Math.abs(jK - j2) > 200000) {
                this.r.onAudioSinkError(new AudioSink.UnexpectedDiscontinuityException(j2, jK));
                this.G = true;
            }
            if (this.G) {
                if (!w()) {
                    return false;
                }
                long j3 = j2 - jK;
                this.I += j3;
                this.G = false;
                r(j2);
                AudioSink.a aVar = this.r;
                if (aVar != null && j3 != 0) {
                    aVar.onPositionDiscontinuity();
                }
            }
            if (this.t.c == 0) {
                this.B += (long) byteBuffer.remaining();
            } else {
                this.C += ((long) this.F) * ((long) i2);
            }
            this.M = byteBuffer;
            this.N = i2;
        }
        N(j2);
        if (!this.M.hasRemaining()) {
            this.M = null;
            this.N = 0;
            return true;
        }
        if (!this.i.j(G())) {
            return false;
        }
        op5.i("DefaultAudioSink", "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override
    public void handleDiscontinuity() {
        this.G = true;
    }

    @Override
    public boolean hasPendingData() {
        return J() && this.i.h(G());
    }

    @Override
    public void i(com.google.android.exoplayer2.k kVar, int i2, int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessor[] audioProcessorArr;
        int i3;
        int iX;
        int i4;
        int iIntValue;
        int iB;
        int i5;
        int[] iArr2;
        if ("audio/raw".equals(kVar.m)) {
            zi.a(blb.m0(kVar.B));
            int iX2 = blb.X(kVar.B, kVar.z);
            AudioProcessor[] audioProcessorArr2 = X(kVar.B) ? this.g : this.f;
            this.e.j(kVar.C, kVar.D);
            if (blb.a < 21 && kVar.z == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i6 = 0; i6 < 6; i6++) {
                    iArr2[i6] = i6;
                }
            } else {
                iArr2 = iArr;
            }
            this.d.h(iArr2);
            AudioProcessor.a aVar = new AudioProcessor.a(kVar.A, kVar.z, kVar.B);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.a aVarA = audioProcessor.a(aVar);
                    if (audioProcessor.isActive()) {
                        aVar = aVarA;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e2) {
                    throw new AudioSink.ConfigurationException(e2, kVar);
                }
            }
            int i7 = aVar.c;
            int i8 = aVar.a;
            int iD = blb.D(aVar.b);
            iX = blb.X(i7, aVar.b);
            audioProcessorArr = audioProcessorArr2;
            iB = i7;
            i3 = i8;
            iX = iX2;
            i5 = 0;
            iIntValue = iD;
        } else {
            audioProcessorArr = new AudioProcessor[0];
            i3 = kVar.A;
            iX = -1;
            if (Y(kVar, this.v)) {
                i4 = 1;
                iB = qp6.b((String) zi.e(kVar.m), kVar.j);
                iIntValue = blb.D(kVar.z);
            } else {
                Pair pairF = this.a.f(kVar);
                if (pairF == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + kVar, kVar);
                }
                int iIntValue2 = ((Integer) pairF.first).intValue();
                i4 = 2;
                iIntValue = ((Integer) pairF.second).intValue();
                iB = iIntValue2;
            }
            i5 = i4;
        }
        int iA = i2 != 0 ? i2 : this.p.a(A(i3, iIntValue, iB), iB, i5, iX, i3, this.k ? 8.0d : 1.0d);
        if (iB == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i5 + ") for: " + kVar, kVar);
        }
        if (iIntValue == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i5 + ") for: " + kVar, kVar);
        }
        this.a0 = false;
        e eVar = new e(kVar, iX, i5, iX, i3, iIntValue, iB, iA, audioProcessorArr);
        if (J()) {
            this.s = eVar;
        } else {
            this.t = eVar;
        }
    }

    @Override
    public boolean isEnded() {
        return !J() || (this.S && !hasPendingData());
    }

    @Override
    public void pause() {
        this.U = false;
        if (J() && this.i.p()) {
            this.u.pause();
        }
    }

    @Override
    public void play() {
        this.U = true;
        if (J()) {
            this.i.u();
            this.u.play();
        }
    }

    @Override
    public void playToEndOfStream() {
        if (!this.S && J() && w()) {
            M();
            this.S = true;
        }
    }

    public final void r(long j2) {
        s sVarA = W() ? this.b.a(z()) : s.e;
        boolean zApplySkipSilenceEnabled = W() ? this.b.applySkipSilenceEnabled(E()) : false;
        this.j.add(new g(sVarA, zApplySkipSilenceEnabled, Math.max(0L, j2), this.t.h(G())));
        V();
        AudioSink.a aVar = this.r;
        if (aVar != null) {
            aVar.onSkipSilenceEnabledChanged(zApplySkipSilenceEnabled);
        }
    }

    @Override
    public void reset() {
        flush();
        for (AudioProcessor audioProcessor : this.f) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.g) {
            audioProcessor2.reset();
        }
        this.U = false;
        this.a0 = false;
    }

    public final long s(long j2) {
        while (!this.j.isEmpty() && j2 >= ((g) this.j.getFirst()).d) {
            this.x = (g) this.j.remove();
        }
        g gVar = this.x;
        long j3 = j2 - gVar.d;
        if (gVar.a.equals(s.e)) {
            return this.x.c + j3;
        }
        if (this.j.isEmpty()) {
            return this.x.c + this.b.getMediaDuration(j3);
        }
        g gVar2 = (g) this.j.getFirst();
        return gVar2.c - blb.T(gVar2.d - j2, this.x.a.b);
    }

    @Override
    public void setAudioSessionId(int i2) {
        if (this.W != i2) {
            this.W = i2;
            this.V = i2 != 0;
            flush();
        }
    }

    @Override
    public void setSkipSilenceEnabled(boolean z) {
        Q(z(), z);
    }

    @Override
    public void setVolume(float f2) {
        if (this.J != f2) {
            this.J = f2;
            S();
        }
    }

    public final long t(long j2) {
        return j2 + this.t.h(this.b.getSkippedOutputFrameCount());
    }

    public final AudioTrack u(e eVar) throws AudioSink.InitializationException {
        try {
            return eVar.a(this.Y, this.v, this.W);
        } catch (AudioSink.InitializationException e2) {
            AudioSink.a aVar = this.r;
            if (aVar != null) {
                aVar.onAudioSinkError(e2);
            }
            throw e2;
        }
    }

    public final AudioTrack v() throws AudioSink.InitializationException {
        try {
            return u((e) zi.e(this.t));
        } catch (AudioSink.InitializationException e2) {
            e eVar = this.t;
            if (eVar.h > 1000000) {
                e eVarC = eVar.c(1000000);
                try {
                    AudioTrack audioTrackU = u(eVarC);
                    this.t = eVarC;
                    return audioTrackU;
                } catch (AudioSink.InitializationException e3) {
                    e2.addSuppressed(e3);
                    L();
                    throw e2;
                }
            }
            L();
            throw e2;
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
    public final boolean w() {
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
            r9.N(r7)
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
            r9.Z(r0, r7)
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.R = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.w():boolean");
    }

    public final void x() {
        int i2 = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.K;
            if (i2 >= audioProcessorArr.length) {
                return;
            }
            AudioProcessor audioProcessor = audioProcessorArr[i2];
            audioProcessor.flush();
            this.L[i2] = audioProcessor.getOutput();
            i2++;
        }
    }

    public final s z() {
        return C().a;
    }

    public DefaultAudioSink(d dVar) {
        this.a = dVar.a;
        b bVar = dVar.b;
        this.b = bVar;
        int i2 = blb.a;
        this.c = i2 >= 21 && dVar.c;
        this.k = i2 >= 23 && dVar.d;
        this.l = i2 >= 29 ? dVar.e : 0;
        this.p = dVar.f;
        le1 le1Var = new le1(ey0.a);
        this.h = le1Var;
        le1Var.f();
        this.i = new com.google.android.exoplayer2.audio.c(new i());
        com.google.android.exoplayer2.audio.e eVar = new com.google.android.exoplayer2.audio.e();
        this.d = eVar;
        l lVar = new l();
        this.e = lVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new com.google.android.exoplayer2.audio.i(), eVar, lVar);
        Collections.addAll(arrayList, bVar.getAudioProcessors());
        this.f = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.g = new AudioProcessor[]{new com.google.android.exoplayer2.audio.g()};
        this.J = 1.0f;
        this.v = com.google.android.exoplayer2.audio.a.h;
        this.W = 0;
        this.X = new q30(0, 0.0f);
        s sVar = s.e;
        this.x = new g(sVar, false, 0L, 0L);
        this.y = sVar;
        this.R = -1;
        this.K = new AudioProcessor[0];
        this.L = new ByteBuffer[0];
        this.j = new ArrayDeque();
        this.n = new h(100L);
        this.o = new h(100L);
    }
}
