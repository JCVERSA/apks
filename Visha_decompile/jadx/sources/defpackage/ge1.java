package defpackage;

import java.util.concurrent.ConcurrentHashMap;

public final class ge1 extends ip0 {
    public final e74 a;
    public final ConcurrentHashMap b;

    public ge1(e74 e74Var) {
        y45.j(e74Var, "compute");
        this.a = e74Var;
        this.b = new ConcurrentHashMap();
    }

    @Override
    public Object a(Class cls) {
        y45.j(cls, "key");
        ConcurrentHashMap concurrentHashMap = this.b;
        Object obj = concurrentHashMap.get(cls);
        if (obj != null) {
            return obj;
        }
        Object objInvoke = this.a.invoke(cls);
        Object objPutIfAbsent = concurrentHashMap.putIfAbsent(cls, objInvoke);
        return objPutIfAbsent == null ? objInvoke : objPutIfAbsent;
    }
}
