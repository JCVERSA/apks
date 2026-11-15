package rp;

import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

public class a extends bz.a {

    private Cipher f71317a;

    private final byte[] f71318b;

    public a(String str) {
        this.f71318b = b(str);
    }

    private void f() throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (this.f71317a == null) {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(this.f71318b));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, publicKeyGeneratePublic);
            this.f71317a = cipher;
        }
    }

    public byte[] d(String str) {
        return e(str.getBytes(Charset.forName("UTF-8")));
    }

    public byte[] e(byte[] bArr) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        f();
        return this.f71317a.doFinal(bArr);
    }
}
