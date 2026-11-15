package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

public final class kji {
    public final Map a;
    public final Map b;

    public kji(mji mjiVar) {
        this.a = new HashMap();
        this.b = new HashMap();
    }

    public final kji a(jji jjiVar) throws GeneralSecurityException {
        if (jjiVar == null) {
            throw new NullPointerException("primitive constructor must be non-null");
        }
        lji ljiVar = new lji(jjiVar.c(), jjiVar.d(), null);
        Map map = this.a;
        if (map.containsKey(ljiVar)) {
            jji jjiVar2 = (jji) map.get(ljiVar);
            if (!jjiVar2.equals(jjiVar) || !jjiVar.equals(jjiVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(ljiVar.toString()));
            }
        } else {
            map.put(ljiVar, jjiVar);
        }
        return this;
    }

    public final kji b(tji tjiVar) throws GeneralSecurityException {
        Map map = this.b;
        Class clsZzb = tjiVar.zzb();
        if (map.containsKey(clsZzb)) {
            tji tjiVar2 = (tji) map.get(clsZzb);
            if (!tjiVar2.equals(tjiVar) || !tjiVar.equals(tjiVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(clsZzb.toString()));
            }
        } else {
            map.put(clsZzb, tjiVar);
        }
        return this;
    }

    public final nji c() {
        return new nji(this, null);
    }

    public kji(nji njiVar, mji mjiVar) {
        this.a = new HashMap(njiVar.a);
        this.b = new HashMap(njiVar.b);
    }
}
