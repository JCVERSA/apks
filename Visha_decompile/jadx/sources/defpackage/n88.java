package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.appconfig.BspPlayerConfigBean;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.factory.AbsAPIFactoryImpl;
import com.transsion.retrofit.factory.BaseAPIManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

public class n88 extends BaseAPIManager {

    public class a extends AbsAPIFactoryImpl {
        public a() {
        }

        @Override
        public String getBaseUrl() {
            return n88.this.createBaseUrl();
        }

        @Override
        public Interceptor getInterceptor() {
            return n88.this.createInterceptor();
        }

        @Override
        public Interceptor getLoggerInterceptor() {
            return n88.this.createLogInterceptor();
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
            builder.connectTimeout(5L, TimeUnit.SECONDS);
            return new ru8.b().g(builder.build()).c(getBaseUrl()).a(xw8.a()).b(ak4.b(fi1.a())).e().b(cls);
        }
    }

    public static final class b {
        public static final n88 a = new n88();
    }

    public static n88 b() {
        return b.a;
    }

    public final void a(BspPlayerConfigBean bspPlayerConfigBean) {
        boolean zIsEmpty;
        if (bspPlayerConfigBean == null || TextUtils.isEmpty(bspPlayerConfigBean.chipPlatform)) {
            zIsEmpty = false;
        } else {
            zIsEmpty = TextUtils.isEmpty(bspPlayerConfigBean.modelList);
            if (!zIsEmpty && bspPlayerConfigBean.modelList != null) {
                zIsEmpty = new ArrayList(Arrays.asList(bspPlayerConfigBean.modelList.split(StringUtils.COMMA))).contains(ga2.a());
            }
        }
        pp3.z(zIsEmpty);
        Log.d("visha_PlayerControlApiManager", "checkBspPlayerControl isSupportBspPlayerConfig:" + zIsEmpty);
    }

    public void c() throws Throwable {
        String cache = CacheManager.getInstance().getCache("cache_bsp_player_config");
        Log.d("visha_PlayerControlApiManager", "loadBspPlayerConfig cache:" + cache);
        if (TextUtils.isEmpty(cache)) {
            return;
        }
        a((BspPlayerConfigBean) fi1.d(cache, BspPlayerConfigBean.class));
    }

    @Override
    public String createBaseUrl() {
        return (!ge.e() || w6c.d(Utils.a(), "environment_mode", 0) == 1) ? "https://api.vishavideo.com" : "https://test-visha.transsion-os.com";
    }

    @Override
    public Interceptor createInterceptor() {
        return new j88();
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

    public void d(BspPlayerConfigBean bspPlayerConfigBean) {
        if (bspPlayerConfigBean != null) {
            a(bspPlayerConfigBean);
            CacheManager.getInstance().lambda$setCache$0("cache_bsp_player_config", fi1.e(bspPlayerConfigBean));
        }
    }

    public n88() {
        this.apiFactory = new a();
    }
}
