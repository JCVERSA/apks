package defpackage;

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

public final class ll1 implements Interceptor, AutoCloseable {
    public final it8 b;
    public final Map c;
    public final ScheduledExecutorService d;

    public static final class b extends jt8 {
        public b(CronetEngine cronetEngine) {
            super(cronetEngine, b.class);
        }

        @Override
        public ll1 b(it8 it8Var) {
            return new ll1(it8Var);
        }
    }

    public class c extends ol1 {
        public final Call c;

        @Override
        public void b() {
            ll1.this.c.remove(this.c);
        }

        public c(ResponseBody responseBody, Call call) {
            super(responseBody);
            this.c = call;
        }
    }

    public static b e(CronetEngine cronetEngine) {
        return new b(cronetEngine);
    }

    @Override
    public void close() {
        this.d.shutdown();
    }

    public final void d() {
        Iterator it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            try {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Call) entry.getKey()).getCanceled()) {
                    it.remove();
                    ((UrlRequest) entry.getValue()).cancel();
                }
            } catch (RuntimeException e) {
                ja1.Log().w("CronetInterceptor", "Unable to propagate cancellation status", e);
            }
        }
    }

    public final Response g(Response response, Call call) {
        xd8.o(response.body());
        return response.body() instanceof c ? response : response.newBuilder().body(new c(response.body(), call)).build();
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        if (chain.call().getCanceled()) {
            throw new IOException("Canceled");
        }
        it8.b bVarB = this.b.b(chain.request(), chain.readTimeoutMillis(), chain.writeTimeoutMillis());
        this.c.put(chain.call(), bVarB.a());
        try {
            bVarB.a().start();
            return g(bVarB.b(), chain.call());
        } catch (IOException | RuntimeException e) {
            this.c.remove(chain.call());
            throw e;
        }
    }

    public ll1(it8 it8Var) {
        this.c = new ConcurrentHashMap();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        this.d = scheduledThreadPoolExecutor;
        this.b = (it8) xd8.o(it8Var);
        scheduledThreadPoolExecutor.scheduleAtFixedRate(new Runnable() {
            @Override
            public final void run() {
                this.b.d();
            }
        }, 500L, 500L, TimeUnit.MILLISECONDS);
    }
}
