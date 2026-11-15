package defpackage;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.util.Iterator;

public final class hqi implements iqi {
    public final uqi a;

    @Override
    public final Object zza(String str) throws GeneralSecurityException {
        Iterator it = mqi.b("GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt").iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return this.a.a(str, (Provider) it.next());
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
