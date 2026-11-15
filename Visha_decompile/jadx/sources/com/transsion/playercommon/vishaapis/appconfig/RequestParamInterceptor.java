package com.transsion.playercommon.vishaapis.appconfig;

import androidx.annotation.NonNull;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.blankj.utilcode.util.LanguageUtils;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.APIServiceConfig;
import com.transsion.utils.deviceinfo.a;
import defpackage.r0a;
import defpackage.ydc;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.UUID;
import okhttp3.Interceptor;
import okhttp3.Response;

public class RequestParamInterceptor implements Interceptor {
    private static final String TAG = "visha_AppConfigParamInterceptor";

    @Override
    @NonNull
    public Response intercept(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().removeHeader("User-Agent").addHeader("User-Agent", APIServiceConfig.getUserAgent()).addHeader("Request-ID", UUID.randomUUID().toString()).addHeader("CountryCode", CountryInfoUtil.i()).addHeader("RegionId", CountryInfoUtil.m() + "").addHeader("LanguageCode", LanguageUtils.b().getLanguage()).addHeader("version", ydc.b()).addHeader("versionCode", String.valueOf(ydc.a())).addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy").addHeader(RtspHeaders.TIMESTAMP, String.valueOf(System.currentTimeMillis())).addHeader("Referer", r0a.c(APIServiceConfig.getReferer())).addHeader("brand", a.k().f()).addHeader(CommonUrlParts.MODEL, a.k().m()).addHeader("gaid", r0a.c(a.j())).build());
    }
}
