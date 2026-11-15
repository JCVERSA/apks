package androidx.media3.decoder;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class SimpleDecoderOutputBuffer extends h {

    private final h.a f10626a;

    public ByteBuffer f10627b;

    public SimpleDecoderOutputBuffer(h.a aVar) {
        this.f10626a = aVar;
    }

    public ByteBuffer a(int i10) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(this.f10627b);
        androidx.media3.common.util.a.a(i10 >= byteBuffer.limit());
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        int iPosition = byteBuffer.position();
        byteBuffer.position(0);
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.position(iPosition);
        byteBufferOrder.limit(i10);
        this.f10627b = byteBufferOrder;
        return byteBufferOrder;
    }

    public ByteBuffer b(long j10, int i10) {
        this.timeUs = j10;
        ByteBuffer byteBuffer = this.f10627b;
        if (byteBuffer == null || byteBuffer.capacity() < i10) {
            this.f10627b = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        }
        this.f10627b.position(0);
        this.f10627b.limit(i10);
        return this.f10627b;
    }

    @Override
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.f10627b;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    @Override
    public void release() {
        this.f10626a.a(this);
    }
}
