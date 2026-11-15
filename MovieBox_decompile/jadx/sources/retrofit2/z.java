package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import okhttp3.ResponseBody;

final class z extends k.a {

    static final class a implements k {

        final k f71175a;

        a(k kVar) {
            this.f71175a = kVar;
        }

        @Override
        public Optional convert(ResponseBody responseBody) {
            return Optional.ofNullable(this.f71175a.convert(responseBody));
        }
    }

    z() {
    }

    @Override
    public k d(Type type, Annotation[] annotationArr, k0 k0Var) {
        if (k.a.b(type) != x.a()) {
            return null;
        }
        return new a(k0Var.h(k.a.a(0, (ParameterizedType) type), annotationArr));
    }
}
