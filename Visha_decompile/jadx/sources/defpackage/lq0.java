package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public interface lq0 {

    public static abstract class a {
        public static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return ulb.g(i, parameterizedType);
        }

        public static Class<?> getRawType(Type type) {
            return ulb.h(type);
        }

        public abstract lq0 get(Type type, Annotation[] annotationArr, ru8 ru8Var);
    }

    Object adapt(jq0 jq0Var);

    Type responseType();
}
