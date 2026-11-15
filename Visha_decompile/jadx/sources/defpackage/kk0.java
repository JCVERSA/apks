package defpackage;

import android.os.Build;
import com.transsion.audiotagger.tag.reference.Languages;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Collection;

public abstract class kk0 {

    public static class a implements InvocationHandler {
        public final Object b;

        public a(Object obj) {
            this.b = obj;
        }

        public Object a() {
            return this.b;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                return kk0.d(method, this.b.getClass().getClassLoader()).invoke(this.b, objArr);
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            } catch (ReflectiveOperationException e2) {
                throw new RuntimeException("Reflection failed for method " + method, e2);
            }
        }
    }

    public static Object a(Class cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(kk0.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static boolean b(Collection collection, String str) {
        if (!collection.contains(str)) {
            if (f()) {
                if (collection.contains(str + ":dev")) {
                }
            }
            return false;
        }
        return true;
    }

    public static InvocationHandler c(Object obj) {
        if (obj == null) {
            return null;
        }
        return new a(obj);
    }

    public static Method d(Method method, ClassLoader classLoader) throws ClassNotFoundException {
        return Class.forName(method.getDeclaringClass().getName(), true, classLoader).getDeclaredMethod(method.getName(), method.getParameterTypes());
    }

    public static Object e(InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return ((a) invocationHandler).a();
    }

    public static boolean f() {
        String str = Build.TYPE;
        return Languages.DEFAULT_ID.equals(str) || "userdebug".equals(str);
    }
}
