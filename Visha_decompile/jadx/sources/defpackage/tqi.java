package defpackage;

import java.security.Provider;
import java.security.Signature;

public final class tqi implements uqi {
    @Override
    public final Object a(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
