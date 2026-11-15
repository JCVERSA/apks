package defpackage;

import java.security.Provider;
import javax.crypto.KeyAgreement;

public final class oqi implements uqi {
    @Override
    public final Object a(String str, Provider provider) {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }
}
