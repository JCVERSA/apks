package com.transsion.lib_web.zip.loader;

import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import okhttp3.OkHttpClient;

public final class b {

    public static final b f44833a = new b();

    private static final Lazy f44834b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.b();
        }
    });

    private b() {
    }

    public static final OkHttpClient b() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.connectTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).readTimeout(30L, timeUnit).cache(null).build();
    }

    private final OkHttpClient c() {
        return (OkHttpClient) f44834b.getValue();
    }

    public final OkHttpClient d() {
        return c();
    }
}
