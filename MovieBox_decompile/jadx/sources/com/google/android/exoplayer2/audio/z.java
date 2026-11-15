package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;

final class z extends v {

    private static final int f24108i = Float.floatToIntBits(Float.NaN);

    z() {
    }

    private static void h(int i10, ByteBuffer byteBuffer) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i10) * 4.656612875245797E-10d));
        if (iFloatToIntBits == f24108i) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i10 = aVar.f23841c;
        if (p0.t0(i10)) {
            return i10 != 4 ? new AudioProcessor.a(aVar.f23839a, aVar.f23840b, 4) : AudioProcessor.a.f23838e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferG;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        int i11 = this.f24084b.f23841c;
        if (i11 == 536870912) {
            byteBufferG = g((i10 / 3) * 4);
            while (iPosition < iLimit) {
                h(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), byteBufferG);
                iPosition += 3;
            }
        } else {
            if (i11 != 805306368) {
                throw new IllegalStateException();
            }
            byteBufferG = g(i10);
            while (iPosition < iLimit) {
                h((byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), byteBufferG);
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferG.flip();
    }
}
