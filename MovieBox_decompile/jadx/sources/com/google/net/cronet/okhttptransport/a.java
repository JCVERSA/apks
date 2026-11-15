package com.google.net.cronet.okhttptransport;

import android.util.Log;
import com.google.common.base.m;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;

public final class a implements Interceptor, AutoCloseable {

    private final g f31944a;

    private final Map f31945b;

    private final ScheduledExecutorService f31946c;

    public static final class b extends h {
        b(CronetEngine cronetEngine) {
            super(cronetEngine, b.class);
        }

        @Override
        public a b(g gVar) {
            return new a(gVar);
        }
    }

    private class c extends com.google.net.cronet.okhttptransport.b {

        private final Call f31947b;

        @Override
        void d() {
            a.this.f31945b.remove(this.f31947b);
        }

        private c(ResponseBody responseBody, Call call) {
            super(responseBody);
            this.f31947b = call;
        }
    }

    public void h() {
        Iterator it = this.f31945b.entrySet().iterator();
        while (it.hasNext()) {
            try {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Call) entry.getKey()).getCanceled()) {
                    it.remove();
                    ((UrlRequest) entry.getValue()).cancel();
                }
            } catch (RuntimeException e10) {
                Log.w("CronetInterceptor", "Unable to propagate cancellation status", e10);
            }
        }
    }

    public static b j(CronetEngine cronetEngine) {
        return new b(cronetEngine);
    }

    private Response k(Response response, Call call) {
        m.o(response.body());
        return response.body() instanceof c ? response : response.newBuilder().body(new c(response.body(), call)).build();
    }

    @Override
    public void close() {
        this.f31946c.shutdown();
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        if (chain.call().getCanceled()) {
            throw new IOException("Canceled");
        }
        g.b bVarB = this.f31944a.b(chain.request(), chain.readTimeoutMillis(), chain.writeTimeoutMillis());
        this.f31945b.put(chain.call(), bVarB.a());
        try {
            bVarB.a().start();
            return k(bVarB.b(), chain.call());
        } catch (IOException | RuntimeException e10) {
            this.f31945b.remove(chain.call());
            throw e10;
        }
    }

    private a(g gVar) {
        this.f31945b = new ConcurrentHashMap();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        this.f31946c = scheduledThreadPoolExecutor;
        this.f31944a = (g) m.o(gVar);
        scheduledThreadPoolExecutor.scheduleAtFixedRate(new Runnable() {
            @Override
            public final void run() {
                this.f60127a.h();
            }
        }, 500L, 500L, TimeUnit.MILLISECONDS);
    }
}
