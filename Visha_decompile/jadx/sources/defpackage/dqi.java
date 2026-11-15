package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

public final class dqi implements q8i {
    public final xfi a;
    public final byte[] b;

    public dqi(byte[] bArr, byte[] bArr2) {
        this.a = new xfi(bArr);
        this.b = bArr2;
    }

    public static q8i b(kci kciVar) {
        return new dqi(kciVar.e().d(a9i.a()), kciVar.b().d());
    }

    @Override
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.b;
        int length = bArr3.length;
        if (length == 0) {
            return c(bArr, bArr2);
        }
        if (fki.c(bArr3, bArr)) {
            return c(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
    }

    public final byte[] c(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        return this.a.b(ByteBuffer.wrap(bArr, 12, length - 12), Arrays.copyOf(bArr, 12), bArr2);
    }
}
