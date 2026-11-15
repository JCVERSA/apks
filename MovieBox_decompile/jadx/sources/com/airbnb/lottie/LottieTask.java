package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public class LottieTask {

    public static Executor f17076e = Executors.newCachedThreadPool(new x4.g());

    private final Set f17077a;

    private final Set f17078b;

    private final Handler f17079c;

    private volatile q0 f17080d;

    private static class LottieFutureTask<T> extends FutureTask<q0> {
        private LottieTask lottieTask;

        LottieFutureTask(LottieTask lottieTask, Callable<q0> callable) {
            super(callable);
            this.lottieTask = lottieTask;
        }

        @Override
        protected void done() {
            try {
                if (isCancelled()) {
                    return;
                }
                try {
                    this.lottieTask.l(get());
                } catch (InterruptedException | ExecutionException e10) {
                    this.lottieTask.l(new q0(e10));
                }
            } finally {
                this.lottieTask = null;
            }
        }
    }

    public LottieTask(Callable callable) {
        this(callable, false);
    }

    private synchronized void f(Throwable th2) {
        ArrayList arrayList = new ArrayList(this.f17078b);
        if (arrayList.isEmpty()) {
            x4.f.d("Lottie encountered an error but no failure listener was added:", th2);
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((m0) it.next()).onResult(th2);
        }
    }

    private void g() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            h();
        } else {
            this.f17079c.post(new Runnable() {
                @Override
                public final void run() {
                    this.f17342a.h();
                }
            });
        }
    }

    public void h() {
        q0 q0Var = this.f17080d;
        if (q0Var == null) {
            return;
        }
        if (q0Var.b() != null) {
            i(q0Var.b());
        } else {
            f(q0Var.a());
        }
    }

    private synchronized void i(Object obj) {
        Iterator it = new ArrayList(this.f17077a).iterator();
        while (it.hasNext()) {
            ((m0) it.next()).onResult(obj);
        }
    }

    public void l(q0 q0Var) {
        if (this.f17080d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f17080d = q0Var;
        g();
    }

    public synchronized LottieTask c(m0 m0Var) {
        try {
            q0 q0Var = this.f17080d;
            if (q0Var != null && q0Var.a() != null) {
                m0Var.onResult(q0Var.a());
            }
            this.f17078b.add(m0Var);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public synchronized LottieTask d(m0 m0Var) {
        try {
            q0 q0Var = this.f17080d;
            if (q0Var != null && q0Var.b() != null) {
                m0Var.onResult(q0Var.b());
            }
            this.f17077a.add(m0Var);
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    public q0 e() {
        return this.f17080d;
    }

    public synchronized LottieTask j(m0 m0Var) {
        this.f17078b.remove(m0Var);
        return this;
    }

    public synchronized LottieTask k(m0 m0Var) {
        this.f17077a.remove(m0Var);
        return this;
    }

    public LottieTask(Object obj) {
        this.f17077a = new LinkedHashSet(1);
        this.f17078b = new LinkedHashSet(1);
        this.f17079c = new Handler(Looper.getMainLooper());
        this.f17080d = null;
        l(new q0(obj));
    }

    LottieTask(Callable callable, boolean z10) {
        this.f17077a = new LinkedHashSet(1);
        this.f17078b = new LinkedHashSet(1);
        this.f17079c = new Handler(Looper.getMainLooper());
        this.f17080d = null;
        if (z10) {
            try {
                l((q0) callable.call());
                return;
            } catch (Throwable th2) {
                l(new q0(th2));
                return;
            }
        }
        f17076e.execute(new LottieFutureTask(this, callable));
    }
}
