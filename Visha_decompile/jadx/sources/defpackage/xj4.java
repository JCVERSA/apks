package defpackage;

import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class xj4 implements Interceptor {
    public final yj4 b;

    public xj4(yj4 yj4Var) {
        this.b = yj4Var;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) {
        y45.j(chain, "chain");
        if (this.b == null) {
            return chain.proceed(chain.request());
        }
        chain.request();
        Request request = chain.request();
        String strA = this.b.a(request.url().host());
        if (strA == null || j1a.o0(strA)) {
            return chain.proceed(request);
        }
        return chain.proceed(request.newBuilder().url(request.url().newBuilder().host(strA).build()).build());
    }
}
