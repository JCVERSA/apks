package com.transsion.retrofit.factory;

import com.google.gson.GsonBuilder;
import com.transsion.retrofit.cache.CacheCallFactory;
import defpackage.ak4;
import defpackage.ru8;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

public abstract class AbsAPIFactoryImpl extends AbsAPIFactory {
    public abstract String getBaseUrl();

    public Interceptor getGslbInterceptor() {
        return null;
    }

    public abstract Interceptor getInterceptor();

    public abstract Interceptor getLoggerInterceptor();

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
        Interceptor gslbInterceptor = getGslbInterceptor();
        if (gslbInterceptor != null) {
            builder.addInterceptor(gslbInterceptor);
        }
        builder.connectTimeout(5L, TimeUnit.SECONDS);
        return (T) new ru8.b().g(builder.build()).c(getBaseUrl()).a(new CacheCallFactory()).b(ak4.b(new GsonBuilder().setLenient().create())).e().b(cls);
    }
}
