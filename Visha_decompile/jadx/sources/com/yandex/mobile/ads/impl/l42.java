package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

public final class l42 {
    public static final l42 h = new l42(new c(g92.a(g92.g + " TaskRunner", true)));
    private static final Logger i;
    private final a a;
    private int b;
    private boolean c;
    private long d;
    private final ArrayList e;
    private final ArrayList f;
    private final m42 g;

    public interface a {
        long a();

        void a(l42 l42Var);

        void a(l42 l42Var, long j);

        void execute(Runnable runnable);
    }

    public static final class b {
        public static Logger a() {
            return l42.i;
        }
    }

    static {
        Logger logger = Logger.getLogger(l42.class.getName());
        y45.i(logger, "getLogger(...)");
        i = logger;
    }

    public l42(c cVar) {
        y45.j(cVar, "backend");
        this.a = cVar;
        this.b = 10000;
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = new m42(this);
    }

    public final void b(h42 h42Var) {
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(h42Var.b());
        try {
            long jE = h42Var.e();
            synchronized (this) {
                a(h42Var, jE);
                zfb zfbVar = zfb.a;
            }
        } finally {
            synchronized (this) {
                a(h42Var, -1L);
                zfb zfbVar2 = zfb.a;
                threadCurrentThread.setName(name);
            }
        }
    }

    public final void c() {
        int size = this.e.size();
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            } else {
                ((k42) this.e.get(size)).b();
            }
        }
        for (int size2 = this.f.size() - 1; -1 < size2; size2--) {
            k42 k42Var = (k42) this.f.get(size2);
            k42Var.b();
            if (k42Var.e().isEmpty()) {
                this.f.remove(size2);
            }
        }
    }

    public final a d() {
        return this.a;
    }

    public final k42 e() {
        int i2;
        synchronized (this) {
            i2 = this.b;
            this.b = i2 + 1;
        }
        return new k42(this, "Q" + i2);
    }

    public static final class c implements a {
        private final ThreadPoolExecutor a;

        public c(ThreadFactory threadFactory) {
            y45.j(threadFactory, "threadFactory");
            this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override
        public final void a(l42 l42Var) {
            y45.j(l42Var, "taskRunner");
            l42Var.notify();
        }

        @Override
        public final void execute(Runnable runnable) {
            y45.j(runnable, "runnable");
            this.a.execute(runnable);
        }

        @Override
        public final void a(l42 l42Var, long j) throws InterruptedException {
            y45.j(l42Var, "taskRunner");
            long j2 = j / 1000000;
            long j3 = j - (1000000 * j2);
            if (j2 > 0 || j > 0) {
                l42Var.wait(j2, (int) j3);
            }
        }

        @Override
        public final long a() {
            return System.nanoTime();
        }
    }

    public final void a(k42 k42Var) {
        y45.j(k42Var, "taskQueue");
        if (g92.f && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (k42Var.c() == null) {
            if (k42Var.e().isEmpty()) {
                this.f.remove(k42Var);
            } else {
                g92.a(this.f, k42Var);
            }
        }
        if (this.c) {
            this.a.a(this);
        } else {
            this.a.execute(this.g);
        }
    }

    private final void a(h42 h42Var) {
        if (g92.f && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        h42Var.a(-1L);
        k42 k42VarD = h42Var.d();
        y45.g(k42VarD);
        k42VarD.e().remove(h42Var);
        this.f.remove(k42VarD);
        k42VarD.a(h42Var);
        this.e.add(k42VarD);
    }

    public final h42 b() {
        boolean z;
        if (g92.f && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        while (!this.f.isEmpty()) {
            long jA = this.a.a();
            Iterator it = this.f.iterator();
            long jMin = Long.MAX_VALUE;
            h42 h42Var = null;
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                h42 h42Var2 = (h42) ((k42) it.next()).e().get(0);
                long jMax = Math.max(0L, h42Var2.c() - jA);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (h42Var != null) {
                        z = true;
                        break;
                    }
                    h42Var = h42Var2;
                }
            }
            if (h42Var != null) {
                a(h42Var);
                if (z || (!this.c && !this.f.isEmpty())) {
                    this.a.execute(this.g);
                }
                return h42Var;
            }
            if (this.c) {
                if (jMin < this.d - jA) {
                    this.a.a(this);
                }
                return null;
            }
            this.c = true;
            this.d = jA + jMin;
            try {
                try {
                    this.a.a(this, jMin);
                } catch (InterruptedException unused) {
                    c();
                }
                this.c = false;
            } catch (Throwable th) {
                this.c = false;
                throw th;
            }
        }
        return null;
    }

    private final void a(h42 h42Var, long j) {
        if (g92.f && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        k42 k42VarD = h42Var.d();
        y45.g(k42VarD);
        if (k42VarD.c() == h42Var) {
            boolean zD = k42VarD.d();
            k42VarD.i();
            k42VarD.a(null);
            this.e.remove(k42VarD);
            if (j != -1 && !zD && !k42VarD.g()) {
                k42VarD.a(h42Var, j, true);
            }
            if (k42VarD.e().isEmpty()) {
                return;
            }
            this.f.add(k42VarD);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
