package defpackage;

import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class t9 extends s90 {
    public Cipher a;
    public final byte[] b;
    public final byte[] c;

    public t9(byte[] bArr, byte[] bArr2) throws IOException {
        this.c = bArr;
        this.b = bArr2;
        if (bArr.length != 16 && bArr.length != 24 && bArr.length != 32) {
            throw new IOException();
        }
        if (bArr2.length != 16) {
            throw new IOException();
        }
    }

    public byte[] d(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        e();
        return this.a.doFinal(bArr);
    }

    public final void e() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (this.a == null) {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.c, "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.b);
            Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            this.a = cipher;
        }
    }
}
