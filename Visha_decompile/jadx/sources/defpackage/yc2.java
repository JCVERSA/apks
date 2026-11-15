package defpackage;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class yc2 implements Future {
    public final rc2 b;

    public yc2(rc2 rc2Var) {
        this.b = rc2Var;
    }

    @Override
    public boolean cancel(boolean z) {
        this.b.dispose();
        return false;
    }

    @Override
    public Object get() {
        return null;
    }

    @Override
    public boolean isCancelled() {
        return false;
    }

    @Override
    public boolean isDone() {
        return false;
    }

    @Override
    public Object get(long j, TimeUnit timeUnit) {
        return null;
    }
}
