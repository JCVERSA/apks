package defpackage;

import com.google.common.util.concurrent.d;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class x44 extends d {
    public final im5 b;

    public x44(im5 im5Var) {
        this.b = (im5) xd8.o(im5Var);
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        this.b.addListener(runnable, executor);
    }

    @Override
    public boolean cancel(boolean z) {
        return this.b.cancel(z);
    }

    @Override
    public Object get() {
        return this.b.get();
    }

    @Override
    public boolean isCancelled() {
        return this.b.isCancelled();
    }

    @Override
    public boolean isDone() {
        return this.b.isDone();
    }

    @Override
    public String toString() {
        return this.b.toString();
    }

    @Override
    public Object get(long j, TimeUnit timeUnit) {
        return this.b.get(j, timeUnit);
    }
}
