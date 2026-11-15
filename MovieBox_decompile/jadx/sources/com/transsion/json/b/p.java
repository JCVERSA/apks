package com.transsion.json.b;

import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

public class p extends ConcurrentHashMap<Class, n> {

    private p f44678a;

    protected boolean f44679b;

    class a {

        private boolean f44680a;

        a() {
        }

        public void a(boolean z10) {
            this.f44680a = z10;
        }

        public boolean b() {
            return this.f44680a;
        }
    }

    public p() {
    }

    public n a(Object obj) {
        p pVar;
        a aVar = new a();
        Class<?> cls = obj == null ? Void.TYPE : obj.getClass();
        n nVarA = a(cls, cls, aVar);
        if (nVarA == null && (pVar = this.f44678a) != null && (nVarA = pVar.a(obj)) != null) {
            a(obj == null ? Void.TYPE : obj.getClass(), nVarA);
        }
        if (!aVar.b()) {
            a(cls, nVarA);
        }
        return nVarA;
    }

    public p(p pVar) {
        this.f44678a = pVar;
    }

    private n a(Class cls, Class cls2, a aVar) {
        if (cls == null) {
            return null;
        }
        if (containsKey(cls)) {
            if (cls != cls2) {
                aVar.a(false);
            }
            return get(cls);
        }
        if (cls.isArray()) {
            aVar.a(false);
            return get(Arrays.class);
        }
        for (Class<?> cls3 : cls.getInterfaces()) {
            n nVarA = a(cls3, cls2, aVar);
            if (nVarA != null) {
                return nVarA;
            }
        }
        return a(cls.getSuperclass(), cls2, aVar);
    }

    public n a(Class cls, n nVar) {
        if (!this.f44679b) {
            put(cls, nVar);
        }
        return nVar;
    }
}
