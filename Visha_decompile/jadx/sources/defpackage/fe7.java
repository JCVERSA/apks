package defpackage;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.blankj.utilcode.util.Utils;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.interceptor.HttpLoggingInterceptor;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.HttpParams;
import com.lzy.okgo.request.GetRequest;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.Call;
import okhttp3.OkHttpClient;

public class fe7 {
    public static long i = 300;
    public Application a;
    public Handler b;
    public OkHttpClient c;
    public HttpParams d;
    public HttpHeaders e;
    public int f;
    public CacheMode g;
    public long h;

    public static class b {
        public static fe7 a = new fe7();
    }

    public static GetRequest b(String str) {
        return new GetRequest(str);
    }

    public static fe7 i() {
        return b.a;
    }

    public void a(Object obj) {
        if (obj == null) {
            return;
        }
        for (Call call : j().dispatcher().queuedCalls()) {
            if (obj.equals(call.request().tag())) {
                call.cancel();
            }
        }
        for (Call call2 : j().dispatcher().runningCalls()) {
            if (obj.equals(call2.request().tag())) {
                call2.cancel();
            }
        }
    }

    public CacheMode c() {
        return this.g;
    }

    public long d() {
        return this.h;
    }

    public HttpHeaders e() {
        return this.e;
    }

    public HttpParams f() {
        return this.d;
    }

    public Context g() {
        Application application = this.a;
        if (application != null) {
            return application;
        }
        Application applicationA = Utils.a();
        this.a = applicationA;
        return applicationA;
    }

    public Handler h() {
        return this.b;
    }

    public OkHttpClient j() {
        ut4.b(this.c, "please call OkGo.getInstance().setOkHttpClient() first in application!");
        return this.c;
    }

    public int k() {
        return this.f;
    }

    public fe7 l(Application application) {
        this.a = application;
        return this;
    }

    public fe7 m(CacheMode cacheMode) {
        this.g = cacheMode;
        return this;
    }

    public fe7 n(long j) {
        if (j <= -1) {
            j = -1;
        }
        this.h = j;
        return this;
    }

    public fe7 o(OkHttpClient okHttpClient) {
        ut4.b(okHttpClient, "okHttpClient == null");
        this.c = okHttpClient;
        return this;
    }

    public fe7 p(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("retryCount must > 0");
        }
        this.f = i2;
        return this;
    }

    public fe7() {
        this.b = new Handler(Looper.getMainLooper());
        this.f = 3;
        this.h = -1L;
        this.g = CacheMode.NO_CACHE;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor("OkGo");
        httpLoggingInterceptor.h(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.g(Level.INFO);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.readTimeout(60000L, timeUnit);
        builder.writeTimeout(60000L, timeUnit);
        builder.connectTimeout(60000L, timeUnit);
        wt4.c cVarB = wt4.b();
        builder.sslSocketFactory(cVarB.a, cVarB.b);
        builder.hostnameVerifier(wt4.b);
        this.c = builder.build();
    }
}
