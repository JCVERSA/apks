package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class n3i {
    public static final Object a;

    static {
        Object objA = a();
        a = objA;
        if (objA != null) {
            b("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (objA == null) {
            return;
        }
        c(objA);
    }

    public static Object a() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", null).invoke(null, null);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method b(String str, Class... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method c(Object obj) {
        try {
            Method methodB = b("getStackTraceDepth", Throwable.class);
            if (methodB == null) {
                return null;
            }
            methodB.invoke(obj, new Throwable());
            return methodB;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }
}
