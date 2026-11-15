package com.transsion.playercommon.vishaapis.gslb;

import android.util.Log;
import androidx.annotation.NonNull;
import com.blankj.utilcode.util.LogUtils;
import defpackage.ge;
import defpackage.r0a;
import java.io.IOException;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class GslbInterceptor implements Interceptor {
    public static final String HEADER_GSLB = "g:s";
    public static final String HEADER_KEY_GSLB = "g";
    public static final String HEADER_VALUE_GSLB = "s";
    private static final String TAG = "visha_" + GslbInterceptor.class.getSimpleName();

    @Override
    @NonNull
    public Response intercept(Interceptor.Chain chain) throws IOException {
        String eE1Host;
        Request request = chain.request();
        try {
            HttpUrl httpUrlUrl = request.url();
            Request.Builder builderNewBuilder = request.newBuilder();
            String strHeader = request.header(HEADER_KEY_GSLB);
            if (!ge.f() && !r0a.g(strHeader) && strHeader.equalsIgnoreCase("s")) {
                if (GslbService.getInstance().IsSupportGslb()) {
                    eE1Host = GslbService.getInstance().getDomainByApi(httpUrlUrl.uri().getPath());
                } else {
                    if (!GslbService.getInstance().isTestDevHostMode() || !GslbService.getInstance().isEE1Country()) {
                        return chain.proceed(request);
                    }
                    eE1Host = GslbService.getInstance().getEE1Host();
                }
                if (r0a.g(eE1Host)) {
                    return chain.proceed(request);
                }
                HttpUrl httpUrl = HttpUrl.parse(eE1Host);
                if (httpUrl != null) {
                    LogUtils.w(TAG, "gslb old host:" + httpUrlUrl.host(), "new host:" + httpUrl, "url:" + httpUrlUrl);
                    builderNewBuilder.removeHeader(HEADER_KEY_GSLB);
                    return chain.proceed(builderNewBuilder.url(httpUrlUrl.newBuilder().scheme(httpUrl.scheme()).host(httpUrl.host()).port(httpUrl.port()).build()).build());
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "error in intercept", e);
        }
        return chain.proceed(request);
    }
}
