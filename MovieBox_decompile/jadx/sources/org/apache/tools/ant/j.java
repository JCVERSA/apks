package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class j extends o.b {

    private final Method f68103b;

    private final o f68104c;

    j(o oVar, Method method, Method method2) {
        super(method);
        this.f68104c = oVar;
        this.f68103b = method2;
    }

    @Override
    public void a(Project project, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        this.f68103b.invoke(obj, Project.N(str) ? Boolean.TRUE : Boolean.FALSE);
    }
}
