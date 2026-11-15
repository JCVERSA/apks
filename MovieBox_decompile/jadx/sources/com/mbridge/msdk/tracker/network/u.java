package com.mbridge.msdk.tracker.network;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class u {

    private volatile ThreadPoolExecutor f37847a;

    private final int f37851e;

    private final com.mbridge.msdk.tracker.network.b f37852f;

    private final m f37853g;

    private final w f37854h;

    private final AtomicInteger f37848b = new AtomicInteger();

    private final Set<t<?>> f37849c = new HashSet();

    private final PriorityBlockingQueue<t<?>> f37850d = new PriorityBlockingQueue<>();

    private final List<c> f37855i = new ArrayList();

    private boolean f37856j = false;

    class a implements ThreadFactory {
        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "NetworkDispatcher");
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            try {
                new n(u.this.f37850d, u.this.f37853g, u.this.f37852f, u.this.f37854h).run();
            } catch (Throwable unused) {
            }
        }
    }

    public interface c {
        void a(t<?> tVar, int i10);
    }

    public u(m mVar, w wVar, int i10, com.mbridge.msdk.tracker.network.b bVar) {
        this.f37851e = i10;
        this.f37852f = bVar;
        this.f37853g = mVar;
        this.f37854h = wVar;
    }

    private void a(int i10) {
        if (this.f37847a != null) {
            return;
        }
        try {
            b(i10);
        } catch (Throwable unused) {
            try {
                b(5);
            } catch (Exception unused2) {
                this.f37847a = null;
            }
        }
    }

    public void b() {
        if (!this.f37856j || this.f37847a == null) {
            a(this.f37851e);
            this.f37856j = true;
        }
    }

    <T> void c(t<T> tVar) {
        synchronized (this.f37849c) {
            this.f37849c.remove(tVar);
        }
        a(tVar, 5);
    }

    <T> void d(t<T> tVar) {
        this.f37850d.add(tVar);
    }

    private void b(int i10) {
        this.f37847a = new ThreadPoolExecutor(i10, i10, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }

    public int a() {
        return this.f37848b.incrementAndGet();
    }

    <T> void b(t<T> tVar) {
        d(tVar);
    }

    public <T> t<T> a(t<T> tVar) {
        tVar.a(this);
        synchronized (this.f37849c) {
            this.f37849c.add(tVar);
        }
        tVar.b(a());
        tVar.a("add-to-queue");
        a(tVar, 0);
        b(tVar);
        if (this.f37847a == null) {
            a(this.f37851e);
        }
        if (!this.f37847a.isShutdown()) {
            this.f37847a.execute(new b());
        }
        return tVar;
    }

    void a(t<?> tVar, int i10) {
        synchronized (this.f37855i) {
            try {
                Iterator<c> it = this.f37855i.iterator();
                while (it.hasNext()) {
                    it.next().a(tVar, i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
