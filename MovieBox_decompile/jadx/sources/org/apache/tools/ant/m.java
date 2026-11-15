package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class m extends o.b {

    private final Class f68109b;

    private final Method f68110c;

    private final o f68111d;

    m(o oVar, Method method, Class cls, Method method2) {
        super(method);
        this.f68111d = oVar;
        this.f68109b = cls;
        this.f68110c = method2;
    }

    @Override
    public void a(Project project, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        try {
            org.apache.tools.ant.types.f fVar = (org.apache.tools.ant.types.f) this.f68109b.newInstance();
            fVar.e(str);
            this.f68110c.invoke(obj, fVar);
        } catch (InstantiationException e10) {
            throw new BuildException(e10);
        }
    }
}
