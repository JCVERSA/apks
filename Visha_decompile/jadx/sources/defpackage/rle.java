package defpackage;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class rle implements sle {
    public final ByteBuffer a;

    public rle(ByteBuffer byteBuffer) {
        this.a = byteBuffer.slice();
    }

    @Override
    public final void a(MessageDigest[] messageDigestArr, long j, int i) {
        ByteBuffer byteBufferSlice;
        ByteBuffer byteBuffer = this.a;
        synchronized (byteBuffer) {
            int i2 = (int) j;
            byteBuffer.position(i2);
            byteBuffer.limit(i2 + i);
            byteBufferSlice = byteBuffer.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            byteBufferSlice.position(0);
            messageDigest.update(byteBufferSlice);
        }
    }

    @Override
    public final long zza() {
        return this.a.capacity();
    }
}
