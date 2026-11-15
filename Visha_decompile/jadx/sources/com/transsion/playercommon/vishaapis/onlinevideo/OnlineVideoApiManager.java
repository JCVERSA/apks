package com.transsion.playercommon.vishaapis.onlinevideo;

import com.blankj.utilcode.util.Utils;
import com.transsion.playercommon.vishaapis.APIReqParamInterceptor;
import com.transsion.playercommon.vishaapis.cloud.RegionHostCacheInterceptor;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.playercommon.vishaapis.onlinevideo.tiktok.TiktokHeaderInterceptor;
import com.transsion.retrofit.factory.AbsAPIFactoryImpl;
import com.transsion.retrofit.factory.BaseAPIManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import defpackage.ak4;
import defpackage.fi1;
import defpackage.ge;
import defpackage.ru8;
import defpackage.w6c;
import defpackage.xw8;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

public class OnlineVideoApiManager extends BaseAPIManager {
    public static final String TAG = "online_video_api";

    public static final class InstanceHolder {
        private static final OnlineVideoApiManager INSTANCE = new OnlineVideoApiManager();

        private InstanceHolder() {
        }
    }

    public static OnlineVideoApiManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String createBaseUrl() {
        return (!ge.e() || w6c.d(Utils.a(), "environment_mode", 0) == 1) ? "https://api.vishavideo.com" : "https://test-visha.transsion-os.com";
    }

    @Override
    public Interceptor createGslbInterceptor() {
        return new GslbInterceptor();
    }

    @Override
    public Interceptor createInterceptor() {
        return new APIReqParamInterceptor();
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

    private OnlineVideoApiManager() {
        this.apiFactory = new AbsAPIFactoryImpl() {
            @Override
            public String getBaseUrl() {
                return OnlineVideoApiManager.this.createBaseUrl();
            }

            @Override
            public Interceptor getGslbInterceptor() {
                return OnlineVideoApiManager.this.createGslbInterceptor();
            }

            @Override
            public Interceptor getInterceptor() {
                return OnlineVideoApiManager.this.createInterceptor();
            }

            @Override
            public Interceptor getLoggerInterceptor() {
                return OnlineVideoApiManager.this.createLogInterceptor();
            }

            @Override
            public <T> T makeApiClient(Class<T> cls) {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                Interceptor interceptor = getInterceptor();
                if (interceptor != null) {
                    builder.addInterceptor(interceptor);
                }
                builder.addInterceptor(new TiktokHeaderInterceptor());
                Interceptor loggerInterceptor = getLoggerInterceptor();
                if (loggerInterceptor != null) {
                    builder.addInterceptor(loggerInterceptor);
                }
                builder.addInterceptor(new RegionHostCacheInterceptor());
                Interceptor gslbInterceptor = getGslbInterceptor();
                if (gslbInterceptor != null) {
                    builder.addInterceptor(gslbInterceptor);
                }
                builder.connectTimeout(5L, TimeUnit.SECONDS);
                return (T) new ru8.b().g(builder.build()).c(getBaseUrl()).a(xw8.a()).b(ak4.b(fi1.a())).e().b(cls);
            }
        };
    }
}
