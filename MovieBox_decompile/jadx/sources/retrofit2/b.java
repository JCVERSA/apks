package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Unit;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.http.Streaming;

final class b extends k.a {

    static final class a implements k {

        static final a f71032a = new a();

        a() {
        }

        @Override
        public ResponseBody convert(ResponseBody responseBody) {
            try {
                return o0.a(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    static final class d implements k {

        static final d f71035a = new d();

        d() {
        }

        @Override
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    static final class e implements k {

        static final e f71036a = new e();

        e() {
        }

        @Override
        public Unit convert(ResponseBody responseBody) {
            responseBody.close();
            return Unit.f64096a;
        }
    }

    static final class f implements k {

        static final f f71037a = new f();

        f() {
        }

        @Override
        public Void convert(ResponseBody responseBody) {
            responseBody.close();
            return null;
        }
    }

    b() {
    }

    @Override
    public k c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, k0 k0Var) {
        if (RequestBody.class.isAssignableFrom(o0.h(type))) {
            return C0870b.f71033a;
        }
        return null;
    }

    @Override
    public k d(Type type, Annotation[] annotationArr, k0 k0Var) {
        if (type == ResponseBody.class) {
            return o0.l(annotationArr, Streaming.class) ? c.f71034a : a.f71032a;
        }
        if (type == Void.class) {
            return f.f71037a;
        }
        if (o0.m(type)) {
            return e.f71036a;
        }
        return null;
    }

    static final class C0870b implements k {

        static final C0870b f71033a = new C0870b();

        C0870b() {
        }

        @Override
        public RequestBody convert(RequestBody requestBody) {
            return requestBody;
        }
    }

    static final class c implements k {

        static final c f71034a = new c();

        c() {
        }

        @Override
        public ResponseBody convert(ResponseBody responseBody) {
            return responseBody;
        }
    }
}
