package defpackage;

import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class mk7 {
    public String a;
    public final byte[] b;
    public final byte[] c;

    public mk7(String str, byte[] bArr, byte[] bArr2) {
        this.b = bArr;
        this.c = bArr2;
    }

    public byte[] a(byte[] bArr) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.b, "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.c);
            Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
