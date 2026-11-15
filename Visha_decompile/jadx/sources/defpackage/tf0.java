package defpackage;

import java.util.concurrent.locks.LockSupport;
import kotlin.coroutines.d;
import kotlinx.coroutines.a;

public final class tf0 extends a {
    public final Thread b;
    public final yd3 c;

    public tf0(d dVar, Thread thread, yd3 yd3Var) {
        super(dVar, true, true);
        this.b = thread;
        this.c = yd3Var;
    }

    public final Object V() throws Throwable {
        d4.a();
        try {
            yd3 yd3Var = this.c;
            if (yd3Var != null) {
                yd3.incrementUseCount$default(yd3Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    yd3 yd3Var2 = this.c;
                    long jProcessNextEvent = yd3Var2 != null ? yd3Var2.processNextEvent() : Long.MAX_VALUE;
                    if (isCompleted()) {
                        yd3 yd3Var3 = this.c;
                        if (yd3Var3 != null) {
                            yd3.decrementUseCount$default(yd3Var3, false, 1, null);
                        }
                        d4.a();
                        Object objH = q95.h(getState$kotlinx_coroutines_core());
                        vb1 vb1Var = objH instanceof vb1 ? (vb1) objH : null;
                        if (vb1Var == null) {
                            return objH;
                        }
                        throw vb1Var.a;
                    }
                    d4.a();
                    LockSupport.parkNanos(this, jProcessNextEvent);
                } catch (Throwable th) {
                    yd3 yd3Var4 = this.c;
                    if (yd3Var4 != null) {
                        yd3.decrementUseCount$default(yd3Var4, false, 1, null);
                    }
                    throw th;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            cancelCoroutine(interruptedException);
            throw interruptedException;
        } catch (Throwable th2) {
            d4.a();
            throw th2;
        }
    }

    @Override
    public void afterCompletion(Object obj) {
        if (y45.e(Thread.currentThread(), this.b)) {
            return;
        }
        Thread thread = this.b;
        d4.a();
        LockSupport.unpark(thread);
    }

    @Override
    public boolean isScopedCoroutine() {
        return true;
    }
}
