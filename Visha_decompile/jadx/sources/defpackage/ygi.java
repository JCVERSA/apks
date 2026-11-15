package defpackage;

import java.security.GeneralSecurityException;
import java.util.Map;

public final class ygi {
    public final Map a;
    public final Map b;

    public ygi(Map map, Map map2, xgi xgiVar) {
        this.a = map;
        this.b = map2;
    }

    public static wgi a() {
        return new wgi(null);
    }

    public final Enum b(Object obj) throws GeneralSecurityException {
        Enum r1 = (Enum) this.b.get(obj);
        if (r1 != null) {
            return r1;
        }
        throw new GeneralSecurityException("Unable to convert object enum: ".concat(String.valueOf(obj)));
    }

    public final Object c(Enum r2) throws GeneralSecurityException {
        Object obj = this.a.get(r2);
        if (obj != null) {
            return obj;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: ".concat(String.valueOf(r2)));
    }
}
