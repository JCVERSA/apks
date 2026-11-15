package com.blankj.utilcode.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Comparator;

public abstract class ReflectUtils {

    class AnonymousClass1 implements Comparator<Constructor<?>> {
        final ReflectUtils this$0;

        AnonymousClass1(ReflectUtils reflectUtils) {
        }

        @Override
        public int compare(Constructor<?> constructor, Constructor<?> constructor2) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            Class<?>[] parameterTypes2 = constructor2.getParameterTypes();
            int length = parameterTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (!parameterTypes[i10].equals(parameterTypes2[i10])) {
                    return ReflectUtils.a(null, parameterTypes[i10]).isAssignableFrom(ReflectUtils.a(null, parameterTypes2[i10])) ? 1 : -1;
                }
            }
            return 0;
        }
    }

    class AnonymousClass2 implements Comparator<Method> {
        final ReflectUtils this$0;

        AnonymousClass2(ReflectUtils reflectUtils) {
        }

        @Override
        public int compare(Method method, Method method2) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            Class<?>[] parameterTypes2 = method2.getParameterTypes();
            int length = parameterTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (!parameterTypes[i10].equals(parameterTypes2[i10])) {
                    return ReflectUtils.a(null, parameterTypes[i10]).isAssignableFrom(ReflectUtils.a(null, parameterTypes2[i10])) ? 1 : -1;
                }
            }
            return 0;
        }
    }

    public static class ReflectException extends RuntimeException {
        private static final long serialVersionUID = 858774075258496016L;

        public ReflectException(String str) {
            super(str);
        }

        public ReflectException(String str, Throwable th2) {
            super(str, th2);
        }

        public ReflectException(Throwable th2) {
            super(th2);
        }
    }

    static Class a(ReflectUtils reflectUtils, Class cls) {
        throw null;
    }
}
