package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public final class v0 extends kotlinx.coroutines.internal.v {

    private static final AtomicIntegerFieldUpdater f65033a = AtomicIntegerFieldUpdater.newUpdater(v0.class, "_decision$volatile");
    private volatile int _decision$volatile;

    public v0(CoroutineContext coroutineContext, Continuation continuation) {
        super(coroutineContext, continuation);
    }

    private final boolean W() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f65033a;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f65033a.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean X() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f65033a;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f65033a.compareAndSet(this, 0, 1));
        return true;
    }

    public final Object U() {
        if (X()) {
            return IntrinsicsKt.f();
        }
        Object objH = x1.h(getState$kotlinx_coroutines_core());
        if (objH instanceof b0) {
            throw ((b0) objH).f64676a;
        }
        return objH;
    }

    @Override
    protected void afterCompletion(Object obj) {
        afterResume(obj);
    }

    @Override
    protected void afterResume(Object obj) {
        if (W()) {
            return;
        }
        kotlinx.coroutines.internal.g.b(IntrinsicsKt.c(this.uCont), c0.a(obj, this.uCont));
    }
}
