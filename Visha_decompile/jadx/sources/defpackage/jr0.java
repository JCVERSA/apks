package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

public final class jr0 extends vb1 {
    public static final AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(jr0.class, "_resumed$volatile");
    private volatile int _resumed$volatile;

    public jr0(wh1 wh1Var, Throwable th, boolean z) {
        if (th == null) {
            th = new CancellationException("Continuation " + wh1Var + " was cancelled normally");
        }
        super(th, z);
        this._resumed$volatile = 0;
    }

    public final boolean e() {
        return c.compareAndSet(this, 0, 1);
    }
}
