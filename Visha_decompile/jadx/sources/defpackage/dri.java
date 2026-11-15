package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

public final class dri implements q8i {
    public final agi a;
    public final byte[] b;

    public dri(byte[] bArr, byte[] bArr2) {
        this.a = new agi(bArr);
        this.b = bArr2;
    }

    public static q8i b(iei ieiVar) {
        return new dri(ieiVar.e().d(a9i.a()), ieiVar.b().d());
    }

    private final byte[] c(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length < 40) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        return this.a.b(ByteBuffer.wrap(bArr, 24, length - 24), Arrays.copyOf(bArr, 24), bArr2);
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
}
