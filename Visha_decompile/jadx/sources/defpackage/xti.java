package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class xti {
    public static final xti c = new xti();
    public final ConcurrentMap b = new ConcurrentHashMap();
    public final nui a = new hti();

    public static xti a() {
        return c;
    }

    public final cui b(Class cls) {
        zsi.c(cls, "messageType");
        ConcurrentMap concurrentMap = this.b;
        cui cuiVarA = (cui) concurrentMap.get(cls);
        if (cuiVarA == null) {
            cuiVarA = this.a.a(cls);
            zsi.c(cls, "messageType");
            cui cuiVar = (cui) concurrentMap.putIfAbsent(cls, cuiVarA);
            if (cuiVar != null) {
                return cuiVar;
            }
        }
        return cuiVarA;
    }
}
