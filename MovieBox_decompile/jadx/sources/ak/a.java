package ak;

import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a extends zj.a {

    private Cipher f372a;

    private final byte[] f373b;

    private final byte[] f374c;

    public a(byte[] bArr, byte[] bArr2) throws IOException {
        this.f374c = bArr;
        this.f373b = bArr2;
        if (bArr.length != 16 && bArr.length != 24 && bArr.length != 32) {
            throw new IOException();
        }
        if (bArr2.length != 16) {
            throw new IOException();
        }
    }

    private void e() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (this.f372a == null) {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.f374c, "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.f373b);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            this.f372a = cipher;
        }
    }

    public byte[] d(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        e();
        return this.f372a.doFinal(bArr);
    }
}
