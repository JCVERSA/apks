package com.cloud.hisavana.protocol.intercept;

import com.cloud.sdk.commonutil.util.c;
import java.net.UnknownHostException;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import mh.h;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class a implements Interceptor {

    private final Map f20824a;

    public a(Map hostMap) {
        Intrinsics.h(hostMap, "hostMap");
        this.f20824a = hostMap;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Intrinsics.h(chain, "chain");
        try {
            Response responseProceed = chain.proceed(chain.request());
            Intrinsics.g(responseProceed, "proceed(...)");
            return responseProceed;
        } catch (Exception e10) {
            HttpUrl httpUrlUrl = chain.request().url();
            String str = (String) this.f20824a.get(httpUrlUrl.host());
            if (str == null || !(e10 instanceof UnknownHostException)) {
                throw e10;
            }
            Request requestBuild = chain.request().newBuilder().url(httpUrlUrl.newBuilder().host(str).build()).build();
            c.netLog("request downgrade, domain failed, failed url is:" + chain.request().url());
            h hVar = h.f66466a;
            Intrinsics.e(requestBuild);
            hVar.a(chain, requestBuild, 1005);
            Response responseProceed2 = chain.proceed(requestBuild);
            Intrinsics.g(responseProceed2, "proceed(...)");
            return responseProceed2;
        }
    }
}
