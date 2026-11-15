package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

public final class odg implements ofg {
    public static final meg c = new meg(odg.class);
    public final Object b;

    public odg(Object obj) {
        this.b = obj;
    }

    @Override
    public final void b(Runnable runnable, Executor executor) {
        y4f.c(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            c.a().logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", "RuntimeException while executing runnable " + runnable.toString() + " with executor " + String.valueOf(executor), (Throwable) e);
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
        return super.toString() + "[status=SUCCESS, result=[" + obj.toString() + "]]";
    }

    @Override
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.b;
    }
}
