package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import x1.f4;

public interface AudioSink {

    public static final class UnexpectedDiscontinuityException extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long j10, long j11) {
            super("Unexpected audio track timestamp discontinuity: expected " + j11 + ", got " + j10);
            this.actualPresentationTimeUs = j10;
            this.expectedPresentationTimeUs = j11;
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final androidx.media3.common.r format;
        public final boolean isRecoverable;

        public WriteException(int i10, androidx.media3.common.r rVar, boolean z10) {
            super("AudioTrack write failed: " + i10);
            this.isRecoverable = z10;
            this.errorCode = i10;
            this.format = rVar;
        }
    }

    public static final class a {

        public final int f10689a;

        public final int f10690b;

        public final int f10691c;

        public final boolean f10692d;

        public final boolean f10693e;

        public final int f10694f;

        public a(int i10, int i11, int i12, boolean z10, boolean z11, int i13) {
            this.f10689a = i10;
            this.f10690b = i11;
            this.f10691c = i12;
            this.f10692d = z10;
            this.f10693e = z11;
            this.f10694f = i13;
        }
    }

    public interface b {
        void a(Exception exc);

        void b(long j10);

        void c();

        void d();

        void e();

        void f();

        void j(a aVar);

        void k(a aVar);

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z10);

        void onUnderrun(int i10, long j10, long j11);
    }

    boolean a(androidx.media3.common.r rVar);

    void b(androidx.media3.common.z zVar);

    boolean c(ByteBuffer byteBuffer, long j10, int i10);

    void d();

    void disableTunneling();

    void e(boolean z10);

    void f(androidx.media3.common.c cVar);

    void flush();

    k g(androidx.media3.common.r rVar);

    long getCurrentPositionUs(boolean z10);

    androidx.media3.common.z getPlaybackParameters();

    void h(AudioDeviceInfo audioDeviceInfo);

    void handleDiscontinuity();

    boolean hasPendingData();

    long i();

    boolean isEnded();

    void j(b bVar);

    void k(int i10);

    void l(androidx.media3.common.r rVar, int i10, int[] iArr);

    void m(int i10, int i11);

    void n(f4 f4Var);

    void o(long j10);

    int p(androidx.media3.common.r rVar);

    void pause();

    void play();

    void playToEndOfStream();

    void q(androidx.media3.common.f fVar);

    void r(androidx.media3.common.util.i iVar);

    void release();

    void reset();

    void setAudioSessionId(int i10);

    void setVolume(float f10);

    public static final class ConfigurationException extends Exception {
        public final androidx.media3.common.r format;

        public ConfigurationException(Throwable th2, androidx.media3.common.r rVar) {
            super(th2);
            this.format = rVar;
        }

        public ConfigurationException(String str, androidx.media3.common.r rVar) {
            super(str);
            this.format = rVar;
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final androidx.media3.common.r format;
        public final boolean isRecoverable;

        public InitializationException(String str, int i10, androidx.media3.common.r rVar, boolean z10, @Nullable Throwable th2) {
            super(str, th2);
            this.audioTrackState = i10;
            this.isRecoverable = z10;
            this.format = rVar;
        }

        public InitializationException(int i10, int i11, int i12, int i13, androidx.media3.common.r rVar, boolean z10, @Nullable Exception exc) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AudioTrack init failed ");
            sb2.append(i10);
            sb2.append(" ");
            sb2.append("Config(");
            sb2.append(i11);
            sb2.append(", ");
            sb2.append(i12);
            sb2.append(", ");
            sb2.append(i13);
            sb2.append(")");
            sb2.append(" ");
            sb2.append(rVar);
            sb2.append(z10 ? " (recoverable)" : "");
            this(sb2.toString(), i10, rVar, z10, exc);
        }
    }
}
