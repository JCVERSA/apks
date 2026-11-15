package com.google.android.exoplayer2.audio;

import defpackage.zi;
import java.nio.ByteBuffer;

public final class e extends d {
    public int[] i;
    public int[] j;

    @Override
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.i;
        if (iArr == null) {
            return AudioProcessor.a.e;
        }
        if (aVar.c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        boolean z = aVar.b != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= aVar.b) {
                throw new AudioProcessor.UnhandledAudioFormatException(aVar);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new AudioProcessor.a(aVar.a, iArr.length, 2) : AudioProcessor.a.e;
    }

    @Override
    public void d() {
        this.j = this.i;
    }

    @Override
    public void f() {
        this.j = null;
        this.i = null;
    }

    public void h(int[] iArr) {
        this.i = iArr;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) zi.e(this.j);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferG = g(((iLimit - iPosition) / this.b.d) * this.c.d);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                byteBufferG.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.b.d;
        }
        byteBuffer.position(iLimit);
        byteBufferG.flip();
    }
}
