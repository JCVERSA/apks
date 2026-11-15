package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;

public abstract class xji {
    public static final ThreadLocal a = new wji();

    public static SecureRandom a() {
        SecureRandom secureRandomC = c();
        secureRandomC.nextLong();
        return secureRandomC;
    }

    public static byte[] b(int i) {
        byte[] bArr = new byte[i];
        ((SecureRandom) a.get()).nextBytes(bArr);
        return bArr;
    }

    public static SecureRandom c() {
        Provider providerA = vgi.a();
        if (providerA != null) {
            try {
                return SecureRandom.getInstance("SHA1PRNG", providerA);
            } catch (GeneralSecurityException unused) {
            }
        }
        Provider provider = null;
        try {
            provider = (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", null).invoke(null, null);
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused2) {
        }
        if (provider != null) {
            try {
                return SecureRandom.getInstance("SHA1PRNG", provider);
            } catch (GeneralSecurityException unused3) {
            }
        }
        return new SecureRandom();
    }
}
