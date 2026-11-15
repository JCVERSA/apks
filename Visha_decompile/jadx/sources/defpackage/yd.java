package defpackage;

import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class yd implements Interceptor {
    public final String b;
    public final String c;

    public yd(String str, String str2) {
        y45.j(str, "oldApiPrefix");
        y45.j(str2, "newApiPrefix");
        this.b = str;
        this.c = str2;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) {
        y45.j(chain, "chain");
        Request request = chain.request();
        HttpUrl httpUrlUrl = request.url();
        if (j1a.X(httpUrlUrl.encodedPath(), "/" + this.b + "/", false, 2, null)) {
            httpUrlUrl = httpUrlUrl.newBuilder().encodedPath(g1a.N(httpUrlUrl.encodedPath(), "/" + this.b + "/", "/" + this.c + "/", false, 4, null)).build();
        }
        return chain.proceed(request.newBuilder().url(httpUrlUrl).build());
    }
}
