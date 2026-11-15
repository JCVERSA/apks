package androidx.media3.decoder;

import androidx.media3.common.r;
import androidx.media3.common.u;
import java.nio.ByteBuffer;

public class DecoderInputBuffer extends a {

    public r f10604a;

    public final c f10605b;

    public ByteBuffer f10606c;

    public boolean f10607d;

    public long f10608e;

    public ByteBuffer f10609f;

    private final int f10610g;

    private final int f10611h;

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
        u.a("media3.decoder");
    }

    public DecoderInputBuffer(int i10) {
        this(i10, 0);
    }

    private ByteBuffer a(int i10) {
        int i11 = this.f10610g;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.f10606c;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i10);
    }

    public static DecoderInputBuffer f() {
        return new DecoderInputBuffer(0);
    }

    public void b(int i10) {
        int i11 = i10 + this.f10611h;
        ByteBuffer byteBuffer = this.f10606c;
        if (byteBuffer == null) {
            this.f10606c = a(i11);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i12 = i11 + iPosition;
        if (iCapacity >= i12) {
            this.f10606c = byteBuffer;
            return;
        }
        ByteBuffer byteBufferA = a(i12);
        byteBufferA.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferA.put(byteBuffer);
        }
        this.f10606c = byteBufferA;
    }

    @Override
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.f10606c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f10609f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f10607d = false;
    }

    public final void d() {
        ByteBuffer byteBuffer = this.f10606c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f10609f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean e() {
        return getFlag(1073741824);
    }

    public void g(int i10) {
        ByteBuffer byteBuffer = this.f10609f;
        if (byteBuffer == null || byteBuffer.capacity() < i10) {
            this.f10609f = ByteBuffer.allocate(i10);
        } else {
            this.f10609f.clear();
        }
    }

    public DecoderInputBuffer(int i10, int i11) {
        this.f10605b = new c();
        this.f10610g = i10;
        this.f10611h = i11;
    }
}
