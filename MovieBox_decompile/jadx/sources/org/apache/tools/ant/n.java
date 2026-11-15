package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class n extends o.b {

    private final Method f68112b;

    private final Class f68113c;

    private final o f68114d;

    n(o oVar, Method method, Method method2, Class cls) {
        super(method);
        this.f68114d = oVar;
        this.f68112b = method2;
        this.f68113c = cls;
    }

    @Override
    public void a(Project project, Object obj, String str) {
        try {
            Method method = this.f68112b;
            Class cls = this.f68113c;
            Class<?> clsC = o.f68127t;
            if (clsC == null) {
                clsC = o.c("java.lang.String");
                o.f68127t = clsC;
            }
            method.invoke(obj, cls.getMethod("valueOf", clsC).invoke(null, str));
        } catch (InvocationTargetException e10) {
            if (!(e10.getTargetException() instanceof IllegalArgumentException)) {
                throw o.g(e10);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("'");
            stringBuffer.append(str);
            stringBuffer.append("' is not a permitted value for ");
            stringBuffer.append(this.f68113c.getName());
            throw new BuildException(stringBuffer.toString());
        } catch (Exception e11) {
            throw new BuildException(e11);
        }
    }
}
