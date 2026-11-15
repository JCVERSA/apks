package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

public final class bj9 {
    public static final bj9 a = new bj9();

    public final String a(Constructor constructor) {
        y45.j(constructor, "constructor");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        y45.i(parameterTypes, "constructor.parameterTypes");
        for (Class<?> cls : parameterTypes) {
            y45.i(cls, "parameterType");
            sb.append(ReflectClassUtilKt.b(cls));
        }
        sb.append(")V");
        String string = sb.toString();
        y45.i(string, "sb.toString()");
        return string;
    }

    public final String b(Field field) {
        y45.j(field, "field");
        Class<?> type = field.getType();
        y45.i(type, "field.type");
        return ReflectClassUtilKt.b(type);
    }

    public final String c(Method method) {
        y45.j(method, "method");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = method.getParameterTypes();
        y45.i(parameterTypes, "method.parameterTypes");
        for (Class<?> cls : parameterTypes) {
            y45.i(cls, "parameterType");
            sb.append(ReflectClassUtilKt.b(cls));
        }
        sb.append(")");
        Class<?> returnType = method.getReturnType();
        y45.i(returnType, "method.returnType");
        sb.append(ReflectClassUtilKt.b(returnType));
        String string = sb.toString();
        y45.i(string, "sb.toString()");
        return string;
    }
}
