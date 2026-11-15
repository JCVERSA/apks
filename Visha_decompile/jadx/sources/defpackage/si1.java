package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public interface si1 {

    public static abstract class a {
        public static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return ulb.g(i, parameterizedType);
        }

        public static Class<?> getRawType(Type type) {
            return ulb.h(type);
        }

        public si1 requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, ru8 ru8Var) {
            return null;
        }

        public abstract si1 responseBodyConverter(Type type, Annotation[] annotationArr, ru8 ru8Var);

        public si1 stringConverter(Type type, Annotation[] annotationArr, ru8 ru8Var) {
            return null;
        }
    }

    Object convert(Object obj);
}
