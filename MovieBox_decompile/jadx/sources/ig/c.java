package ig;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.tn.lib.net.dns.or.CacheIpPool;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class c implements Interceptor {

    public static final a f62087b = new a(null);

    private final Lazy f62088a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.b();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final Handler b() {
        return new Handler(Looper.getMainLooper());
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.h(chain, "chain");
        Request request = chain.request();
        HttpUrl.Builder builderNewBuilder = request.url().newBuilder();
        String strHost = request.url().host();
        CacheIpPool cacheIpPool = CacheIpPool.f39857a;
        if (TextUtils.equals(strHost, cacheIpPool.l()) && TextUtils.equals(request.url().scheme(), cacheIpPool.m())) {
            builderNewBuilder.removeAllQueryParameters("host");
        } else {
            builderNewBuilder.scheme(cacheIpPool.m()).host(cacheIpPool.l()).removeAllQueryParameters("host");
        }
        Request requestBuild = request.newBuilder().url(builderNewBuilder.build()).build();
        Response responseProceed = chain.proceed(requestBuild);
        wf.a.f74274a.p("HttpTag", new String[]{"DynamicHostInterceptor response " + responseProceed.code() + " : " + requestBuild.url() + " protocol: " + responseProceed.protocol() + " "}, true);
        return responseProceed;
    }
}
