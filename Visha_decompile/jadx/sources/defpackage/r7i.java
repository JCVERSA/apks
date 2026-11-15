package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class r7i extends q7i {
    public final im5 b;

    public r7i(im5 im5Var) {
        im5Var.getClass();
        this.b = im5Var;
    }

    @Override
    public final void addListener(Runnable runnable, Executor executor) {
        this.b.addListener(runnable, executor);
    }

    @Override
    public final boolean cancel(boolean z) {
        return this.b.cancel(z);
    }

    @Override
    public final Object get() {
        return this.b.get();
    }

    @Override
    public final boolean isCancelled() {
        return this.b.isCancelled();
    }

    @Override
    public final boolean isDone() {
        return this.b.isDone();
    }

    @Override
    public final String toString() {
        return this.b.toString();
    }

    @Override
    public final Object get(long j, TimeUnit timeUnit) {
        return this.b.get(j, timeUnit);
    }
}
