package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

public abstract class wq8 {
    public static Object a(Class cls, InvocationHandler invocationHandler) {
        xd8.o(invocationHandler);
        xd8.j(cls.isInterface(), "%s is not an interface", cls);
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
