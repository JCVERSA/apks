package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;

public final class bqi implements q8i {
    public final SecretKey a;
    public final byte[] b;

    public bqi(byte[] bArr, eri eriVar) throws GeneralSecurityException {
        if (!tgi.a(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        this.a = afi.c(bArr);
        this.b = eriVar.d();
    }

    public static q8i b(obi obiVar) {
        return new bqi(obiVar.e().d(a9i.a()), obiVar.b());
    }

    @Override
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        byte[] bArr3 = this.b;
        int length = bArr.length;
        int length2 = bArr3.length;
        if (length < length2 + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!fki.c(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        AlgorithmParameterSpec algorithmParameterSpecA = afi.a(bArr, length2, 12);
        SecretKey secretKey = this.a;
        Cipher cipherB = afi.b();
        cipherB.init(2, secretKey, algorithmParameterSpecA);
        if (bArr2 != null && bArr2.length != 0) {
            cipherB.updateAAD(bArr2);
        }
        return cipherB.doFinal(bArr, length2 + 12, (length - length2) - 12);
    }
}
