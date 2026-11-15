package com.transsion.playercommon.vishaapis.opensubtitle;

import com.blankj.utilcode.util.Utils;
import com.transsion.playercommon.vishaapis.APIServiceConfig;
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

public class SubTitleServiceManager extends BaseAPIManager {

    public static final class InstanceHolder {
        private static final SubTitleServiceManager INSTANCE = new SubTitleServiceManager();

        private InstanceHolder() {
        }
    }

    public static SubTitleServiceManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String createBaseUrl() {
        return (!ge.e() || w6c.d(Utils.a(), "environment_mode", 0) == 1) ? APIServiceConfig.SUBTITLE_BASE_HOST_ONLINE : APIServiceConfig.SUBTITLE_BASE_HOST_TEST;
    }

    @Override
    public Interceptor createInterceptor() {
        return new SubTitleInterceptor();
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

    private SubTitleServiceManager() {
        this.apiFactory = new AbsAPIFactoryImpl() {
            @Override
            public String getBaseUrl() {
                return SubTitleServiceManager.this.createBaseUrl();
            }

            @Override
            public Interceptor getInterceptor() {
                return SubTitleServiceManager.this.createInterceptor();
            }

            @Override
            public Interceptor getLoggerInterceptor() {
                return SubTitleServiceManager.this.createLogInterceptor();
            }

            @Override
            public <T> T makeApiClient(Class<T> cls) {
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
                builder.connectTimeout(30L, timeUnit);
                builder.readTimeout(90L, timeUnit);
                builder.writeTimeout(30L, timeUnit);
                builder.retryOnConnectionFailure(false);
                return (T) new ru8.b().g(builder.build()).c(getBaseUrl()).a(xw8.a()).b(ak4.b(fi1.a())).e().b(cls);
            }
        };
    }
}
