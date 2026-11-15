package com.tn.tranpay.network;

import com.tn.tranpay.TranPayConfiguration;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.k0;

public final class RetrofitClient {

    public static final RetrofitClient f40653a = new RetrofitClient();

    private static String f40654b;

    private static final Lazy f40655c;

    private static final Lazy f40656d;

    static {
        f40654b = TranPayConfiguration.f40495a.u() ? "https://api.paynicorn.com" : "https://test.paynicorn.com/";
        f40655c = LazyKt.b(new Function0<OkHttpClient>() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final OkHttpClient invoke() {
                HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, 0 == true ? 1 : 0);
                httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
                OkHttpClient.Builder builderAddNetworkInterceptor = new OkHttpClient.Builder().addNetworkInterceptor(new a()).addNetworkInterceptor(httpLoggingInterceptor);
                TimeUnit timeUnit = TimeUnit.SECONDS;
                return builderAddNetworkInterceptor.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).build();
            }
        });
        f40656d = LazyKt.b(new Function0<k0>() {
            @Override
            public final k0 invoke() {
                return new k0.b().c(RetrofitClient.f40654b).g(RetrofitClient.f40653a.c()).b(k00.a.f()).e();
            }
        });
    }

    private RetrofitClient() {
    }

    public final OkHttpClient c() {
        return (OkHttpClient) f40655c.getValue();
    }

    public final k0 d() {
        Object value = f40656d.getValue();
        Intrinsics.g(value, "<get-retrofit>(...)");
        return (k0) value;
    }
}
