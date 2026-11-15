package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.s;
import defpackage.q30;
import defpackage.ta8;
import java.nio.ByteBuffer;

public interface AudioSink {

    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final com.google.android.exoplayer2.k format;
        public final boolean isRecoverable;

        public InitializationException(int i, int i2, int i3, int i4, com.google.android.exoplayer2.k kVar, boolean z, @Nullable Exception exc) {
            StringBuilder sb = new StringBuilder();
            sb.append("AudioTrack init failed ");
            sb.append(i);
            sb.append(" ");
            sb.append("Config(");
            sb.append(i2);
            sb.append(", ");
            sb.append(i3);
            sb.append(", ");
            sb.append(i4);
            sb.append(")");
            sb.append(z ? " (recoverable)" : "");
            super(sb.toString(), exc);
            this.audioTrackState = i;
            this.isRecoverable = z;
            this.format = kVar;
        }
    }

    public static final class UnexpectedDiscontinuityException extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long j, long j2) {
            super("Unexpected audio track timestamp discontinuity: expected " + j2 + ", got " + j);
            this.actualPresentationTimeUs = j;
            this.expectedPresentationTimeUs = j2;
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final com.google.android.exoplayer2.k format;
        public final boolean isRecoverable;

        public WriteException(int i, com.google.android.exoplayer2.k kVar, boolean z) {
            super("AudioTrack write failed: " + i);
            this.isRecoverable = z;
            this.errorCode = i;
            this.format = kVar;
        }
    }

    public interface a {
        void onAudioSinkError(Exception exc);

        void onOffloadBufferEmptying();

        void onOffloadBufferFull();

        void onPositionAdvancing(long j);

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z);

        void onUnderrun(int i, long j, long j2);
    }

    boolean a(com.google.android.exoplayer2.k kVar);

    void b(s sVar);

    void c(com.google.android.exoplayer2.audio.a aVar);

    void d();

    void disableTunneling();

    void e(q30 q30Var);

    void enableTunnelingV21();

    void f(a aVar);

    void flush();

    int g(com.google.android.exoplayer2.k kVar);

    long getCurrentPositionUs(boolean z);

    s getPlaybackParameters();

    void h(ta8 ta8Var);

    boolean handleBuffer(ByteBuffer byteBuffer, long j, int i);

    void handleDiscontinuity();

    boolean hasPendingData();

    void i(com.google.android.exoplayer2.k kVar, int i, int[] iArr);

    boolean isEnded();

    void pause();

    void play();

    void playToEndOfStream();

    void reset();

    void setAudioSessionId(int i);

    void setSkipSilenceEnabled(boolean z);

    void setVolume(float f);

    public static final class ConfigurationException extends Exception {
        public final com.google.android.exoplayer2.k format;

        public ConfigurationException(Throwable th, com.google.android.exoplayer2.k kVar) {
            super(th);
            this.format = kVar;
        }

        public ConfigurationException(String str, com.google.android.exoplayer2.k kVar) {
            super(str);
            this.format = kVar;
        }
    }
}
