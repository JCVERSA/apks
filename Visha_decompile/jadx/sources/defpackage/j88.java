package defpackage;

import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class j88 implements Interceptor {
    @Override
    public Response intercept(Interceptor.Chain chain) {
        Request request = chain.request();
        Request.Builder builderNewBuilder = request.newBuilder();
        builderNewBuilder.addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy");
        if ("/visha/api/univer-player/ctrl/get".equalsIgnoreCase(request.url().uri().getPath())) {
            builderNewBuilder.addHeader("versionCode", String.valueOf(ydc.a()));
        }
        return chain.proceed(builderNewBuilder.build());
    }
}
