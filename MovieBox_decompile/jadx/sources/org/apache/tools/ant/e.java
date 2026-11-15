package org.apache.tools.ant;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class e extends o.b {

    private final boolean f68091b;

    private final Constructor f68092c;

    private final Method f68093d;

    private final o f68094e;

    e(o oVar, Method method, boolean z10, Constructor constructor, Method method2) {
        super(method);
        this.f68094e = oVar;
        this.f68091b = z10;
        this.f68092c = constructor;
        this.f68093d = method2;
    }

    @Override
    public void a(Project project, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        try {
            Object objNewInstance = this.f68092c.newInstance(this.f68091b ? new Object[]{project, str} : new Object[]{str});
            if (project != null) {
                project.K(objNewInstance);
            }
            this.f68093d.invoke(obj, objNewInstance);
        } catch (InstantiationException e10) {
            throw new BuildException(e10);
        }
    }
}
