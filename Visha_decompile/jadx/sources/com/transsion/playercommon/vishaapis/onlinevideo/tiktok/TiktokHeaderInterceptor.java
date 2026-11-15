package com.transsion.playercommon.vishaapis.onlinevideo.tiktok;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokHeaderInterceptor;", "Lokhttp3/Interceptor;", MethodDecl.initName, "()V", "Lokhttp3/Request;", Progress.REQUEST, "Lokhttp3/Request$Builder;", "builder", "Lzfb;", "applyCommonHeaders", "(Lokhttp3/Request;Lokhttp3/Request$Builder;)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TiktokHeaderInterceptor implements Interceptor {
    private final void applyCommonHeaders(Request request, Request.Builder builder) {
        String strHeader = request.header(TiktokApiHeaders.HEADER_ANDROID_ID);
        if (strHeader == null || strHeader.length() == 0) {
            builder.addHeader(TiktokApiHeaders.HEADER_ANDROID_ID, TiktokAndroidId.get());
        }
    }

    @Override
    public Response intercept(Interceptor.Chain chain) {
        y45.j(chain, "chain");
        Request request = chain.request();
        if (!TiktokApiHeaders.isTtApiPath(request.url().encodedPath())) {
            return chain.proceed(request);
        }
        Request.Builder builderNewBuilder = request.newBuilder();
        applyCommonHeaders(request, builderNewBuilder);
        return chain.proceed(builderNewBuilder.build());
    }
}
