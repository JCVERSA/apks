package defpackage;

import java.security.MessageDigest;
import java.security.Provider;

public final class sqi implements uqi {
    @Override
    public final Object a(String str, Provider provider) {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
