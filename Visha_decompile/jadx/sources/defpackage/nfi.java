package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

public final class nfi extends ThreadLocal {
    public static final Cipher a() {
        try {
            Cipher cipher = (Cipher) mqi.b.a("ChaCha20-Poly1305");
            if (ofi.f(cipher)) {
                return cipher;
            }
            return null;
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    @Override
    public final Object initialValue() {
        return a();
    }
}
