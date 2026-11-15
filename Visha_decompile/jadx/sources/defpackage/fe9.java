package defpackage;

import java.lang.reflect.Method;
import java.lang.reflect.Type;

public abstract class fe9 {
    public static fe9 b(ru8 ru8Var, Class cls, Method method) {
        et8 et8VarB = et8.b(ru8Var, cls, method);
        Type genericReturnType = method.getGenericReturnType();
        if (ulb.j(genericReturnType)) {
            throw ulb.n(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
        }
        if (genericReturnType != Void.TYPE) {
            return lt4.f(ru8Var, method, et8VarB);
        }
        throw ulb.n(method, "Service methods cannot return void.", new Object[0]);
    }

    public abstract Object a(Object obj, Object[] objArr);
}
