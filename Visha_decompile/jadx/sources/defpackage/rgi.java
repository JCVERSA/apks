package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

public final class rgi extends ThreadLocal {
    public static final Cipher a() {
        try {
            Cipher cipher = (Cipher) mqi.b.a("AES/GCM-SIV/NoPadding");
            if (sgi.d(cipher)) {
                return cipher;
            }
            return null;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public final Object initialValue() {
        return a();
    }
}
