package defpackage;

import java.nio.ByteBuffer;

public final class khf implements rxi {
    public final ByteBuffer b;

    public khf(ByteBuffer byteBuffer) {
        this.b = byteBuffer.duplicate();
    }

    @Override
    public final void c(long j) {
        this.b.position((int) j);
    }

    @Override
    public final void close() {
    }

    @Override
    public final ByteBuffer j(long j, long j2) {
        ByteBuffer byteBuffer = this.b;
        int iPosition = byteBuffer.position();
        byteBuffer.position((int) j);
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBufferSlice.limit((int) j2);
        byteBuffer.position(iPosition);
        return byteBufferSlice;
    }

    @Override
    public final int p(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2 = this.b;
        if (byteBuffer2.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), byteBuffer2.remaining());
        byte[] bArr = new byte[iMin];
        byteBuffer2.get(bArr);
        byteBuffer.put(bArr);
        return iMin;
    }

    @Override
    public final long zzb() {
        return this.b.position();
    }

    @Override
    public final long zzc() {
        return this.b.limit();
    }
}
