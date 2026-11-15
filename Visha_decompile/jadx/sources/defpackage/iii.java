package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

public final class iii {
    public static final iii b = new iii();
    public final Map a = new HashMap();

    public static iii a() {
        return b;
    }

    public final synchronized void b(gii giiVar, Class cls) {
        try {
            Map map = this.a;
            gii giiVar2 = (gii) map.get(cls);
            if (giiVar2 != null && !giiVar2.equals(giiVar)) {
                throw new GeneralSecurityException("Different key creator for parameters class already inserted");
            }
            map.put(cls, giiVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
