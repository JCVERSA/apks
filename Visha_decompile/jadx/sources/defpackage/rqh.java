package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class rqh implements im5 {
    public final Object b;
    public final String c;
    public final im5 d;

    public rqh(Object obj, String str, im5 im5Var) {
        this.b = obj;
        this.c = str;
        this.d = im5Var;
    }

    public final Object a() {
        return this.b;
    }

    @Override
    public final void addListener(Runnable runnable, Executor executor) {
        this.d.addListener(runnable, executor);
    }

    public final String c() {
        return this.c;
    }

    @Override
    public final boolean cancel(boolean z) {
        return this.d.cancel(z);
    }

    @Override
    public final Object get() {
        return this.d.get();
    }

    @Override
    public final boolean isCancelled() {
        return this.d.isCancelled();
    }

    @Override
    public final boolean isDone() {
        return this.d.isDone();
    }

    public final String toString() {
        return this.c + "@" + System.identityHashCode(this);
    }

    @Override
    public final Object get(long j, TimeUnit timeUnit) {
        return this.d.get(j, timeUnit);
    }
}
