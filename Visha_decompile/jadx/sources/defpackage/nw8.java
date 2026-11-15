package defpackage;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.util.GregorianCalendar;
import javax.security.auth.x500.X500Principal;

public class nw8 {

    public static class b {
        public static final nw8 a = new nw8();
    }

    public static synchronized nw8 b() {
        return b.a;
    }

    public synchronized boolean a(Context context) {
        if (c()) {
            return true;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.add(1, 100);
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
            KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder("crypto", 3);
            builder.setCertificateSubject(new X500Principal("CN=crypto")).setEncryptionPaddings("PKCS1Padding").setCertificateSerialNumber(BigInteger.valueOf(1337L)).setCertificateNotBefore(gregorianCalendar.getTime()).setCertificateNotAfter(gregorianCalendar2.getTime());
            keyPairGenerator.initialize(builder.build());
            keyPairGenerator.generateKeyPair();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final synchronized boolean c() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (keyStore.getEntry("crypto", null) instanceof KeyStore.PrivateKeyEntry) {
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public nw8() {
    }
}
