package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class h {

    private final AtomicInteger f18623a;

    private final Set f18624b;

    private final PriorityBlockingQueue f18625c;

    private final PriorityBlockingQueue f18626d;

    private final c f18627e;

    private final f f18628f;

    private final j f18629g;

    private final NetworkDispatcher[] f18630h;

    private CacheDispatcher f18631i;

    private final List f18632j;

    private final List f18633k;

    public h(c cVar, f fVar, int i10, j jVar) {
        this.f18623a = new AtomicInteger();
        this.f18624b = new HashSet();
        this.f18625c = new PriorityBlockingQueue();
        this.f18626d = new PriorityBlockingQueue();
        this.f18632j = new ArrayList();
        this.f18633k = new ArrayList();
        this.f18627e = cVar;
        this.f18628f = fVar;
        this.f18630h = new NetworkDispatcher[i10];
        this.f18629g = jVar;
    }

    public Request a(Request request) {
        request.setRequestQueue(this);
        synchronized (this.f18624b) {
            this.f18624b.add(request);
        }
        request.setSequence(d());
        request.addMarker("add-to-queue");
        e(request, 0);
        b(request);
        return request;
    }

    void b(Request request) {
        if (request.shouldCache()) {
            this.f18625c.add(request);
        } else {
            f(request);
        }
    }

    void c(Request request) {
        synchronized (this.f18624b) {
            this.f18624b.remove(request);
        }
        synchronized (this.f18632j) {
            Iterator it = this.f18632j.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        e(request, 5);
    }

    public int d() {
        return this.f18623a.incrementAndGet();
    }

    void e(Request request, int i10) {
        synchronized (this.f18633k) {
            try {
                Iterator it = this.f18633k.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    throw null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void f(Request request) {
        this.f18626d.add(request);
    }

    public void g() {
        h();
        CacheDispatcher cacheDispatcher = new CacheDispatcher(this.f18625c, this.f18626d, this.f18627e, this.f18629g);
        this.f18631i = cacheDispatcher;
        cacheDispatcher.start();
        for (int i10 = 0; i10 < this.f18630h.length; i10++) {
            NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.f18626d, this.f18628f, this.f18627e, this.f18629g);
            this.f18630h[i10] = networkDispatcher;
            networkDispatcher.start();
        }
    }

    public void h() {
        CacheDispatcher cacheDispatcher = this.f18631i;
        if (cacheDispatcher != null) {
            cacheDispatcher.quit();
        }
        for (NetworkDispatcher networkDispatcher : this.f18630h) {
            if (networkDispatcher != null) {
                networkDispatcher.quit();
            }
        }
    }

    public h(c cVar, f fVar, int i10) {
        this(cVar, fVar, i10, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public h(c cVar, f fVar) {
        this(cVar, fVar, 4);
    }
}
