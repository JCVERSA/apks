package com.transsion.playercommon.vishaapis.appconfig;

import com.transsion.playercommon.core.MainApp;
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

public class AppControlManager extends BaseAPIManager {
    public static final String TAG = "visha_control";

    public static final class InstanceHolder {
        private static final AppControlManager INSTANCE = new AppControlManager();

        private InstanceHolder() {
        }
    }

    public static AppControlManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String createBaseUrl() {
        return (!ge.e() || w6c.d(MainApp.f(), "environment_mode", 0) == 1) ? "https://api.vishavideo.com" : "https://test-visha.transsion-os.com";
    }

    @Override
    public Interceptor createInterceptor() {
        return new RequestParamInterceptor();
    }

    @Override
    public Interceptor createLogInterceptor() {
        if (!ge.e()) {
            return null;
        }
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(TAG);
        httpLoggingInterceptor.setPrintLevel(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.setColorLevel(Level.INFO);
        return httpLoggingInterceptor;
    }

    private AppControlManager() {
        this.apiFactory = new AbsAPIFactoryImpl() {
            @Override
            public String getBaseUrl() {
                return AppControlManager.this.createBaseUrl();
            }

            @Override
            public Interceptor getInterceptor() {
                return AppControlManager.this.createInterceptor();
            }

            @Override
            public Interceptor getLoggerInterceptor() {
                return AppControlManager.this.createLogInterceptor();
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
                builder.connectTimeout(5L, TimeUnit.SECONDS);
                return (T) new ru8.b().g(builder.build()).c(getBaseUrl()).a(xw8.a()).b(ak4.b(fi1.a())).e().b(cls);
            }
        };
    }
}
