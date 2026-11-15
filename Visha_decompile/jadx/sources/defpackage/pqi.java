package defpackage;

import java.security.KeyFactory;
import java.security.Provider;

public final class pqi implements uqi {
    @Override
    public final Object a(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
