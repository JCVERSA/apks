package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class d extends o.b {

    private final Method f68089b;

    private final o f68090c;

    d(o oVar, Method method, Method method2) {
        super(method);
        this.f68090c = oVar;
        this.f68089b = method2;
    }

    @Override
    public void a(Project project, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        try {
            this.f68089b.invoke(obj, new Long(org.apache.tools.ant.util.p.a(str)));
        } catch (IllegalAccessException e10) {
            throw e10;
        } catch (InvocationTargetException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new BuildException(e12);
        }
    }
}
