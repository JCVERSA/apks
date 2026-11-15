package com.transsion.playercommon.vishaapis.smartedit;

import com.transsion.playercommon.vishaapis.aistatistics.AiStatisticsInterceptor;
import com.transsion.retrofit.factory.AbsAPIFactoryImpl;
import com.transsion.retrofit.factory.BaseAPIManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import defpackage.ak4;
import defpackage.fi1;
import defpackage.ge;
import defpackage.ru8;
import defpackage.xw8;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

public class AudioSmartEditApiManager extends BaseAPIManager {

    public static final class InstanceHolder {
        private static final AudioSmartEditApiManager INSTANCE = new AudioSmartEditApiManager();

        private InstanceHolder() {
        }
    }

    public static AudioSmartEditApiManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String createBaseUrl() {
        return AudioSmartEditApiConfig.MUSICBRAINZ_HOST;
    }

    @Override
    public Interceptor createInterceptor() {
        return new AiStatisticsInterceptor();
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

    private AudioSmartEditApiManager() {
        this.apiFactory = new AbsAPIFactoryImpl() {
            @Override
            public String getBaseUrl() {
                return AudioSmartEditApiManager.this.createBaseUrl();
            }

            @Override
            public Interceptor getInterceptor() {
                return AudioSmartEditApiManager.this.createInterceptor();
            }

            @Override
            public Interceptor getLoggerInterceptor() {
                return AudioSmartEditApiManager.this.createLogInterceptor();
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
                builder.addInterceptor(AudioSmartEditApiManager.this.createInterceptor());
                TimeUnit timeUnit = TimeUnit.SECONDS;
                builder.connectTimeout(30L, timeUnit);
                builder.readTimeout(30L, timeUnit);
                builder.writeTimeout(30L, timeUnit);
                builder.retryOnConnectionFailure(false);
                return (T) new ru8.b().g(builder.build()).c(getBaseUrl()).a(xw8.a()).b(ak4.b(fi1.a())).e().b(cls);
            }
        };
    }
}
