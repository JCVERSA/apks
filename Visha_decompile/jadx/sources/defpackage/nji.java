package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

public final class nji {
    public final Map a;
    public final Map b;

    public nji(kji kjiVar, mji mjiVar) {
        this.a = new HashMap(kjiVar.a);
        this.b = new HashMap(kjiVar.b);
    }

    public static kji a() {
        return new kji(null);
    }

    public final Class b(Class cls) throws GeneralSecurityException {
        Map map = this.b;
        if (map.containsKey(cls)) {
            return ((tji) map.get(cls)).zza();
        }
        throw new GeneralSecurityException("No input primitive class for " + cls.toString() + " available");
    }

    public final Object c(b9i b9iVar, Class cls) throws GeneralSecurityException {
        lji ljiVar = new lji(b9iVar.getClass(), cls, null);
        Map map = this.a;
        if (map.containsKey(ljiVar)) {
            return ((jji) map.get(ljiVar)).a(b9iVar);
        }
        throw new GeneralSecurityException("No PrimitiveConstructor for " + ljiVar.toString() + " available, see https://developers.google.com/tink/faq/registration_errors");
    }

    public final Object f(sji sjiVar, xhi xhiVar, f9i f9iVar, Class cls) throws GeneralSecurityException {
        Map map = this.b;
        if (!map.containsKey(cls)) {
            throw new GeneralSecurityException("No wrapper found for ".concat(cls.toString()));
        }
        tji tjiVar = (tji) map.get(cls);
        if (sjiVar.c().equals(tjiVar.zza()) && tjiVar.zza().equals(sjiVar.c())) {
            return tjiVar.a(sjiVar.a(), xhiVar, f9iVar);
        }
        throw new GeneralSecurityException("Input primitive type of the wrapper doesn't match the type of primitives in the provided PrimitiveSet");
    }
}
