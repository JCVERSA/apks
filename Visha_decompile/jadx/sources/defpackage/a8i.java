package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

public final class a8i implements im5 {
    public static final im5 c = new a8i(null);
    public static final e8i d = new e8i(a8i.class);
    public final Object b;

    public a8i(Object obj) {
        this.b = obj;
    }

    @Override
    public final void addListener(Runnable runnable, Executor executor) {
        v2i.c(runnable, "Runnable was null.");
        v2i.c(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            d.a().logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    @Override
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override
    public final Object get() {
        return this.b;
    }

    @Override
    public final boolean isCancelled() {
        return false;
    }

    @Override
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        Object obj = this.b;
        return super.toString() + "[status=SUCCESS, result=[" + String.valueOf(obj) + "]]";
    }

    @Override
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.b;
    }
}
