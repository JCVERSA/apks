package rp;

import android.os.Build;
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

public class b extends bz.a {

    private Cipher f71319a;

    private Cipher f71320b;

    private Key f71321c;

    private Key f71322d;

    private void g() throws Exception {
        try {
            i();
            if (this.f71319a == null) {
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(2, this.f71321c);
                this.f71319a = cipher;
            }
        } catch (NoClassDefFoundError unused) {
            throw new Exception("NoClassDefFound...");
        }
    }

    private void h() throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException, KeyStoreException, CertificateException {
        i();
        if (this.f71320b == null) {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, this.f71322d);
            this.f71320b = cipher;
        }
    }

    private void i() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        if (this.f71321c == null || this.f71322d == null) {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (Build.VERSION.SDK_INT >= 28) {
                this.f71321c = keyStore.getKey("crypto", null);
                this.f71322d = keyStore.getCertificate("crypto").getPublicKey();
            } else {
                KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) keyStore.getEntry("crypto", null);
                this.f71321c = privateKeyEntry.getPrivateKey();
                this.f71322d = privateKeyEntry.getCertificate().getPublicKey();
            }
        }
    }

    public byte[] d(byte[] bArr) throws Exception {
        g();
        return this.f71319a.doFinal(bArr);
    }

    public byte[] e(String str) {
        return f(str.getBytes(StandardCharsets.UTF_8));
    }

    public byte[] f(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException, KeyStoreException, CertificateException {
        h();
        return this.f71320b.doFinal(bArr);
    }
}
