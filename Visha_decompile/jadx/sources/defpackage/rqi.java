package defpackage;

import java.security.Provider;
import javax.crypto.Mac;

public final class rqi implements uqi {
    @Override
    public final Object a(String str, Provider provider) {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
