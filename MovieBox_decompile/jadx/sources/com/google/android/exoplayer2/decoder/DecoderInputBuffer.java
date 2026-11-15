package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.n1;
import java.nio.ByteBuffer;

public class DecoderInputBuffer extends a {

    public final c f24201b;

    public ByteBuffer f24202c;

    public boolean f24203d;

    public long f24204e;

    public ByteBuffer f24205f;

    private final int f24206g;

    private final int f24207h;

    public static final class InsufficientCapacityException extends IllegalStateException {
        public final int currentCapacity;
        public final int requiredCapacity;

        public InsufficientCapacityException(int i10, int i11) {
            super("Buffer too small (" + i10 + " < " + i11 + ")");
            this.currentCapacity = i10;
            this.requiredCapacity = i11;
        }
    }

    static {
        n1.a("goog.exo.decoder");
    }

    public DecoderInputBuffer(int i10) {
        this(i10, 0);
    }

    private ByteBuffer l(int i10) {
        int i11 = this.f24206g;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.f24202c;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i10);
    }

    public static DecoderInputBuffer p() {
        return new DecoderInputBuffer(0);
    }

    @Override
    public void b() {
        super.b();
        ByteBuffer byteBuffer = this.f24202c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f24205f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f24203d = false;
    }

    public void m(int i10) {
        int i11 = i10 + this.f24207h;
        ByteBuffer byteBuffer = this.f24202c;
        if (byteBuffer == null) {
            this.f24202c = l(i11);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i12 = i11 + iPosition;
        if (iCapacity >= i12) {
            this.f24202c = byteBuffer;
            return;
        }
        ByteBuffer byteBufferL = l(i12);
        byteBufferL.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferL.put(byteBuffer);
        }
        this.f24202c = byteBufferL;
    }

    public final void n() {
        ByteBuffer byteBuffer = this.f24202c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f24205f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean o() {
        return e(1073741824);
    }

    public void q(int i10) {
        ByteBuffer byteBuffer = this.f24205f;
        if (byteBuffer == null || byteBuffer.capacity() < i10) {
            this.f24205f = ByteBuffer.allocate(i10);
        } else {
            this.f24205f.clear();
        }
    }

    public DecoderInputBuffer(int i10, int i11) {
        this.f24201b = new c();
        this.f24206g = i10;
        this.f24207h = i11;
    }
}
