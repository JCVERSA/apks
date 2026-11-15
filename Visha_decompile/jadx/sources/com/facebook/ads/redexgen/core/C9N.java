package com.facebook.ads.redexgen.core;

import java.nio.ByteBuffer;

public final class C9N extends AbstractC2198my {
    public int[] A00;
    public int[] A01;

    @Override
    public final AnonymousClass36 A09(AnonymousClass36 anonymousClass36) throws AnonymousClass37 {
        int[] iArr = this.A01;
        if (iArr == null) {
            return AnonymousClass36.A05;
        }
        if (anonymousClass36.A02 == 2) {
            int i = anonymousClass36.A01 != iArr.length ? 1 : 0;
            int i2 = 0;
            while (i2 < iArr.length) {
                int i3 = iArr[i2];
                if (i3 < anonymousClass36.A01) {
                    i |= i3 != i2 ? 1 : 0;
                    i2++;
                } else {
                    throw new AnonymousClass37(anonymousClass36);
                }
            }
            if (i != 0) {
                return new AnonymousClass36(anonymousClass36.A03, iArr.length, 2);
            }
            return AnonymousClass36.A05;
        }
        throw new AnonymousClass37(anonymousClass36);
    }

    @Override
    public final void A0A() {
        this.A00 = this.A01;
    }

    public final void A0C(int[] iArr) {
        this.A01 = iArr;
    }

    @Override
    public final void AGX(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) C3M.A01(this.A00);
        int iPosition = byteBuffer.position();
        int outputSize = byteBuffer.limit();
        int position = outputSize - iPosition;
        ByteBuffer byteBufferA00 = A00(this.A06.A00 * (position / this.A05.A00));
        while (iPosition < outputSize) {
            for (int i : iArr) {
                byteBufferA00.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.A05.A00;
        }
        byteBuffer.position(outputSize);
        byteBufferA00.flip();
    }
}
