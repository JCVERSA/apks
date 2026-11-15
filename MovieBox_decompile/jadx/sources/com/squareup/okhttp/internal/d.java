package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class d {

    private final Class f39457a;

    private final String f39458b;

    private final Class[] f39459c;

    public d(Class cls, String str, Class... clsArr) {
        this.f39457a = cls;
        this.f39458b = str;
        this.f39459c = clsArr;
    }

    private Method a(Class cls) {
        Class cls2;
        String str = this.f39458b;
        if (str == null) {
            return null;
        }
        Method methodB = b(cls, str, this.f39459c);
        if (methodB == null || (cls2 = this.f39457a) == null || cls2.isAssignableFrom(methodB.getReturnType())) {
            return methodB;
        }
        return null;
    }

    private static Method b(Class cls, String str, Class[] clsArr) {
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

    public Object c(Object obj, Object... objArr) {
        Method methodA = a(obj.getClass());
        if (methodA == null) {
            throw new AssertionError("Method " + this.f39458b + " not supported for object " + obj);
        }
        try {
            return methodA.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodA);
            assertionError.initCause(e10);
            throw assertionError;
        }
    }

    public Object d(Object obj, Object... objArr) {
        Method methodA = a(obj.getClass());
        if (methodA == null) {
            return null;
        }
        try {
            return methodA.invoke(obj, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    public Object e(Object obj, Object... objArr) {
        try {
            return d(obj, objArr);
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

    public Object f(Object obj, Object... objArr) {
        try {
            return c(obj, objArr);
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

    public boolean g(Object obj) {
        return a(obj.getClass()) != null;
    }
}
