package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

public final class j55 extends o95 {
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(j55.class, "_invoked$volatile");
    private volatile int _invoked$volatile = 0;
    public final e74 f;

    public j55(e74 e74Var) {
        this.f = e74Var;
    }

    @Override
    public boolean u() {
        return true;
    }

    @Override
    public void v(Throwable th) {
        if (g.compareAndSet(this, 0, 1)) {
            this.f.invoke(th);
        }
    }
}
