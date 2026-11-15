package com.transsion.json.b;

import defpackage.mod;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

public class p extends ConcurrentHashMap<Class, mod> {
    private p a;
    protected boolean b;

    public class a {
        public boolean a;

        public a() {
        }

        public void a(boolean z) {
            this.a = z;
        }

        public boolean b() {
            return this.a;
        }
    }

    public p() {
    }

    public mod a(Object obj) {
        p pVar;
        a aVar = new a();
        Class<?> cls = obj == null ? Void.TYPE : obj.getClass();
        mod modVarA = a(cls, cls, aVar);
        if (modVarA == null && (pVar = this.a) != null && (modVarA = pVar.a(obj)) != null) {
            a(obj == null ? Void.TYPE : obj.getClass(), modVarA);
        }
        if (!aVar.b()) {
            a(cls, modVarA);
        }
        return modVarA;
    }

    public p(p pVar) {
        this.a = pVar;
    }

    private mod a(Class cls, Class cls2, a aVar) {
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
            mod modVarA = a(cls3, cls2, aVar);
            if (modVarA != null) {
                return modVarA;
            }
        }
        return a(cls.getSuperclass(), cls2, aVar);
    }

    public mod a(Class cls, mod modVar) {
        if (!this.b) {
            put(cls, modVar);
        }
        return modVar;
    }
}
