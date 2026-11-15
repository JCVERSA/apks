package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.security.Provider;
import java.security.Security;
import javax.crypto.Cipher;

@Deprecated
public class CryptoRuntime {

    private static final Log f18061a = LogFactory.b(CryptoRuntime.class);

    private static final class AesGcm {
        public static boolean b(Provider provider) {
            try {
                Cipher.getInstance(ContentCryptoScheme.f18059b.b(), provider);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    public static synchronized void a() {
        if (c()) {
            return;
        }
        try {
            Security.addProvider((Provider) Class.forName("org.bouncycastle.jce.provider.BouncyCastleProvider").newInstance());
        } catch (Exception e10) {
            f18061a.g("Bouncy Castle not available", e10);
        }
    }

    public static boolean b(Provider provider) {
        if (provider == null) {
            provider = Security.getProvider("BC");
        }
        return AesGcm.b(provider);
    }

    public static synchronized boolean c() {
        return Security.getProvider("BC") != null;
    }
}
