package kg;

import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.tn.lib.net.interceptor.HttpLoggingInterceptor;
import com.transsion.api.gateway.interceptor.GatewayInterceptor;
import ig.e;
import j00.g;
import java.net.Proxy;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;
import retrofit2.k0;

public final class c {

    public static final a f63982e = new a(null);

    private static final Lazy f63983f = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return c.i();
        }
    });

    private static final String f63984g = "one_room_net_thread";

    private OkHttpClient f63986b;

    private k0 f63987c;

    private final String f63985a = "NetServiceGenerator";

    private final AtomicInteger f63988d = new AtomicInteger(1);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return (c) c.f63983f.getValue();
        }

        private a() {
        }
    }

    public c() {
        CacheIpPool.f39857a.h();
        this.f63986b = j();
        k0.b bVarC = new k0.b().c(gg.a.f61067a.a());
        OkHttpClient okHttpClient = this.f63986b;
        Intrinsics.e(okHttpClient);
        this.f63987c = bVarC.g(okHttpClient).b(fg.a.f()).a(g.e(ey.a.a(Executors.newFixedThreadPool(6, new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return c.c(this.f63981a, runnable);
            }
        })))).e();
    }

    public static final Thread c(c cVar, Runnable runnable) {
        Thread thread = new Thread(runnable, f63984g + "-" + cVar.f63988d.incrementAndGet());
        thread.setPriority(10);
        return thread;
    }

    private final Object e(Class cls) {
        return new k0.b().e().b(cls);
    }

    private final Interceptor f() {
        try {
            CronetEngine.Builder builder = new CronetEngine.Builder(Utils.a());
            builder.enableQuic(true).enableBrotli(true).addQuicHint("api3.aoneroom.com", 443, 443).addQuicHint("api4.aoneroom.com", 443, 443).addQuicHint("api4sg.aoneroom.com", 443, 443).addQuicHint("api5.aoneroom.com", 443, 443).addQuicHint("api6.aoneroom.com", 443, 443).addQuicHint(" api7.aoneroom.com ", 443, 443).addQuicHint(" api8.aoneroom.com", 443, 443).addQuicHint("api6sg.aoneroom.com", 443, 443).addQuicHint("api.inmoviebox.com", 443, 443).addQuicHint("test-mse-api.aoneroom.com", 443, 443);
            CronetEngine cronetEngineBuild = builder.build();
            Intrinsics.g(cronetEngineBuild, "build(...)");
            return (Interceptor) com.google.net.cronet.okhttptransport.a.j(cronetEngineBuild).a();
        } catch (Throwable th2) {
            Log.e("error", "e " + th2.getMessage());
            return null;
        }
    }

    public static final c i() {
        return new c();
    }

    private final OkHttpClient j() {
        Proxy proxy = ag.a.f344a.c() ? null : Proxy.NO_PROXY;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        SSLSocketFactory sSLSocketFactoryA = lg.a.a();
        Intrinsics.g(sSLSocketFactoryA, "createSSLSocketFactory(...)");
        builder.sslSocketFactory(sSLSocketFactoryA, new lg.a()).hostnameVerifier(new lg.a.C0806a());
        OkHttpClient.Builder builderProxy = builder.proxy(proxy);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderProxy.connectTimeout(40L, timeUnit).writeTimeout(20L, timeUnit).readTimeout(20L, timeUnit).callTimeout(40L, timeUnit).addInterceptor(jg.a.f63118a.a()).addInterceptor(new ig.c()).addInterceptor(new GatewayInterceptor()).addInterceptor(new ig.a());
        Iterator it = e.f62089a.b().iterator();
        while (it.hasNext()) {
            builder.addInterceptor((Interceptor) it.next());
        }
        if (ag.a.f344a.c()) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new com.tn.lib.net.interceptor.a());
            httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
            builder.addInterceptor(httpLoggingInterceptor);
        }
        Interceptor interceptorF = f();
        if (interceptorF != null) {
            builder.addInterceptor(interceptorF);
        }
        return builder.build();
    }

    private final void k() {
        bg.a aVar = bg.a.f15796a;
        aVar.a(0);
        aVar.b(0L);
    }

    public final OkHttpClient g() {
        return this.f63986b;
    }

    public final Object h(Class service) {
        Object objE;
        Intrinsics.h(service, "service");
        k0 k0Var = this.f63987c;
        if (k0Var == null || (objE = k0Var.b(service)) == null) {
            objE = e(service);
        }
        try {
            k();
            return objE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return objE;
        }
    }
}
