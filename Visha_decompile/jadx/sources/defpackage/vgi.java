package defpackage;

import java.security.Provider;
import java.security.Security;

public abstract class vgi {
    public static final String[] a = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};

    public static Provider a() {
        String[] strArr = a;
        for (int i = 0; i < 3; i++) {
            Provider provider = Security.getProvider(strArr[i]);
            if (provider != null) {
                return provider;
            }
        }
        return null;
    }
}
