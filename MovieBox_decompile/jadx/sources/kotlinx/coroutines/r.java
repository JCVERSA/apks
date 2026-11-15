package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.Continuation;

public final class r extends b0 {

    private static final AtomicIntegerFieldUpdater f64943c = AtomicIntegerFieldUpdater.newUpdater(r.class, "_resumed$volatile");
    private volatile int _resumed$volatile;

    public r(Continuation continuation, Throwable th2, boolean z10) {
        if (th2 == null) {
            th2 = new CancellationException("Continuation " + continuation + " was cancelled normally");
        }
        super(th2, z10);
        this._resumed$volatile = 0;
    }

    public final boolean e() {
        return f64943c.compareAndSet(this, 0, 1);
    }
}
