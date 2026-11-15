package com.transsion.cloud_drive.base.network;

import com.transsion.cloud_drive.base.network.RetrofitInstance;
import com.transsion.cloud_drive.base.network.interceptor.NetworkRetryInterceptor;
import defpackage.br6;
import defpackage.c74;
import defpackage.fc2;
import defpackage.j1a;
import defpackage.kc5;
import defpackage.lo1;
import defpackage.npa;
import defpackage.oq5;
import defpackage.pr8;
import defpackage.qo4;
import defpackage.qz6;
import defpackage.rh1;
import defpackage.ru8;
import defpackage.sz6;
import defpackage.t4;
import defpackage.wi9;
import defpackage.xj4;
import defpackage.y45;
import defpackage.yd;
import defpackage.yi5;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.b;
import okhttp3.Cache;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;

public final class RetrofitInstance {
    public static qz6 b;
    public static String c;
    public static final RetrofitInstance a = new RetrofitInstance();
    public static final yi5 d = b.a(new c74() {
        @Override
        public final ru8 invoke() {
            RetrofitInstance retrofitInstance = RetrofitInstance.a;
            OkHttpClient okHttpClientE = retrofitInstance.e();
            qz6 qz6Var = RetrofitInstance.b;
            y45.g(qz6Var);
            boolean zS = qz6Var.s();
            qz6 qz6Var2 = RetrofitInstance.b;
            y45.g(qz6Var2);
            return retrofitInstance.g(okHttpClientE, zS, qz6Var2.o());
        }
    });

    public static final void f(String str) {
        y45.j(str, "message");
        oq5.a.a("OkHttpClient", str);
    }

    public final OkHttpClient e() {
        String str;
        qz6 qz6Var = b;
        if (qz6Var == null || (str = c) == null || j1a.o0(str)) {
            throw new IllegalStateException("NetworkConfig or diskDomain is not initialized, please call initRetrofit() first");
        }
        qz6Var.g();
        OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
        long jE = qz6Var.e();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderNewBuilder.connectTimeout(jE, timeUnit);
        builderNewBuilder.readTimeout(qz6Var.m(), timeUnit);
        builderNewBuilder.writeTimeout(qz6Var.r(), timeUnit);
        builderNewBuilder.addInterceptor(new xj4(qz6Var.k()));
        if (qz6Var.j()) {
            builderNewBuilder.addInterceptor(pr8.a.b());
        }
        if (qz6Var.i()) {
            builderNewBuilder.addInterceptor(new NetworkRetryInterceptor(qz6Var.l(), qz6Var.n()));
        } else {
            builderNewBuilder.addInterceptor(new sz6());
        }
        builderNewBuilder.addInterceptor(new qo4(qz6Var.b()));
        String str2 = c;
        y45.g(str2);
        builderNewBuilder.addInterceptor(new fc2(str2));
        builderNewBuilder.addInterceptor(new t4(qz6Var.a()));
        if (qz6Var.q()) {
            builderNewBuilder.addInterceptor(new yd("os-cloud-disk", "os-cloud-disk2"));
        }
        builderNewBuilder.addInterceptor(new lo1());
        Iterator it = qz6Var.f().iterator();
        while (it.hasNext()) {
            builderNewBuilder.addInterceptor((Interceptor) it.next());
        }
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() {
            @Override
            public final void log(String str3) {
                RetrofitInstance.f(str3);
            }
        });
        httpLoggingInterceptor.level(qz6Var.h() ? HttpLoggingInterceptor.Level.BODY : HttpLoggingInterceptor.Level.BASIC);
        builderNewBuilder.addInterceptor(httpLoggingInterceptor);
        builderNewBuilder.addInterceptor(new wi9(qz6Var.p()));
        if (qz6Var.d() > 0) {
            String strC = qz6Var.c();
            builderNewBuilder.cache(new Cache((strC == null || j1a.o0(strC)) ? new File(rh1.a.a().getCacheDir(), "http_cache") : new File(qz6Var.c()), 52428800L));
        }
        return builderNewBuilder.build();
    }

    public final ru8 g(OkHttpClient okHttpClient, boolean z, npa npaVar) {
        ru8 ru8VarE = new ru8.b().c(z ? "https://test-oscloud.transsion-os.com" : "https://oscloud.palm.tech").g(okHttpClient).b(br6.a(kc5.a.a())).a(new TokenRefreshCallAdapterFactory(npaVar)).e();
        y45.i(ru8VarE, "build(...)");
        return ru8VarE;
    }

    public final ru8 h() {
        return (ru8) d.getValue();
    }

    public final void i(String str, qz6 qz6Var) {
        y45.j(str, "diskDomain");
        y45.j(qz6Var, "networkConfig");
        c = str;
        b = qz6Var;
    }
}
