package defpackage;

import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class u9 extends s90 {
    public Cipher a;
    public Cipher b;
    public SecretKeySpec c;
    public byte[] d;

    private void g() throws Exception {
        if (this.c == null || this.d == null) {
            throw new Exception("please call encrypt method first");
        }
        if (this.a == null) {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.d);
            Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            cipher.init(2, this.c, ivParameterSpec);
            this.a = cipher;
        }
    }

    public byte[] d(byte[] bArr) throws Exception {
        g();
        return this.a.doFinal(bArr);
    }

    public byte[] e(String str) {
        return f(str.getBytes("UTF-8"));
    }

    public byte[] f(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        h();
        return this.b.doFinal(bArr);
    }

    public final void h() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (this.b == null) {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(256);
            SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
            Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            cipher.init(1, secretKeyGenerateKey);
            this.c = new SecretKeySpec(secretKeyGenerateKey.getEncoded(), "AES");
            this.d = cipher.getIV();
            this.b = cipher;
        }
    }

    public byte[] i() throws Exception {
        SecretKeySpec secretKeySpec;
        if (this.d == null || (secretKeySpec = this.c) == null || secretKeySpec.getEncoded() == null) {
            throw new Exception("no valid key info");
        }
        byte[] encoded = this.c.getEncoded();
        byte[] bArr = this.d;
        if (encoded.length != 32 || bArr.length != 16) {
            throw new Exception("key length is not valid");
        }
        byte[] bArr2 = new byte[48];
        System.arraycopy(encoded, 0, bArr2, 0, 32);
        System.arraycopy(bArr, 0, bArr2, 32, 16);
        return bArr2;
    }
}
