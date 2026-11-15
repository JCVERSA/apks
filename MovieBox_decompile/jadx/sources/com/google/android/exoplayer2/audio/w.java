package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;

final class w extends v {

    private int[] f24091i;

    private int[] f24092j;

    w() {
    }

    @Override
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f24091i;
        if (iArr == null) {
            return AudioProcessor.a.f23838e;
        }
        if (aVar.f23841c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        boolean z10 = aVar.f23840b != iArr.length;
        int i10 = 0;
        while (i10 < iArr.length) {
            int i11 = iArr[i10];
            if (i11 >= aVar.f23840b) {
                throw new AudioProcessor.UnhandledAudioFormatException(aVar);
            }
            z10 |= i11 != i10;
            i10++;
        }
        return z10 ? new AudioProcessor.a(aVar.f23839a, iArr.length, 2) : AudioProcessor.a.f23838e;
    }

    @Override
    protected void d() {
        this.f24092j = this.f24091i;
    }

    @Override
    protected void f() {
        this.f24092j = null;
        this.f24091i = null;
    }

    public void h(int[] iArr) {
        this.f24091i = iArr;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) com.google.android.exoplayer2.util.a.e(this.f24092j);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferG = g(((iLimit - iPosition) / this.f24084b.f23842d) * this.f24085c.f23842d);
        while (iPosition < iLimit) {
            for (int i10 : iArr) {
                byteBufferG.putShort(byteBuffer.getShort((i10 * 2) + iPosition));
            }
            iPosition += this.f24084b.f23842d;
        }
        byteBuffer.position(iLimit);
        byteBufferG.flip();
    }
}
