package com.transsion.playercommon.vishaapis.onlinevideo;

import androidx.annotation.NonNull;
import defpackage.a06;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class MarkInterceptor implements Interceptor {
    public String checkApi(String str) {
        return str.contains("?") ? str.substring(0, str.indexOf("?")) : str;
    }

    @Override
    @NonNull
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Request request = chain.request();
        long jNanoTime = System.nanoTime();
        try {
            Response responseProceed = chain.proceed(request);
            a06.b(TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime), checkApi(request.url().getUrl()), "success");
            return responseProceed;
        } catch (Exception e) {
            a06.b(TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime), checkApi(request.url().getUrl()), "fail");
            throw e;
        }
    }
}
