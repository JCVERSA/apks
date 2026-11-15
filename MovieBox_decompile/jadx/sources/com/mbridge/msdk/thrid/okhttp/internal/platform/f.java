package com.mbridge.msdk.thrid.okhttp.internal.platform;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class f<T> {

    private final Class<?> f37411a;

    private final String f37412b;

    private final Class[] f37413c;

    f(Class<?> cls, String str, Class... clsArr) {
        this.f37411a = cls;
        this.f37412b = str;
        this.f37413c = clsArr;
    }

    public boolean a(T t10) {
        return a(t10.getClass()) != null;
    }

    public Object b(T t10, Object... objArr) throws InvocationTargetException {
        Method methodA = a(t10.getClass());
        if (methodA == null) {
            return null;
        }
        try {
            return methodA.invoke(t10, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    public Object c(T t10, Object... objArr) {
        try {
            return b(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object d(T t10, Object... objArr) {
        try {
            return a(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object a(T t10, Object... objArr) throws InvocationTargetException {
        Method methodA = a(t10.getClass());
        if (methodA == null) {
            throw new AssertionError("Method " + this.f37412b + " not supported for object " + t10);
        }
        try {
            return methodA.invoke(t10, objArr);
        } catch (IllegalAccessException e10) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodA);
            assertionError.initCause(e10);
            throw assertionError;
        }
    }

    private Method a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f37412b;
        if (str == null) {
            return null;
        }
        Method methodA = a(cls, str, this.f37413c);
        if (methodA == null || (cls2 = this.f37411a) == null || cls2.isAssignableFrom(methodA.getReturnType())) {
            return methodA;
        }
        return null;
    }

    private static Method a(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }
}
