package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class lo1 implements Interceptor {
    public static final a b = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @Override
    public Response intercept(Interceptor.Chain chain) {
        y45.j(chain, "chain");
        Request request = chain.request();
        String strHeader = request.header("X-Custom-Host");
        if (strHeader == null || j1a.o0(strHeader)) {
            return chain.proceed(request);
        }
        return chain.proceed(request.newBuilder().removeHeader("X-Custom-Host").url(request.url().newBuilder().host(strHeader).build()).build());
    }
}
