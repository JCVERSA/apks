package com.tn.tranpay.network;

import android.app.Application;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.tn.tranpay.TranPay;
import com.tn.tranpay.device.TNDeviceHelper;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class a implements Interceptor {
    private final String a() {
        try {
            Application applicationD = TranPay.f40491a.d();
            String str = applicationD.getPackageManager().getPackageInfo(applicationD.getPackageName(), 0).versionName;
            Intrinsics.g(str, "{\n            // 使用 Tran… 0).versionName\n        }");
            return str;
        } catch (Exception e10) {
            lh.a.e(lh.a.f65699a, "Failed to get app version: " + e10.getMessage(), null, 2, null);
            return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    @Override
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.h(chain, "chain");
        List<Pair> listQ = CollectionsKt.q(TuplesKt.a("sdkVersion", TranPay.f40491a.e()), TuplesKt.a(TmcStartParams.KEY_APP_VERSION, a()), TuplesKt.a("deviceId", TNDeviceHelper.f40534a.c()), TuplesKt.a(TrackingKey.PLATFORM, "android"), TuplesKt.a(HttpHeaders.CONTENT_TYPE, "application/json;charset=UTF-8"));
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        for (Pair pair : listQ) {
            builderNewBuilder.header((String) pair.getFirst(), (String) pair.getSecond());
        }
        return chain.proceed(builderNewBuilder.build());
    }
}
