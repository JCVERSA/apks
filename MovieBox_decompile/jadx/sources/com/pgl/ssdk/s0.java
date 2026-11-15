package com.pgl.ssdk;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class s0 {

    private static Method f39363a;

    private static Method f39364b;

    private static Method f39365c;

    static {
        try {
            f39363a = Class.class.getDeclaredMethod("forName", String.class);
            f39364b = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            f39365c = Class.class.getDeclaredMethod("getDeclaredField", String.class);
        } catch (NoSuchMethodException | NullPointerException unused) {
        }
    }

    public static Object a(Object obj, Class cls, String str, Object obj2) {
        try {
            Field fieldA = a(cls, str);
            if (fieldA == null) {
                return obj2;
            }
            fieldA.setAccessible(true);
            return fieldA.get(obj);
        } catch (Throwable unused) {
            return obj2;
        }
    }

    public static Field a(Class cls, String str) {
        if (!a()) {
            return null;
        }
        try {
            Field field = (Field) f39365c.invoke(cls, str);
            try {
                field.setAccessible(true);
            } catch (Throwable unused) {
            }
            return field;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static Method a(Class cls, String str, Class[] clsArr) {
        if (!a()) {
            return null;
        }
        try {
            Method method = (Method) f39364b.invoke(cls, str, clsArr);
            try {
                method.setAccessible(true);
            } catch (Throwable unused) {
            }
            return method;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static Object a(Object obj, Class cls, String str, Class[] clsArr, Object... objArr) {
        try {
            Method methodA = a(cls, str, clsArr);
            if (methodA != null) {
                return methodA.invoke(obj, objArr);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static boolean a() {
        return (f39363a == null || f39364b == null || f39365c == null) ? false : true;
    }
}
