package kotlinx.coroutines;

import defpackage.jc2;
import defpackage.q95;
import defpackage.vb1;
import defpackage.wb1;
import defpackage.wh1;
import defpackage.x29;
import defpackage.z45;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

public final class f extends x29 {
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(f.class, "_decision$volatile");
    private volatile int _decision$volatile;

    public f(kotlin.coroutines.d dVar, wh1 wh1Var) {
        super(dVar, wh1Var);
    }

    public final Object V() {
        if (Y()) {
            return z45.f();
        }
        Object objH = q95.h(getState$kotlinx_coroutines_core());
        if (objH instanceof vb1) {
            throw ((vb1) objH).a;
        }
        return objH;
    }

    public final boolean X() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b;
        do {
            int i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!b.compareAndSet(this, 0, 2));
        return true;
    }

    public final boolean Y() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b;
        do {
            int i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!b.compareAndSet(this, 0, 1));
        return true;
    }

    @Override
    public void afterCompletion(Object obj) {
        afterResume(obj);
    }

    @Override
    public void afterResume(Object obj) {
        if (X()) {
            return;
        }
        jc2.b(IntrinsicsKt__IntrinsicsJvmKt.c(this.uCont), wb1.a(obj, this.uCont));
    }
}
