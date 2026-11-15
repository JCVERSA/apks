package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

public final class fl0 extends si1.a {

    public static final class a implements si1 {
        public static final a a = new a();

        @Override
        public ResponseBody convert(ResponseBody responseBody) {
            try {
                return ulb.a(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    public static final class b implements si1 {
        public static final b a = new b();

        @Override
        public RequestBody convert(RequestBody requestBody) {
            return requestBody;
        }
    }

    public static final class c implements si1 {
        public static final c a = new c();

        @Override
        public ResponseBody convert(ResponseBody responseBody) {
            return responseBody;
        }
    }

    public static final class d implements si1 {
        public static final d a = new d();

        @Override
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    public static final class e implements si1 {
        public static final e a = new e();

        @Override
        public zfb convert(ResponseBody responseBody) {
            responseBody.close();
            return zfb.a;
        }
    }

    public static final class f implements si1 {
        public static final f a = new f();

        @Override
        public Void convert(ResponseBody responseBody) {
            responseBody.close();
            return null;
        }
    }

    @Override
    public si1 requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, ru8 ru8Var) {
        if (RequestBody.class.isAssignableFrom(ulb.h(type))) {
            return b.a;
        }
        return null;
    }

    @Override
    public si1 responseBodyConverter(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        if (type == ResponseBody.class) {
            return ulb.l(annotationArr, wy9.class) ? c.a : a.a;
        }
        if (type == Void.class) {
            return f.a;
        }
        if (ulb.m(type)) {
            return e.a;
        }
        return null;
    }
}
