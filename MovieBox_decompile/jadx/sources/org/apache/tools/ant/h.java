package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class h extends o.b {

    private final Method f68098b;

    private final o f68099c;

    h(o oVar, Method method, Method method2) {
        super(method);
        this.f68099c = oVar;
        this.f68098b = method2;
    }

    @Override
    public void a(Project project, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        this.f68098b.invoke(obj, str);
    }
}
