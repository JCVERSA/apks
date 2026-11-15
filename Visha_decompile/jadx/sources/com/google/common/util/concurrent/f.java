package com.google.common.util.concurrent;

import defpackage.im5;
import defpackage.kj5;
import defpackage.xd8;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

public class f implements im5 {
    public static final im5 c = new f(null);
    public static final kj5 d = new kj5(f.class);
    public final Object b;

    public static final class a extends AbstractFuture.h {
        public static final a b;

        static {
            b = AbstractFuture.GENERATE_CANCELLATION_CAUSES ? null : new a();
        }

        public a() {
            cancel(false);
        }
    }

    public static final class b extends AbstractFuture.h {
        public b(Throwable th) {
            setException(th);
        }
    }

    public f(Object obj) {
        this.b = obj;
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        xd8.p(runnable, "Runnable was null.");
        xd8.p(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            d.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override
    public boolean cancel(boolean z) {
        return false;
    }

    @Override
    public Object get() {
        return this.b;
    }

    @Override
    public boolean isCancelled() {
        return false;
    }

    @Override
    public boolean isDone() {
        return true;
    }

    public String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + this.b + "]]";
    }

    @Override
    public Object get(long j, TimeUnit timeUnit) {
        xd8.o(timeUnit);
        return get();
    }
}
