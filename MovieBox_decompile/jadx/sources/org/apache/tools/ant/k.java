package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class k extends o.b {

    private final Method f68105b;

    private final o f68106c;

    k(o oVar, Method method, Method method2) {
        super(method);
        this.f68106c = oVar;
        this.f68105b = method2;
    }

    @Override
    public void a(Project project, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        try {
            this.f68105b.invoke(obj, Class.forName(str));
        } catch (ClassNotFoundException e10) {
            throw new BuildException(e10);
        }
    }
}
