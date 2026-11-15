package com.yandex.mobile.ads.impl;

import java.nio.ByteBuffer;

final class cc0 extends ik {
    private static final int i = Float.floatToIntBits(Float.NaN);

    @Override
    public final void a(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferA;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit - iPosition;
        int i3 = this.b.c;
        if (i3 == 536870912) {
            byteBufferA = a((i2 / 3) * 4);
            while (iPosition < iLimit) {
                int iFloatToIntBits = Float.floatToIntBits((float) (((double) (((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24))) * 4.656612875245797E-10d));
                if (iFloatToIntBits == i) {
                    iFloatToIntBits = Float.floatToIntBits(0.0f);
                }
                byteBufferA.putInt(iFloatToIntBits);
                iPosition += 3;
            }
        } else {
            if (i3 != 805306368) {
                throw new IllegalStateException();
            }
            byteBufferA = a(i2);
            while (iPosition < iLimit) {
                int iFloatToIntBits2 = Float.floatToIntBits((float) (((double) ((byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24))) * 4.656612875245797E-10d));
                if (iFloatToIntBits2 == i) {
                    iFloatToIntBits2 = Float.floatToIntBits(0.0f);
                }
                byteBufferA.putInt(iFloatToIntBits2);
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferA.flip();
    }

    @Override
    public final uh.a b(uh.a aVar) throws uh.b {
        int i2 = aVar.c;
        if (i2 == 536870912 || i2 == 805306368 || i2 == 4) {
            return i2 != 4 ? new uh.a(aVar.a, aVar.b, 4) : uh.a.e;
        }
        throw new uh.b(aVar);
    }
}
