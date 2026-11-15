package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

final class ho extends ik {

    @Nullable
    private int[] i;

    @Nullable
    private int[] j;

    @Override
    public final void a(ByteBuffer byteBuffer) {
        int[] iArr = this.j;
        iArr.getClass();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferA = a(((iLimit - iPosition) / this.b.d) * this.c.d);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                byteBufferA.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.b.d;
        }
        byteBuffer.position(iLimit);
        byteBufferA.flip();
    }

    @Override
    public final uh.a b(uh.a aVar) throws uh.b {
        int[] iArr = this.i;
        if (iArr == null) {
            return uh.a.e;
        }
        if (aVar.c != 2) {
            throw new uh.b(aVar);
        }
        boolean z = aVar.b != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= aVar.b) {
                throw new uh.b(aVar);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new uh.a(aVar.a, iArr.length, 2) : uh.a.e;
    }

    @Override
    public final void f() {
        this.j = this.i;
    }

    @Override
    public final void h() {
        this.j = null;
        this.i = null;
    }

    public final void a(@Nullable int[] iArr) {
        this.i = iArr;
    }
}
