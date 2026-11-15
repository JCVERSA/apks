package com.mbridge.msdk.thrid.okhttp;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class l {

    static final boolean f37441h = true;

    private Runnable f37444c;

    private ExecutorService f37445d;

    private int f37442a = 64;

    private int f37443b = 5;

    private final Deque<v.b> f37446e = new ArrayDeque();

    private final Deque<v.b> f37447f = new ArrayDeque();

    private final Deque<v> f37448g = new ArrayDeque();

    public l(ExecutorService executorService) {
        this.f37445d = executorService;
    }

    public synchronized ExecutorService a() {
        try {
            if (this.f37445d == null) {
                this.f37445d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp Dispatcher", false));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f37445d;
    }

    public void b(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.f37443b = i10;
            }
            b();
        } else {
            throw new IllegalArgumentException("max < 1: " + i10);
        }
    }

    public synchronized int c() {
        return this.f37447f.size() + this.f37448g.size();
    }

    public void a(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.f37442a = i10;
            }
            b();
        } else {
            throw new IllegalArgumentException("max < 1: " + i10);
        }
    }

    private boolean b() {
        int i10;
        boolean z10;
        if (!f37441h && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<v.b> it = this.f37446e.iterator();
                while (it.hasNext()) {
                    v.b next = it.next();
                    if (this.f37447f.size() >= this.f37442a) {
                        break;
                    }
                    if (b(next) < this.f37443b) {
                        it.remove();
                        arrayList.add(next);
                        this.f37447f.add(next);
                    }
                }
                z10 = c() > 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int size = arrayList.size();
        for (i10 = 0; i10 < size; i10++) {
            ((v.b) arrayList.get(i10)).a(a());
        }
        return z10;
    }

    public l() {
    }

    synchronized void a(v vVar) {
        this.f37448g.add(vVar);
    }

    void a(v.b bVar) {
        a(this.f37447f, bVar);
    }

    private <T> void a(Deque<T> deque, T t10) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t10)) {
                runnable = this.f37444c;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (b() || runnable == null) {
            return;
        }
        runnable.run();
    }

    private int b(v.b bVar) {
        int i10 = 0;
        for (v.b bVar2 : this.f37447f) {
            if (!bVar2.c().f37540f && bVar2.d().equals(bVar.d())) {
                i10++;
            }
        }
        return i10;
    }

    void b(v vVar) {
        a(this.f37448g, vVar);
    }
}
