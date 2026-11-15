package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.util.Arrays;

final class c0 extends androidx.media3.common.audio.b {

    private int[] f10824i;

    private int[] f10825j;

    c0() {
    }

    @Override
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f10824i;
        if (iArr == null) {
            return AudioProcessor.a.f9504e;
        }
        int i10 = aVar.f9507c;
        if (i10 != 2 && i10 != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        boolean z10 = aVar.f9506b != iArr.length;
        int i11 = 0;
        while (i11 < iArr.length) {
            int i12 = iArr[i11];
            if (i12 >= aVar.f9506b) {
                throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", aVar);
            }
            z10 |= i12 != i11;
            i11++;
        }
        return z10 ? new AudioProcessor.a(aVar.f9505a, iArr.length, aVar.f9507c) : AudioProcessor.a.f9504e;
    }

    @Override
    protected void d() {
        this.f10825j = this.f10824i;
    }

    @Override
    protected void f() {
        this.f10825j = null;
        this.f10824i = null;
    }

    public void h(int[] iArr) {
        this.f10824i = iArr;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) androidx.media3.common.util.a.e(this.f10825j);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferG = g(((iLimit - iPosition) / this.f9515b.f9508d) * this.f9516c.f9508d);
        while (iPosition < iLimit) {
            for (int i10 : iArr) {
                int iQ = (androidx.media3.common.util.a1.Q(this.f9515b.f9507c) * i10) + iPosition;
                int i11 = this.f9515b.f9507c;
                if (i11 == 2) {
                    byteBufferG.putShort(byteBuffer.getShort(iQ));
                } else {
                    if (i11 != 4) {
                        throw new IllegalStateException("Unexpected encoding: " + this.f9515b.f9507c);
                    }
                    byteBufferG.putFloat(byteBuffer.getFloat(iQ));
                }
            }
            iPosition += this.f9515b.f9508d;
        }
        byteBuffer.position(iLimit);
        byteBufferG.flip();
    }
}
