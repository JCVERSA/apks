package defpackage;

import java.security.Provider;
import java.util.Iterator;

public final class fqi implements iqi {
    public final uqi a;

    @Override
    public final Object zza(String str) {
        Iterator it = mqi.b("GmsCore_OpenSSL", "AndroidOpenSSL").iterator();
        while (it.hasNext()) {
            try {
                return this.a.a(str, (Provider) it.next());
            } catch (Exception unused) {
            }
        }
        return this.a.a(str, null);
    }
}
