package com.transsnet.downloader.core;

import com.blankj.utilcode.util.o;
import com.tn.lib.net.cons.PrefetchDnsUrls;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;

public final class b {

    public static final a f56405c = new a(null);

    private static final Lazy f56406d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.d();
        }
    });

    private volatile OkHttpClient f56407a;

    private List f56408b = CollectionsKt.q("vcdn.hakunaymatata.com", "v2cdn.hakunaymatata.com");

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f56406d.getValue();
        }

        private a() {
        }
    }

    public b() {
        PrefetchDnsUrls prefetchDnsUrls;
        ConfigBean configBeanC = cm.f.f17019c.a().c("prefetch_dns_hosts", false);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value != null) {
            try {
                if (value.length() <= 0 || (prefetchDnsUrls = (PrefetchDnsUrls) o.d(value, PrefetchDnsUrls.class)) == null || prefetchDnsUrls.getHosts().isEmpty()) {
                    return;
                }
                this.f56408b.clear();
                this.f56408b.addAll(prefetchDnsUrls.getHosts());
            } catch (Throwable unused) {
            }
        }
    }

    public static final b d() {
        return new b();
    }

    private final OkHttpClient e() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        SSLSocketFactory sSLSocketFactoryA = lg.a.a();
        Intrinsics.g(sSLSocketFactoryA, "createSSLSocketFactory(...)");
        OkHttpClient.Builder builderHostnameVerifier = builder.sslSocketFactory(sSLSocketFactoryA, new lg.a()).hostnameVerifier(new lg.a.C0806a());
        TimeUnit timeUnit = TimeUnit.MINUTES;
        OkHttpClient.Builder timeout = builderHostnameVerifier.connectionPool(new ConnectionPool(16, 5L, timeUnit)).connectTimeout(1L, timeUnit).retryOnConnectionFailure(true).writeTimeout(1L, timeUnit).readTimeout(1L, timeUnit);
        List<? extends Protocol> listSingletonList = Collections.singletonList(Protocol.HTTP_1_1);
        Intrinsics.g(listSingletonList, "singletonList(...)");
        return timeout.protocols(listSingletonList).build();
    }

    public final OkHttpClient c() {
        OkHttpClient okHttpClientE = this.f56407a;
        if (okHttpClientE == null) {
            synchronized (this) {
                okHttpClientE = this.f56407a;
                if (okHttpClientE == null) {
                    okHttpClientE = e();
                    this.f56407a = okHttpClientE;
                }
            }
        }
        return okHttpClientE;
    }
}
