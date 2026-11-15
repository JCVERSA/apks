package defpackage;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class s7i extends h4i implements Future {
    public abstract Future d();

    @Override
    public final Object get() {
        return d().get();
    }

    @Override
    public final boolean isCancelled() {
        return d().isCancelled();
    }

    @Override
    public final boolean isDone() {
        return d().isDone();
    }

    @Override
    public final Object get(long j, TimeUnit timeUnit) {
        return d().get(j, timeUnit);
    }
}
