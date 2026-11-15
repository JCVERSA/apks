package com.google.firebase.perf.network;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import wc.f;
import xc.k;

public class d implements Callback {

    private final Callback f31495a;

    private final i f31496b;

    private final Timer f31497c;

    private final long f31498d;

    public d(Callback callback, k kVar, Timer timer, long j10) {
        this.f31495a = callback;
        this.f31496b = i.b(kVar);
        this.f31498d = j10;
        this.f31497c = timer;
    }

    @Override
    public void onFailure(Call call, IOException iOException) {
        Request request = call.request();
        if (request != null) {
            HttpUrl httpUrlUrl = request.url();
            if (httpUrlUrl != null) {
                this.f31496b.q(httpUrlUrl.url().toString());
            }
            if (request.method() != null) {
                this.f31496b.f(request.method());
            }
        }
        this.f31496b.k(this.f31498d);
        this.f31496b.o(this.f31497c.getDurationMicros());
        f.d(this.f31496b);
        this.f31495a.onFailure(call, iOException);
    }

    @Override
    public void onResponse(Call call, Response response) throws IOException {
        FirebasePerfOkHttpClient.a(response, this.f31496b, this.f31498d, this.f31497c.getDurationMicros());
        this.f31495a.onResponse(call, response);
    }
}
