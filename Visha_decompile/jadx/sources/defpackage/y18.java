package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.random.Random;

public abstract class y18 {

    public static final class a {
        public static final a a = new a();
        public static final Method b;
        public static final Method c;

        static {
            Method method;
            Method method2;
            Method[] methods = Throwable.class.getMethods();
            y45.g(methods);
            int length = methods.length;
            int i = 0;
            while (true) {
                method = null;
                if (i >= length) {
                    method2 = null;
                    break;
                }
                method2 = methods[i];
                if (y45.e(method2.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    y45.i(parameterTypes, "getParameterTypes(...)");
                    if (y45.e(hi.G0(parameterTypes), Throwable.class)) {
                        break;
                    }
                }
                i++;
            }
            b = method2;
            for (Method method3 : methods) {
                if (y45.e(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
            }
            c = method;
        }
    }

    public void a(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        y45.j(th, "cause");
        y45.j(th2, "exception");
        Method method = a.b;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public Random b() {
        return new ap3();
    }
}
