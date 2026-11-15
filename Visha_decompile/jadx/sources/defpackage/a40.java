package defpackage;

import java.security.Provider;
import java.security.Security;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class a40 extends rj8 {
    public static volatile Provider b;

    public a40() {
        super(e());
    }

    public static synchronized Provider e() {
        Provider provider = Security.getProvider(BouncyCastleProvider.PROVIDER_NAME);
        if (provider instanceof BouncyCastleProvider) {
            return provider;
        }
        if (b != null) {
            return b;
        }
        b = new BouncyCastleProvider();
        return b;
    }
}
