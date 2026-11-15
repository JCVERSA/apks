package defpackage;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class y44 extends c54 implements Future {
    public boolean cancel(boolean z) {
        return f().cancel(z);
    }

    public abstract Future f();

    @Override
    public Object get() {
        return f().get();
    }

    @Override
    public boolean isCancelled() {
        return f().isCancelled();
    }

    @Override
    public boolean isDone() {
        return f().isDone();
    }

    @Override
    public Object get(long j, TimeUnit timeUnit) {
        return f().get(j, timeUnit);
    }
}
