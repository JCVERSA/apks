package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class xpi implements wqi {
    public static final ThreadLocal d = new wpi();
    public final SecretKeySpec a;
    public final int b;
    public final int c;

    public xpi(byte[] bArr, int i) throws GeneralSecurityException {
        if (!tgi.a(2)) {
            throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
        }
        cri.a(bArr.length);
        this.a = new SecretKeySpec(bArr, "AES");
        int blockSize = ((Cipher) d.get()).getBlockSize();
        this.c = blockSize;
        if (i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.b = i;
    }

    @Override
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.b;
        if (length < i) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        int i2 = length - i;
        byte[] bArr3 = new byte[i2];
        Cipher cipher = (Cipher) d.get();
        byte[] bArr4 = new byte[this.c];
        System.arraycopy(bArr2, 0, bArr4, 0, i);
        cipher.init(2, this.a, new IvParameterSpec(bArr4));
        if (cipher.doFinal(bArr, i, i2, bArr3, 0) == i2) {
            return bArr3;
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }
}
