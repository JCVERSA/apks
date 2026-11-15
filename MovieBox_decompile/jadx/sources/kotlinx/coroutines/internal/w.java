package kotlinx.coroutines.internal;

import com.tn.lib.view.FlowLayout;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.e2;

public abstract class w extends b implements e2 {

    private static final AtomicIntegerFieldUpdater f64917d = AtomicIntegerFieldUpdater.newUpdater(w.class, "cleanedAndPointers$volatile");

    public final long f64918c;
    private volatile int cleanedAndPointers$volatile;

    public w(long j10, w wVar, int i10) {
        super(wVar);
        this.f64918c = j10;
        this.cleanedAndPointers$volatile = i10 << 16;
    }

    @Override
    public boolean k() {
        return f64917d.get(this) == r() && !l();
    }

    public final boolean p() {
        return f64917d.addAndGet(this, FlowLayout.SPACING_AUTO) == r() && !l();
    }

    public abstract int r();

    public abstract void s(int i10, Throwable th2, CoroutineContext coroutineContext);

    public final void t() {
        if (f64917d.incrementAndGet(this) == r()) {
            n();
        }
    }

    public final boolean u() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f64917d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 == r() && !l()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 65536 + i10));
        return true;
    }
}
