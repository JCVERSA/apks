package jg;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class c implements Interceptor {

    private final String f63125a = "HeaderInterceptor";

    private final Request a(Request request, String str) {
        b.a aVar = b.f63119a;
        String strC = aVar.c();
        Request.Builder builderNewBuilder = request.newBuilder();
        builderNewBuilder.addHeader("X-Client-Info", strC);
        builderNewBuilder.addHeader("X-Client-Status", String.valueOf(!Intrinsics.c(aVar.d(), Boolean.TRUE) ? 1 : 0));
        return builderNewBuilder.build();
    }

    private final Request b(Request request) {
        Map mapF = b.f63119a.f();
        if (mapF.isEmpty()) {
            return request;
        }
        Request.Builder builderNewBuilder = request.newBuilder();
        for (Map.Entry entry : mapF.entrySet()) {
            builderNewBuilder.header((String) entry.getKey(), (String) entry.getValue());
        }
        return builderNewBuilder.build();
    }

    @Override
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.h(chain, "chain");
        return chain.proceed(a(b(chain.request()), ""));
    }
}
