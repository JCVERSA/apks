package com.google.android.exoplayer2.decoder;

import defpackage.pi3;
import defpackage.vl1;
import defpackage.wk0;
import java.nio.ByteBuffer;

public class DecoderInputBuffer extends wk0 {
    public final vl1 c;
    public ByteBuffer d;
    public boolean e;
    public long f;
    public ByteBuffer g;
    public final int h;
    public final int i;

    public static final class InsufficientCapacityException extends IllegalStateException {
        public final int currentCapacity;
        public final int requiredCapacity;

        public InsufficientCapacityException(int i, int i2) {
            super("Buffer too small (" + i + " < " + i2 + ")");
            this.currentCapacity = i;
            this.requiredCapacity = i2;
        }
    }

    static {
        pi3.a("goog.exo.decoder");
    }

    public DecoderInputBuffer(int i) {
        this(i, 0);
    }

    public static DecoderInputBuffer p() {
        return new DecoderInputBuffer(0);
    }

    @Override
    public void b() {
        super.b();
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.g;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.e = false;
    }

    public final ByteBuffer l(int i) {
        int i2 = this.h;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.d;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }

    public void m(int i) {
        int i2 = i + this.i;
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer == null) {
            this.d = l(i2);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i3 = i2 + iPosition;
        if (iCapacity >= i3) {
            this.d = byteBuffer;
            return;
        }
        ByteBuffer byteBufferL = l(i3);
        byteBufferL.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferL.put(byteBuffer);
        }
        this.d = byteBufferL;
    }

    public final void n() {
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.g;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean o() {
        return e(1073741824);
    }

    public void q(int i) {
        ByteBuffer byteBuffer = this.g;
        if (byteBuffer == null || byteBuffer.capacity() < i) {
            this.g = ByteBuffer.allocate(i);
        } else {
            this.g.clear();
        }
    }

    public DecoderInputBuffer(int i, int i2) {
        this.c = new vl1();
        this.h = i;
        this.i = i2;
    }
}
