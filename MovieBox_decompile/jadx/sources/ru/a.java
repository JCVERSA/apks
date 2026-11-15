package ru;

import android.util.Log;
import com.transsion.gslb.GslbSdk;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class a implements Interceptor {
    @Override
    public final Response intercept(Interceptor.Chain chain) {
        Response responseProceed;
        Intrinsics.h(chain, "chain");
        try {
            Request request = chain.request();
            String url = request.url().getUrl();
            Intrinsics.g(url, "toString(...)");
            qu.c.f70252d.a();
            Intrinsics.h(url, "url");
            if (GslbSdk.isInitSuccess(url)) {
                url = GslbSdk.getDomain(url, true);
                Intrinsics.e(url);
            }
            String msg = "replace gslb: " + url;
            Intrinsics.h("DomainChangeInterceptor", "tag");
            Intrinsics.h(msg, "msg");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!tu.g.f72839a && jCurrentTimeMillis - tu.g.f72840b >= 5000) {
                tu.g.f72840b = jCurrentTimeMillis;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    tu.g.f72839a = true;
                }
                boolean z10 = tu.g.f72839a;
            }
            boolean z11 = qu.f.f70259o.a().f70264d;
            Request.Builder builderUrl = request.newBuilder().url(url);
            Intrinsics.g(builderUrl, "url(...)");
            responseProceed = chain.withConnectTimeout(30, TimeUnit.SECONDS).proceed(builderUrl.build());
        } catch (Exception e10) {
            String msg2 = "error1: " + e10;
            Intrinsics.h("DomainChangeInterceptor", "tag");
            Intrinsics.h(msg2, "msg");
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (!tu.g.f72839a && jCurrentTimeMillis2 - tu.g.f72840b >= 5000) {
                tu.g.f72840b = jCurrentTimeMillis2;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    tu.g.f72839a = true;
                }
                boolean z12 = tu.g.f72839a;
            }
            boolean z13 = qu.f.f70259o.a().f70264d;
            try {
                responseProceed = chain.proceed(chain.request());
            } catch (Exception unused) {
                responseProceed = null;
            }
        }
        if (responseProceed == null) {
            responseProceed = new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(400).message("Internal Error").body(ResponseBody.create((MediaType) null, "The requested resource was not found.")).build();
        }
        Intrinsics.e(responseProceed);
        return responseProceed;
    }
}
