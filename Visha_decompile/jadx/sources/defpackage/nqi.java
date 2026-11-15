package defpackage;

import java.security.Provider;
import javax.crypto.Cipher;

public final class nqi implements uqi {
    @Override
    public final Object a(String str, Provider provider) {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
