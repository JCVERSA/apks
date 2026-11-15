package wh;

import com.tn.lib.net.interceptor.HttpLoggingInterceptor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import okhttp3.OkHttpClient;

public final class b {

    public static final b f74279a = new b();

    private static final HttpLoggingInterceptor f74280b;

    private static final Lazy f74281c;

    static {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
        httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
        f74280b = httpLoggingInterceptor;
        f74281c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.b();
            }
        });
    }

    private b() {
    }

    public static final OkHttpClient b() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.connectTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).readTimeout(30L, timeUnit).cache(null).addInterceptor(f74280b).build();
    }

    private final OkHttpClient c() {
        return (OkHttpClient) f74281c.getValue();
    }

    public final OkHttpClient d() {
        return c();
    }
}
