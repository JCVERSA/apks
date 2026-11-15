package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

public abstract class wfi {
    public int[] a;
    public final int b;

    public wfi(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.a = ufi.e(bArr);
        this.b = i;
    }

    public abstract int a();

    public abstract int[] b(int[] iArr, int i);

    public final ByteBuffer c(byte[] bArr, int i) {
        int[] iArrB = b(ufi.e(bArr), i);
        int[] iArr = (int[]) iArrB.clone();
        ufi.c(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            iArrB[i2] = iArrB[i2] + iArr[i2];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.asIntBuffer().put(iArrB, 0, 16);
        return byteBufferOrder;
    }

    public final byte[] d(byte[] bArr, ByteBuffer byteBuffer) throws GeneralSecurityException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining());
        if (bArr.length != a()) {
            throw new GeneralSecurityException("The nonce length (in bytes) must be " + a());
        }
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining / 64;
        for (int i2 = 0; i2 < i + 1; i2++) {
            ByteBuffer byteBufferC = c(bArr, this.b + i2);
            if (i2 == i) {
                cqi.a(byteBufferAllocate, byteBuffer, byteBufferC, iRemaining % 64);
            } else {
                cqi.a(byteBufferAllocate, byteBuffer, byteBufferC, 64);
            }
        }
        return byteBufferAllocate.array();
    }
}
