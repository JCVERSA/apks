package com.tmc.network.strategy;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.tmc.network.HttpClient;
import com.tmc.network.HttpRequestor;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public final class c {

    private String f39848a;

    private final a f39849b;

    public static final class a implements Callback {
        a() {
        }

        @Override
        public void onFailure(Call call, IOException e10) {
            Intrinsics.h(call, "call");
            Intrinsics.h(e10, "e");
            rf.b.f71178a.c("pre connect onFailure");
        }

        @Override
        public void onResponse(Call call, Response response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            rf.b.f71178a.c("pre connect success");
        }
    }

    public c(String url) {
        Intrinsics.h(url, "url");
        this.f39848a = url;
        this.f39849b = new a();
    }

    public final void a() {
        HttpClient httpClient;
        OkHttpClient okHttpClient;
        Call callNewCall;
        try {
            Request requestBuild = new Request.Builder().url(this.f39848a).header("isPre", "true").head().build();
            HttpRequestor companion = HttpRequestor.INSTANCE.getInstance();
            if (companion != null && (httpClient = companion.getHttpClient()) != null && (okHttpClient = httpClient.getOkHttpClient()) != null && (callNewCall = okHttpClient.newCall(requestBuild)) != null) {
                FirebasePerfOkHttpClient.enqueue(callNewCall, this.f39849b);
            }
            rf.b.f71178a.c(Intrinsics.q("pre connect start url = ", this.f39848a));
        } catch (Throwable th2) {
            rf.b.f71178a.e(th2);
        }
    }
}
