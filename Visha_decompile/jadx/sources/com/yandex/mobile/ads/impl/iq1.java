package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class iq1 {
    private final AtomicInteger a;
    private final HashSet b;
    private final PriorityBlockingQueue<up1<?>> c;
    private final PriorityBlockingQueue<up1<?>> d;
    private final tm e;
    private final sc1 f;
    private final fr1 g;
    private final tc1[] h;
    private ym i;
    private final ArrayList j;
    private final ArrayList k;

    public interface a {
        void a(up1<?> up1Var, int i);
    }

    public interface b {
        boolean a(up1<?> up1Var);
    }

    @Deprecated
    public interface c<T> {
        void a();
    }

    public iq1(tm tmVar, xk xkVar, int i) {
        this(tmVar, xkVar, i, new h60(new Handler(Looper.getMainLooper())));
    }

    public final void a(up1 up1Var) {
        up1Var.a(this);
        synchronized (this.b) {
            this.b.add(up1Var);
        }
        up1Var.b(this.a.incrementAndGet());
        up1Var.a("add-to-queue");
        a(up1Var, 0);
        if (up1Var.t()) {
            this.c.add(up1Var);
        } else {
            this.d.add(up1Var);
        }
    }

    public final <T> void b(up1<T> up1Var) {
        synchronized (this.b) {
            this.b.remove(up1Var);
        }
        synchronized (this.j) {
            try {
                Iterator it = this.j.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        a(up1Var, 5);
    }

    public iq1(tm tmVar, xk xkVar, int i, h60 h60Var) {
        this.a = new AtomicInteger();
        this.b = new HashSet();
        this.c = new PriorityBlockingQueue<>();
        this.d = new PriorityBlockingQueue<>();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.e = tmVar;
        this.f = xkVar;
        this.h = new tc1[i];
        this.g = h60Var;
    }

    public final void a(aq1 aq1Var) {
        synchronized (this.k) {
            this.k.add(aq1Var);
        }
    }

    public final void a(b bVar) {
        synchronized (this.b) {
            try {
                for (up1<?> up1Var : this.b) {
                    if (bVar.a(up1Var)) {
                        up1Var.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(up1<?> up1Var, int i) {
        synchronized (this.k) {
            try {
                Iterator it = this.k.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).a(up1Var, i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a() {
        ym ymVar = this.i;
        if (ymVar != null) {
            ymVar.b();
        }
        for (tc1 tc1Var : this.h) {
            if (tc1Var != null) {
                tc1Var.b();
            }
        }
        ym ymVar2 = new ym(this.c, this.d, this.e, this.g);
        this.i = ymVar2;
        ymVar2.start();
        for (int i = 0; i < this.h.length; i++) {
            tc1 tc1Var2 = new tc1(this.d, this.f, this.e, this.g);
            this.h[i] = tc1Var2;
            tc1Var2.start();
        }
    }
}
