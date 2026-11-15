package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class l extends o.b {

    private final Method f68107b;

    private final o f68108c;

    l(o oVar, Method method, Method method2) {
        super(method);
        this.f68108c = oVar;
        this.f68107b = method2;
    }

    @Override
    public void a(Project project, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        this.f68107b.invoke(obj, project.D(str));
    }
}
