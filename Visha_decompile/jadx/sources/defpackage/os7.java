package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import okhttp3.ResponseBody;

public final class os7 extends si1.a {

    public static final class a implements si1 {
        public final si1 a;

        public a(si1 si1Var) {
            this.a = si1Var;
        }

        @Override
        public Optional convert(ResponseBody responseBody) {
            return Optional.ofNullable(this.a.convert(responseBody));
        }
    }

    @Override
    public si1 responseBodyConverter(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        if (si1.a.getRawType(type) != Optional.class) {
            return null;
        }
        return new a(ru8Var.h(si1.a.getParameterUpperBound(0, (ParameterizedType) type), annotationArr));
    }
}
