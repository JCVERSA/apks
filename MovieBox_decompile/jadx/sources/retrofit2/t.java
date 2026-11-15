package retrofit2;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

abstract class t {

    private static Constructor f71145a;

    static Object a(Method method, Class cls, Object obj, Object[] objArr) throws NoSuchMethodException {
        Constructor declaredConstructor = f71145a;
        if (declaredConstructor == null) {
            declaredConstructor = o.a().getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            f71145a = declaredConstructor;
        }
        return p.a(declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }
}
