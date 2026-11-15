package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p1;
import g9.u1;
import java.nio.ByteBuffer;

public interface AudioSink {

    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final p1 format;
        public final boolean isRecoverable;

        public InitializationException(int i10, int i11, int i12, int i13, p1 p1Var, boolean z10, @Nullable Exception exc) {
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
            sb2.append(z10 ? " (recoverable)" : "");
            super(sb2.toString(), exc);
            this.audioTrackState = i10;
            this.isRecoverable = z10;
            this.format = p1Var;
        }
    }

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
        public final p1 format;
        public final boolean isRecoverable;

        public WriteException(int i10, p1 p1Var, boolean z10) {
            super("AudioTrack write failed: " + i10);
            this.isRecoverable = z10;
            this.errorCode = i10;
            this.format = p1Var;
        }
    }

    public interface a {
        void a(Exception exc);

        void b(long j10);

        void c();

        void d();

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z10);

        void onUnderrun(int i10, long j10, long j11);
    }

    boolean a(p1 p1Var);

    void b(o2 o2Var);

    boolean c(ByteBuffer byteBuffer, long j10, int i10);

    void d();

    void disableTunneling();

    void e(boolean z10);

    void f(e eVar);

    void flush();

    void g(u1 u1Var);

    long getCurrentPositionUs(boolean z10);

    o2 getPlaybackParameters();

    void h(a aVar);

    void handleDiscontinuity();

    boolean hasPendingData();

    int i(p1 p1Var);

    boolean isEnded();

    void j();

    void k(u uVar);

    void l(p1 p1Var, int i10, int[] iArr);

    void pause();

    void play();

    void playToEndOfStream();

    void reset();

    void setAudioSessionId(int i10);

    void setVolume(float f10);

    public static final class ConfigurationException extends Exception {
        public final p1 format;

        public ConfigurationException(Throwable th2, p1 p1Var) {
            super(th2);
            this.format = p1Var;
        }

        public ConfigurationException(String str, p1 p1Var) {
            super(str);
            this.format = p1Var;
        }
    }
}
