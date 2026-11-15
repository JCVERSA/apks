package androidx.media3.common.audio;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public interface AudioProcessor {

    public static final ByteBuffer f9503a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    public static final class UnhandledAudioFormatException extends Exception {
        public final a inputAudioFormat;

        public UnhandledAudioFormatException(a aVar) {
            this("Unhandled input format:", aVar);
        }

        public UnhandledAudioFormatException(String str, a aVar) {
            super(str + " " + aVar);
            this.inputAudioFormat = aVar;
        }
    }

    public static final class a {

        public static final a f9504e = new a(-1, -1, -1);

        public final int f9505a;

        public final int f9506b;

        public final int f9507c;

        public final int f9508d;

        public a(r rVar) {
            this(rVar.F, rVar.E, rVar.G);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f9505a == aVar.f9505a && this.f9506b == aVar.f9506b && this.f9507c == aVar.f9507c;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f9505a), Integer.valueOf(this.f9506b), Integer.valueOf(this.f9507c));
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f9505a + ", channelCount=" + this.f9506b + ", encoding=" + this.f9507c + ']';
        }

        public a(int i10, int i11, int i12) {
            this.f9505a = i10;
            this.f9506b = i11;
            this.f9507c = i12;
            this.f9508d = a1.G0(i12) ? a1.k0(i12, i11) : -1;
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
