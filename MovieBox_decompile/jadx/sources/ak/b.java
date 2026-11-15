package ak;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class b extends zj.a {

    private Cipher f375a;

    private Cipher f376b;

    private SecretKeySpec f377c;

    private byte[] f378d;

    private void g() throws Exception {
        if (this.f377c == null || this.f378d == null) {
            throw new Exception("please call encrypt method first");
        }
        if (this.f375a == null) {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.f378d);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, this.f377c, ivParameterSpec);
            this.f375a = cipher;
        }
    }

    private void h() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (this.f376b == null) {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(256);
            SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeyGenerateKey);
            this.f377c = new SecretKeySpec(secretKeyGenerateKey.getEncoded(), "AES");
            this.f378d = cipher.getIV();
            this.f376b = cipher;
        }
    }

    public byte[] d(byte[] bArr) throws Exception {
        g();
        return this.f375a.doFinal(bArr);
    }

    public byte[] e(String str) {
        return f(str.getBytes("UTF-8"));
    }

    public byte[] f(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        h();
        return this.f376b.doFinal(bArr);
    }

    public byte[] i() throws Exception {
        SecretKeySpec secretKeySpec;
        if (this.f378d == null || (secretKeySpec = this.f377c) == null || secretKeySpec.getEncoded() == null) {
            throw new Exception("no valid key info");
        }
        byte[] encoded = this.f377c.getEncoded();
        byte[] bArr = this.f378d;
        if (encoded.length != 32 || bArr.length != 16) {
            throw new Exception("key length is not valid");
        }
        byte[] bArr2 = new byte[48];
        System.arraycopy(encoded, 0, bArr2, 0, 32);
        System.arraycopy(bArr, 0, bArr2, 32, 16);
        return bArr2;
    }
}
