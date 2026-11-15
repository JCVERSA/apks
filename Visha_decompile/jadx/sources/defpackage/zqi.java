package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;

public final class zqi extends ThreadLocal {
    public final ari a;

    public zqi(ari ariVar) {
        this.a = ariVar;
    }

    @Override
    public final Mac initialValue() {
        try {
            mqi mqiVar = mqi.c;
            ari ariVar = this.a;
            Mac mac = (Mac) mqiVar.a(ariVar.b);
            mac.init(ariVar.c);
            return mac;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
