package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public interface AudioProcessor {

    public static final ByteBuffer f23837a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    public static final class a {

        public static final a f23838e = new a(-1, -1, -1);

        public final int f23839a;

        public final int f23840b;

        public final int f23841c;

        public final int f23842d;

        public a(int i10, int i11, int i12) {
            this.f23839a = i10;
            this.f23840b = i11;
            this.f23841c = i12;
            this.f23842d = p0.u0(i12) ? p0.e0(i12, i11) : -1;
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f23839a + ", channelCount=" + this.f23840b + ", encoding=" + this.f23841c + ']';
        }
    }

    a a(a aVar);

    void flush();

    ByteBuffer getOutput();

    boolean isActive();

    boolean isEnded();

    void queueEndOfStream();

    void queueInput(ByteBuffer byteBuffer);

    void reset();
}
