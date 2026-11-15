package defpackage;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

public class lw8 extends y2d {
    public Cipher a;
    public Cipher b;
    public Key c;
    public Key d;

    private void h() throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException, KeyStoreException, CertificateException {
        i();
        if (this.b == null) {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, this.d);
            this.b = cipher;
        }
    }

    public byte[] d(byte[] bArr) throws Exception {
        g();
        return this.a.doFinal(bArr);
    }

    public byte[] e(String str) {
        return f(str.getBytes(StandardCharsets.UTF_8));
    }

    public byte[] f(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException, KeyStoreException, CertificateException {
        h();
        return this.b.doFinal(bArr);
    }

    public final void g() throws Exception {
        try {
            i();
            if (this.a == null) {
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(2, this.c);
                this.a = cipher;
            }
        } catch (NoClassDefFoundError unused) {
            throw new Exception("NoClassDefFound...");
        }
    }

    public final void i() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        if (this.c == null || this.d == null) {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            this.c = keyStore.getKey("crypto", null);
            this.d = keyStore.getCertificate("crypto").getPublicKey();
        }
    }
}
