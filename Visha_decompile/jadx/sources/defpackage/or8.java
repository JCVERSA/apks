package defpackage;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class or8 implements Interceptor {
    public static final a c = new a(null);
    public final nr8 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public or8(nr8 nr8Var) {
        y45.j(nr8Var, "hostChangerHelper");
        this.b = nr8Var;
    }

    public final void a(Request request, Response response) {
        String strHeader$default = Response.header$default(response, "region-host", null, 2, null);
        if (strHeader$default == null || strHeader$default.length() == 0) {
            return;
        }
        String strHost = request.url().host();
        String strB = this.b.b(strHeader$default);
        String strD = this.b.d(strHost);
        if (strB == null || y45.e(strB, strHost) || y45.e(strD, strHost)) {
            return;
        }
        tp5.a.a("HostChangeInterceptor", "cache new host from response " + strHost + " -> " + strB + " (newHostUrl: " + strHeader$default + ")");
        this.b.a(strHost, strB);
    }

    public final Request b(Request request) {
        String strHost = request.url().host();
        String strD = this.b.d(strHost);
        if (strD == null || y45.e(strD, strHost)) {
            return request;
        }
        return request.newBuilder().url(request.url().newBuilder().host(strD).build()).build();
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        y45.j(chain, "chain");
        Request request = chain.request();
        Response responseProceed = chain.proceed(b(request));
        a(request, responseProceed);
        return responseProceed;
    }
}
