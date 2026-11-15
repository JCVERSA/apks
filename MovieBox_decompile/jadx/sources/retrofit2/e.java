package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public interface e {

    public static abstract class a {
        protected static Type b(int i10, ParameterizedType parameterizedType) {
            return o0.g(i10, parameterizedType);
        }

        protected static Class c(Type type) {
            return o0.h(type);
        }

        public abstract e a(Type type, Annotation[] annotationArr, k0 k0Var);
    }

    Type a();

    Object b(d dVar);
}
