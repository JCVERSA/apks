package com.transsion.playercommon.vishaapis.opensubtitle;

import android.os.Build;
import androidx.annotation.NonNull;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.utils.deviceinfo.a;
import defpackage.e07;
import defpackage.it1;
import defpackage.ydc;
import defpackage.zdc;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.UUID;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class SubTitleInterceptor implements Interceptor {
    @Override
    @NonNull
    public Response intercept(@NonNull Interceptor.Chain chain) throws IOException {
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        builderNewBuilder.addHeader("gaid", a.j()).addHeader(CommonUrlParts.MODEL, Build.MODEL).addHeader("brand", Build.BRAND).addHeader("Client-ID", zdc.b()).addHeader("App-ID", zdc.a()).addHeader("net_type", e07.d(Utils.a())).addHeader("data", it1.c("yyyy-MM-dd HH:mm:ss")).addHeader("versionCode", String.valueOf(ydc.a())).addHeader("RequestID", UUID.randomUUID().toString()).addHeader("CountryCode", CountryInfoUtil.i()).addHeader("LanguageCode", LanguageUtils.b().getLanguage()).addHeader("x-API-KEY", "kkLCdl3*p9mQPkZtOy");
        return chain.proceed(builderNewBuilder.build());
    }
}
