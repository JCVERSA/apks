package defpackage;

import android.content.Context;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import javax.crypto.Cipher;

public class mw8 extends s90 {
    public Cipher a;
    public Cipher b;

    public mw8(Context context) {
        ow8.b().a(context);
    }

    private void f() throws Exception {
        if (h() == null) {
            throw new Exception("key not created, please try later");
        }
        if (this.a == null) {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(2, h());
            this.a = cipher;
        }
    }

    private void g() throws Exception {
        if (i() == null) {
            throw new Exception("key not created, please try later");
        }
        if (this.b == null) {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, i());
            this.b = cipher;
        }
    }

    public static PrivateKey h() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return (PrivateKey) keyStore.getKey("crypto", null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static PublicKey i() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return keyStore.getCertificate("crypto").getPublicKey();
        } catch (Exception unused) {
            return null;
        }
    }

    public byte[] d(byte[] bArr) throws Exception {
        f();
        return this.a.doFinal(bArr);
    }

    public byte[] e(byte[] bArr) throws Exception {
        g();
        return this.b.doFinal(bArr);
    }
}
