package com.transsion.log.upload.net;

import com.transsion.log.upload.net.a;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;

public final class a {
    public static final C0224a b = new C0224a(null);
    public static boolean c = true;
    public static final yi5 d = b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return a.e();
        }
    });
    public final OkHttpClient a;

    public static final class C0224a {
        public C0224a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return (a) a.d.getValue();
        }

        public C0224a() {
        }
    }

    public a() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.a = builder.connectTimeout(15L, timeUnit).readTimeout(15L, timeUnit).writeTimeout(15L, timeUnit).build();
    }

    public static final a e() {
        return new a();
    }

    public final String c(String str, Map map) {
        HttpUrl httpUrl;
        y45.j(str, "url");
        if (map == null || map.isEmpty() || (httpUrl = HttpUrl.INSTANCE.parse(str)) == null) {
            return str;
        }
        HttpUrl.Builder builderNewBuilder = httpUrl.newBuilder();
        for (Map.Entry entry : map.entrySet()) {
            builderNewBuilder.addQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        return builderNewBuilder.build().getUrl();
    }

    public final OkHttpClient d() {
        return this.a;
    }
}
