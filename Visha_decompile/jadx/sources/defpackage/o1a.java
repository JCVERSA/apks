package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.acra.ErrorReporter;

public final class o1a {
    public static final o1a a = new o1a();

    public static final Object c(Object obj, Method method, Object[] objArr) {
        String str = c.b() ? "in SenderService process" : "before ACRA#init (if you did call #init, check if your configuration is valid)";
        c.d.w(c.c, "ErrorReporter#" + method.getName() + " called " + str + ". THIS CALL WILL BE IGNORED!");
        return null;
    }

    public static final Object d(Class cls, InvocationHandler invocationHandler) {
        y45.j(cls, "interfaceClass");
        y45.j(invocationHandler, "handler");
        return Proxy.newProxyInstance(o1a.class.getClassLoader(), new Class[]{cls}, invocationHandler);
    }

    public final ErrorReporter b() {
        return (ErrorReporter) d(ErrorReporter.class, new InvocationHandler() {
            @Override
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return o1a.c(obj, method, objArr);
            }
        });
    }
}
