package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.appconfig.PlayerSpeedConfigBean;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.factory.AbsAPIFactoryImpl;
import com.transsion.retrofit.factory.BaseAPIManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;
import java.util.logging.Level;
import java.util.stream.Collectors;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class mb8 extends BaseAPIManager {
    public static float a = 4.0f;
    public static float b = 0.25f;
    public static ArrayList c = new ArrayList(Arrays.asList(Float.valueOf(3.0f), Float.valueOf(2.0f), Float.valueOf(1.5f), Float.valueOf(1.25f)));

    public class a extends AbsAPIFactoryImpl {
        public a() {
        }

        @Override
        public String getBaseUrl() {
            return mb8.this.createBaseUrl();
        }

        @Override
        public Interceptor getInterceptor() {
            return mb8.this.createInterceptor();
        }

        @Override
        public Interceptor getLoggerInterceptor() {
            return mb8.this.createLogInterceptor();
        }

        @Override
        public Object makeApiClient(Class cls) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            Interceptor interceptor = getInterceptor();
            if (interceptor != null) {
                builder.addInterceptor(interceptor);
            }
            Interceptor loggerInterceptor = getLoggerInterceptor();
            if (loggerInterceptor != null) {
                builder.addInterceptor(loggerInterceptor);
            }
            TimeUnit timeUnit = TimeUnit.SECONDS;
            builder.connectTimeout(5L, timeUnit);
            builder.readTimeout(10L, timeUnit);
            builder.writeTimeout(10L, timeUnit);
            wt4.c cVarB = wt4.b();
            builder.sslSocketFactory(cVarB.a, cVarB.b);
            builder.hostnameVerifier(wt4.b);
            return new ru8.b().g(builder.build()).c(getBaseUrl()).a(xw8.a()).b(ak4.b(fi1.a())).e().b(cls);
        }
    }

    public class b implements Interceptor {
        public b() {
        }

        @Override
        public Response intercept(Interceptor.Chain chain) {
            Request.Builder builderNewBuilder = chain.request().newBuilder();
            builderNewBuilder.addHeader("versionCode", String.valueOf(ydc.a())).addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy");
            return chain.proceed(builderNewBuilder.build());
        }
    }

    public static final class c {
        public static final mb8 a = new mb8();
    }

    public mb8() {
        this.apiFactory = new a();
    }

    public static mb8 c() {
        return c.a;
    }

    public static boolean e(Float f) {
        return f.floatValue() >= b && f.floatValue() <= a;
    }

    public List b() {
        return c;
    }

    @Override
    public String createBaseUrl() {
        return (ge.e() && w6c.d(se.a(), "environment_mode", 0) == 0) ? "https://test-visha.transsion-os.com" : "https://api.vishavideo.com";
    }

    @Override
    public Interceptor createInterceptor() {
        return new b();
    }

    @Override
    public Interceptor createLogInterceptor() {
        if (!ge.e()) {
            return null;
        }
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor("visha_api");
        httpLoggingInterceptor.setPrintLevel(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.setColorLevel(Level.INFO);
        return httpLoggingInterceptor;
    }

    public boolean d() {
        return c.contains(Float.valueOf(2.0f));
    }

    public final void f(PlayerSpeedConfigBean playerSpeedConfigBean) {
        if (playerSpeedConfigBean == null) {
            return;
        }
        try {
            a = playerSpeedConfigBean.enable_max_speed;
            b = playerSpeedConfigBean.enable_min_speed;
            c = (ArrayList) c.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return mb8.e((Float) obj);
                }
            }).collect(Collectors.toList());
            Log.d("visha_PlayerSpeedConfigManager", "sGestureSpeedList = " + Arrays.asList(c));
        } catch (Exception e) {
            LogUtils.m("visha_PlayerSpeedConfigManager", "packageDisableSpeedList " + e);
        }
    }

    public void g(PlayerSpeedConfigBean playerSpeedConfigBean) throws Throwable {
        if (playerSpeedConfigBean == null) {
            String cache = CacheManager.getInstance().getCache("cache_player_speed_config");
            if (TextUtils.isEmpty(cache)) {
                return;
            }
            f((PlayerSpeedConfigBean) fi1.b(cache, PlayerSpeedConfigBean.class));
            return;
        }
        LogUtils.N("visha_PlayerSpeedConfigManager", "playerSpeedConfig:" + playerSpeedConfigBean);
        f(playerSpeedConfigBean);
        CacheManager.getInstance().lambda$setCache$0("cache_player_speed_config", fi1.e(playerSpeedConfigBean));
    }
}
