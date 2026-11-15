package defpackage;

import androidx.core.internal.view.SupportMenu;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.d;

public abstract class oa9 extends je1 implements w17 {
    public static final AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(oa9.class, "cleanedAndPointers$volatile");
    private volatile int cleanedAndPointers$volatile;
    public final long d;

    public oa9(long j, oa9 oa9Var, int i) {
        super(oa9Var);
        this.d = j;
        this.cleanedAndPointers$volatile = i << 16;
    }

    @Override
    public boolean k() {
        return e.get(this) == r() && !l();
    }

    public final boolean p() {
        return e.addAndGet(this, SupportMenu.CATEGORY_MASK) == r() && !l();
    }

    public abstract int r();

    public abstract void s(int i, Throwable th, d dVar);

    public final void t() {
        if (e.incrementAndGet(this) == r()) {
            n();
        }
    }

    public final boolean u() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = e;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            if (i == r() && !l()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 65536 + i));
        return true;
    }
}
