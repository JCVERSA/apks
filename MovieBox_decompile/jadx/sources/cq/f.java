package cq;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.net.interceptor.HttpLoggingInterceptor;
import com.transsion.search.net.GoogleSuggestConfig;
import java.net.Proxy;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import retrofit2.k0;

public final class f {

    public static final f f58643a = new f();

    private static final Lazy f58644b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.j();
        }
    });

    private static final Lazy f58645c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.k();
        }
    });

    private static final Lazy f58646d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.d();
        }
    });

    private f() {
    }

    public static final a d() {
        return (a) f58643a.h().b(a.class);
    }

    private final a e() {
        Object value = f58646d.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (a) value;
    }

    private final OkHttpClient g() {
        return (OkHttpClient) f58644b.getValue();
    }

    private final k0 h() {
        Object value = f58645c.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (k0) value;
    }

    private final OkHttpClient i() {
        ag.a.C0003a c0003a = ag.a.f344a;
        Proxy proxy = c0003a.c() ? null : Proxy.NO_PROXY;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        SSLSocketFactory sSLSocketFactoryA = lg.a.a();
        Intrinsics.g(sSLSocketFactoryA, "createSSLSocketFactory(...)");
        builder.sslSocketFactory(sSLSocketFactoryA, new lg.a()).hostnameVerifier(new lg.a.C0806a());
        OkHttpClient.Builder builderProxy = builder.proxy(proxy);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderProxy.connectTimeout(40L, timeUnit).writeTimeout(20L, timeUnit).readTimeout(20L, timeUnit).callTimeout(40L, timeUnit);
        if (c0003a.c()) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new com.tn.lib.net.interceptor.a());
            httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
            builder.addInterceptor(httpLoggingInterceptor);
        }
        return builder.build();
    }

    public static final OkHttpClient j() {
        return f58643a.i();
    }

    public static final k0 k() {
        return new k0.b().c("https://www.google.com/").g(f58643a.g()).b(fg.a.f()).a(j00.g.d()).e();
    }

    public final io.reactivex.rxjava3.core.j f(String keyword) {
        Intrinsics.h(keyword, "keyword");
        h hVar = h.f58647a;
        GoogleSuggestConfig googleSuggestConfigC = hVar.c();
        Map mapC = MapsKt.c();
        Map<String, String> queryParams = googleSuggestConfigC.getQueryParams();
        if (queryParams != null && !queryParams.isEmpty()) {
            mapC.putAll(googleSuggestConfigC.getQueryParams());
        }
        Map<String, String> queryParams2 = googleSuggestConfigC.getQueryParams();
        if (queryParams2 != null && queryParams2.containsKey("hl")) {
            mapC.put("hl", hVar.a());
        }
        mapC.put(CampaignEx.JSON_KEY_AD_Q, keyword);
        Map<String, String> mapB = MapsKt.b(mapC);
        Map<String, String> headers = googleSuggestConfigC.getHeaders();
        if (headers == null) {
            headers = MapsKt.h();
        }
        return e().a(headers, mapB);
    }
}
