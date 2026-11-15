package hv;

import com.tn.lib.net.dns.or.CacheIpPool;
import com.tn.lib.net.interceptor.HttpLoggingInterceptor;
import ig.e;
import j00.g;
import java.net.Proxy;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import retrofit2.k0;

public final class b {

    public static final a f61496c = new a(null);

    private static final Lazy f61497d = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return b.f();
        }
    });

    private OkHttpClient f61498a;

    private k0 f61499b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f61497d.getValue();
        }

        private a() {
        }
    }

    public b() {
        CacheIpPool.f39857a.h();
        this.f61498a = g();
        k0.b bVarC = new k0.b().c(d());
        OkHttpClient okHttpClient = this.f61498a;
        Intrinsics.e(okHttpClient);
        this.f61499b = bVarC.g(okHttpClient).b(fg.a.f()).a(g.e(ey.a.a(com.tn.lib.thread.c.f39902f.a(6).b("one_room_net_thread").c(10).a()))).e();
    }

    private final Object c(Class cls) {
        return new k0.b().e().b(cls);
    }

    private final String d() {
        return ag.a.f344a.d() ? "https://test.paynicorn.com" : "https://api.paynicorn.com";
    }

    public static final b f() {
        return new b();
    }

    private final OkHttpClient g() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new com.tn.lib.net.interceptor.a());
        httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
        Proxy proxy = ag.a.f344a.c() ? null : Proxy.NO_PROXY;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        SSLSocketFactory sSLSocketFactoryA = lg.a.a();
        Intrinsics.g(sSLSocketFactoryA, "createSSLSocketFactory(...)");
        builder.sslSocketFactory(sSLSocketFactoryA, new lg.a()).hostnameVerifier(new lg.a.C0806a());
        OkHttpClient.Builder builderProxy = builder.proxy(proxy);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderProxy.connectTimeout(40L, timeUnit).writeTimeout(20L, timeUnit).readTimeout(20L, timeUnit).addInterceptor(jg.a.f63118a.a()).addInterceptor(new ig.a());
        Iterator it = e.f62089a.b().iterator();
        while (it.hasNext()) {
            builder.addInterceptor((Interceptor) it.next());
        }
        return builder.addInterceptor(httpLoggingInterceptor).build();
    }

    private final void h() {
        bg.a aVar = bg.a.f15796a;
        aVar.a(0);
        aVar.b(0L);
    }

    public final Object e(Class service) {
        Object objC;
        Intrinsics.h(service, "service");
        k0 k0Var = this.f61499b;
        if (k0Var == null || (objC = k0Var.b(service)) == null) {
            objC = c(service);
        }
        try {
            h();
            return objC;
        } catch (Exception e10) {
            e10.printStackTrace();
            return objC;
        }
    }
}
