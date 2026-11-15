package com.transsion.playercommon.vishaapis.aistatistics;

import android.content.Context;
import com.transsion.playercommon.vishaapis.onlinevideo.MarkInterceptor;
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

public class AIStatisticsApiManager extends BaseAPIManager {
    public static final String TAG = "online_video_api";
    public static volatile int index = 1;
    private static Context mContext;

    public static final class InstanceHolder {
        private static final AIStatisticsApiManager INSTANCE = new AIStatisticsApiManager();

        private InstanceHolder() {
        }
    }

    public static AIStatisticsApiManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    public static void setContext(Context context) {
        mContext = context;
    }

    @Override
    public String createBaseUrl() {
        return (!ge.e() || w6c.d(mContext, "environment_mode", 0) == 1) ? "https://api.vishavideo.com" : "https://test-visha.transsion-os.com";
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

    private AIStatisticsApiManager() {
        this.apiFactory = new AbsAPIFactoryImpl() {
            @Override
            public String getBaseUrl() {
                return AIStatisticsApiManager.this.createBaseUrl();
            }

            @Override
            public Interceptor getInterceptor() {
                return AIStatisticsApiManager.this.createInterceptor();
            }

            @Override
            public Interceptor getLoggerInterceptor() {
                return AIStatisticsApiManager.this.createLogInterceptor();
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
                builder.addInterceptor(new MarkInterceptor());
                builder.connectTimeout(5L, TimeUnit.SECONDS);
                return (T) new ru8.b().g(builder.build()).c(getBaseUrl()).a(xw8.a()).b(ak4.b(fi1.a())).e().b(cls);
            }
        };
    }
}
