package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

public final class zpi extends ThreadLocal {
    public static final Cipher a() {
        try {
            return (Cipher) mqi.b.a("AES/CTR/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public final Object initialValue() {
        return a();
    }
}
