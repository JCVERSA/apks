package defpackage;

import java.util.concurrent.ConcurrentHashMap;

public final class fe1 implements qd9 {
    public final e74 a;
    public final ConcurrentHashMap b;

    public fe1(e74 e74Var) {
        y45.j(e74Var, "compute");
        this.a = e74Var;
        this.b = new ConcurrentHashMap();
    }

    @Override
    public ef5 a(de5 de5Var) {
        Object objPutIfAbsent;
        y45.j(de5Var, "key");
        ConcurrentHashMap concurrentHashMap = this.b;
        Class clsB = ed5.b(de5Var);
        Object mp0Var = concurrentHashMap.get(clsB);
        if (mp0Var == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(clsB, (mp0Var = new mp0((ef5) this.a.invoke(de5Var))))) != null) {
            mp0Var = objPutIfAbsent;
        }
        return ((mp0) mp0Var).a;
    }
}
