package defpackage;

import android.util.Log;
import com.transsion.dbdata.beans.appconfig.FormatCopyrightBeans;
import com.transsion.retrofit.factory.AbsAPIFactoryImpl;
import com.transsion.retrofit.factory.BaseAPIManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.logging.Level;
import java.util.stream.Collectors;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class i44 extends BaseAPIManager {
    public static List a = new ArrayList();
    public static final HashMap b = new HashMap();

    public class a extends AbsAPIFactoryImpl {
        public a() {
        }

        @Override
        public String getBaseUrl() {
            return i44.this.createBaseUrl();
        }

        @Override
        public Interceptor getInterceptor() {
            return i44.this.createInterceptor();
        }

        @Override
        public Interceptor getLoggerInterceptor() {
            return i44.this.createLogInterceptor();
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
        public static final i44 a = new i44();
    }

    public static i44 d() {
        return b.a;
    }

    public static Response e(Interceptor.Chain chain) {
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        builderNewBuilder.addHeader("versionCode", String.valueOf(ydc.a()));
        builderNewBuilder.addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy");
        return chain.proceed(builderNewBuilder.build());
    }

    public static void f(List list, FormatCopyrightBeans formatCopyrightBeans) {
        list.add(formatCopyrightBeans.encodingFormat);
    }

    public HashMap c() {
        return b;
    }

    @Override
    public String createBaseUrl() {
        return (ge.e() && w6c.d(se.a(), "environment_mode", 0) == 0) ? "https://test-visha.transsion-os.com" : "https://api.vishavideo.com";
    }

    @Override
    public Interceptor createInterceptor() {
        return new Interceptor() {
            @Override
            public final Response intercept(Interceptor.Chain chain) {
                return i44.e(chain);
            }
        };
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

    public void g(List list) {
        if (list != null) {
            final ArrayList arrayList = new ArrayList();
            a = list;
            list.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    i44.f(arrayList, (FormatCopyrightBeans) obj);
                }
            });
            HashMap map = b;
            map.clear();
            String str = (String) arrayList.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((String) obj).toString();
                }
            }).collect(Collectors.joining(StringUtils.COMMA));
            map.put("codec-is-copyright", str);
            Log.e("FormatCopyrightManager", "parseEncodingFormat " + str);
        }
    }

    public i44() {
        this.apiFactory = new a();
    }
}
