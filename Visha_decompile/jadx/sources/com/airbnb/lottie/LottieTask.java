package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import defpackage.dt5;
import defpackage.jt5;
import defpackage.lt5;
import defpackage.mq5;
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
    public static Executor e = Executors.newCachedThreadPool(new lt5());
    public final Set a;
    public final Set b;
    public final Handler c;
    public volatile jt5 d;

    public static class LottieFutureTask<T> extends FutureTask<jt5> {
        private LottieTask lottieTask;

        public LottieFutureTask(LottieTask lottieTask, Callable<jt5> callable) {
            super(callable);
            this.lottieTask = lottieTask;
        }

        @Override
        public void done() {
            try {
                if (isCancelled()) {
                    this.lottieTask = null;
                    return;
                }
                try {
                    this.lottieTask.l(get());
                } catch (InterruptedException | ExecutionException e) {
                    this.lottieTask.l(new jt5(e));
                }
                this.lottieTask = null;
            } catch (Throwable th) {
                this.lottieTask = null;
                throw th;
            }
        }
    }

    public LottieTask(Callable callable) {
        this(callable, false);
    }

    public synchronized LottieTask c(dt5 dt5Var) {
        try {
            jt5 jt5Var = this.d;
            if (jt5Var != null && jt5Var.a() != null) {
                dt5Var.onResult(jt5Var.a());
            }
            this.b.add(dt5Var);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized LottieTask d(dt5 dt5Var) {
        try {
            jt5 jt5Var = this.d;
            if (jt5Var != null && jt5Var.b() != null) {
                dt5Var.onResult(jt5Var.b());
            }
            this.a.add(dt5Var);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public jt5 e() {
        return this.d;
    }

    public final synchronized void f(Throwable th) {
        ArrayList arrayList = new ArrayList(this.b);
        if (arrayList.isEmpty()) {
            mq5.d("Lottie encountered an error but no failure listener was added:", th);
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((dt5) it.next()).onResult(th);
        }
    }

    public final void g() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            h();
        } else {
            this.c.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.h();
                }
            });
        }
    }

    public final void h() {
        jt5 jt5Var = this.d;
        if (jt5Var == null) {
            return;
        }
        if (jt5Var.b() != null) {
            i(jt5Var.b());
        } else {
            f(jt5Var.a());
        }
    }

    public final synchronized void i(Object obj) {
        Iterator it = new ArrayList(this.a).iterator();
        while (it.hasNext()) {
            ((dt5) it.next()).onResult(obj);
        }
    }

    public synchronized LottieTask j(dt5 dt5Var) {
        this.b.remove(dt5Var);
        return this;
    }

    public synchronized LottieTask k(dt5 dt5Var) {
        this.a.remove(dt5Var);
        return this;
    }

    public final void l(jt5 jt5Var) {
        if (this.d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.d = jt5Var;
        g();
    }

    public LottieTask(Object obj) {
        this.a = new LinkedHashSet(1);
        this.b = new LinkedHashSet(1);
        this.c = new Handler(Looper.getMainLooper());
        this.d = null;
        l(new jt5(obj));
    }

    public LottieTask(Callable callable, boolean z) {
        this.a = new LinkedHashSet(1);
        this.b = new LinkedHashSet(1);
        this.c = new Handler(Looper.getMainLooper());
        this.d = null;
        if (z) {
            try {
                l((jt5) callable.call());
                return;
            } catch (Throwable th) {
                l(new jt5(th));
                return;
            }
        }
        e.execute(new LottieFutureTask(this, callable));
    }
}
