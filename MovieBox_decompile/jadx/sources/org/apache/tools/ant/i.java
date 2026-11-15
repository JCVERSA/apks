package org.apache.tools.ant;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class i extends o.b {

    private final String f68100b;

    private final Method f68101c;

    private final o f68102d;

    i(o oVar, Method method, String str, Method method2) {
        super(method);
        this.f68102d = oVar;
        this.f68100b = str;
        this.f68101c = method2;
    }

    @Override
    public void a(Project project, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        if (str.length() != 0) {
            this.f68101c.invoke(obj, new Character(str.charAt(0)));
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("The value \"\" is not a legal value for attribute \"");
        stringBuffer.append(this.f68100b);
        stringBuffer.append("\"");
        throw new BuildException(stringBuffer.toString());
    }
}
