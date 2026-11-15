package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class s10 {
    private ThreadPoolExecutor a;
    private final ArrayDeque<zn1.a> b = new ArrayDeque<>();
    private final ArrayDeque<zn1.a> c = new ArrayDeque<>();
    private final ArrayDeque<zn1> d = new ArrayDeque<>();

    public final void a(zn1.a aVar) {
        zn1.a next;
        y45.j(aVar, NotificationCompat.CATEGORY_CALL);
        synchronized (this) {
            try {
                this.b.add(aVar);
                if (!aVar.a().f()) {
                    String strC = aVar.c();
                    Iterator<zn1.a> it = this.c.iterator();
                    do {
                        if (!it.hasNext()) {
                            Iterator<zn1.a> it2 = this.b.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it2.next();
                            } while (!y45.e(next.c(), strC));
                        } else {
                            next = it.next();
                        }
                    } while (!y45.e(next.c(), strC));
                    if (next != null) {
                        aVar.a(next);
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        b();
    }

    public final void b(zn1.a aVar) {
        y45.j(aVar, NotificationCompat.CATEGORY_CALL);
        aVar.b().decrementAndGet();
        a(this.c, aVar);
    }

    public final synchronized int c() {
        return this.d.size() + this.c.size();
    }

    public final void b(zn1 zn1Var) {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        a(this.d, zn1Var);
    }

    private final void b() {
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<zn1.a> it = this.b.iterator();
                y45.i(it, "iterator(...)");
                while (it.hasNext()) {
                    zn1.a next = it.next();
                    if (this.c.size() >= 64) {
                        break;
                    }
                    if (next.b().get() < 5) {
                        it.remove();
                        next.b().incrementAndGet();
                        y45.g(next);
                        arrayList.add(next);
                        this.c.add(next);
                    }
                }
                c();
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zn1.a) arrayList.get(i)).a(a());
        }
    }

    public final synchronized void a(zn1 zn1Var) {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        this.d.add(zn1Var);
    }

    public final synchronized ExecutorService a() {
        ThreadPoolExecutor threadPoolExecutor;
        try {
            if (this.a == null) {
                this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), g92.a(g92.g + " Dispatcher", false));
            }
            threadPoolExecutor = this.a;
            y45.g(threadPoolExecutor);
        } catch (Throwable th) {
            throw th;
        }
        return threadPoolExecutor;
    }

    private final void a(ArrayDeque arrayDeque, Object obj) {
        synchronized (this) {
            if (arrayDeque.remove(obj)) {
                zfb zfbVar = zfb.a;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        b();
    }
}
