package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class f extends o.e {

    private final Object f68095b;

    private final Object f68096c;

    private final o f68097d;

    f(o oVar, Method method, Object obj, Object obj2) {
        super(method);
        this.f68097d = oVar;
        this.f68095b = obj;
        this.f68096c = obj2;
    }

    @Override
    Object a(Project project, Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
        if (!b().getName().endsWith("Configured")) {
            b().invoke(obj, this.f68095b);
        }
        return this.f68096c;
    }

    @Override
    void d(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
        if (b().getName().endsWith("Configured")) {
            b().invoke(obj, this.f68095b);
        }
    }
}
