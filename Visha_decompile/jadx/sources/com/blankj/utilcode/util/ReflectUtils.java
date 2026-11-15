package com.blankj.utilcode.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Comparator;

public abstract class ReflectUtils {

    class AnonymousClass1 implements Comparator<Constructor<?>> {
        final ReflectUtils this$0;

        public AnonymousClass1(ReflectUtils reflectUtils) {
        }

        @Override
        public int compare(Constructor<?> constructor, Constructor<?> constructor2) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            Class<?>[] parameterTypes2 = constructor2.getParameterTypes();
            int length = parameterTypes.length;
            for (int i = 0; i < length; i++) {
                if (!parameterTypes[i].equals(parameterTypes2[i])) {
                    return ReflectUtils.a(null, parameterTypes[i]).isAssignableFrom(ReflectUtils.a(null, parameterTypes2[i])) ? 1 : -1;
                }
            }
            return 0;
        }
    }

    class AnonymousClass2 implements Comparator<Method> {
        final ReflectUtils this$0;

        public AnonymousClass2(ReflectUtils reflectUtils) {
        }

        @Override
        public int compare(Method method, Method method2) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            Class<?>[] parameterTypes2 = method2.getParameterTypes();
            int length = parameterTypes.length;
            for (int i = 0; i < length; i++) {
                if (!parameterTypes[i].equals(parameterTypes2[i])) {
                    return ReflectUtils.a(null, parameterTypes[i]).isAssignableFrom(ReflectUtils.a(null, parameterTypes2[i])) ? 1 : -1;
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

        public ReflectException(String str, Throwable th) {
            super(str, th);
        }

        public ReflectException(Throwable th) {
            super(th);
        }
    }

    public static Class a(ReflectUtils reflectUtils, Class cls) {
        throw null;
    }
}
