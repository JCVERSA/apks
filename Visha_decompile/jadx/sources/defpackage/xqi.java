package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

public final class xqi extends ThreadLocal {
    public static final Cipher a() {
        try {
            return (Cipher) mqi.b.a("AES/ECB/NoPadding");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public final Object initialValue() {
        return a();
    }
}
