package defpackage;

import java.security.KeyPairGenerator;
import java.security.Provider;

public final class qqi implements uqi {
    @Override
    public final Object a(String str, Provider provider) {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
