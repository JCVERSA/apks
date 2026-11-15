package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;

public final class fgi implements q8i {
    public final byte[] a;
    public final int b;
    public final qmi c;

    public fgi(byte[] bArr, eri eriVar, int i) {
        this.c = new yqi(bArr);
        this.a = eriVar.d();
        this.b = i;
    }

    public static q8i b(cei ceiVar) {
        return new fgi(ceiVar.e().d(a9i.a()), ceiVar.b(), ceiVar.d().b());
    }

    @Override
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        byte[] bArr3 = this.a;
        int i = this.b;
        int length = bArr.length;
        int length2 = bArr3.length;
        int i2 = i + length2;
        if (length < i2 + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!fki.c(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, length2, i2);
        byte[] bArr4 = {0, 1, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        byte[] bArr5 = {0, 2, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        int length3 = bArrCopyOfRange.length;
        if (length3 > 12 || length3 < 8) {
            throw new GeneralSecurityException("invalid salt size");
        }
        System.arraycopy(bArrCopyOfRange, 0, bArr4, 4, length3);
        System.arraycopy(bArrCopyOfRange, 0, bArr5, 4, length3);
        qmi qmiVar = this.c;
        byte[] bArr6 = new byte[32];
        System.arraycopy(qmiVar.a(bArr4, 16), 0, bArr6, 0, 16);
        System.arraycopy(qmiVar.a(bArr5, 16), 0, bArr6, 16, 16);
        if (!tgi.a(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        SecretKey secretKeyC = afi.c(bArr6);
        int i3 = i2 + 12;
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i2, i3);
        if (bArrCopyOfRange2.length != 12) {
            throw new GeneralSecurityException("iv is wrong size");
        }
        if (length < i2 + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        AlgorithmParameterSpec algorithmParameterSpecA = afi.a(bArrCopyOfRange2, 0, 12);
        Cipher cipherB = afi.b();
        cipherB.init(2, secretKeyC, algorithmParameterSpecA);
        if (bArr2 != null && bArr2.length != 0) {
            cipherB.updateAAD(bArr2);
        }
        return cipherB.doFinal(bArr, i3, length - i3);
    }
}
