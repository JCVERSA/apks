package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

final class g extends a {

    private final Thread f64861a;

    private final e1 f64862b;

    public g(CoroutineContext coroutineContext, Thread thread, e1 e1Var) {
        super(coroutineContext, true, true);
        this.f64861a = thread;
        this.f64862b = e1Var;
    }

    public final Object U() throws Throwable {
        b bVar = c.f64678a;
        if (bVar != null) {
            bVar.c();
        }
        try {
            e1 e1Var = this.f64862b;
            if (e1Var != null) {
                e1.incrementUseCount$default(e1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    e1 e1Var2 = this.f64862b;
                    long jProcessNextEvent = e1Var2 != null ? e1Var2.processNextEvent() : Long.MAX_VALUE;
                    if (isCompleted()) {
                        e1 e1Var3 = this.f64862b;
                        if (e1Var3 != null) {
                            e1.decrementUseCount$default(e1Var3, false, 1, null);
                        }
                        b bVar2 = c.f64678a;
                        if (bVar2 != null) {
                            bVar2.g();
                        }
                        Object objH = x1.h(getState$kotlinx_coroutines_core());
                        b0 b0Var = objH instanceof b0 ? (b0) objH : null;
                        if (b0Var == null) {
                            return objH;
                        }
                        throw b0Var.f64676a;
                    }
                    b bVar3 = c.f64678a;
                    if (bVar3 != null) {
                        bVar3.b(this, jProcessNextEvent);
                    } else {
                        LockSupport.parkNanos(this, jProcessNextEvent);
                    }
                } catch (Throwable th2) {
                    e1 e1Var4 = this.f64862b;
                    if (e1Var4 != null) {
                        e1.decrementUseCount$default(e1Var4, false, 1, null);
                    }
                    throw th2;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            cancelCoroutine(interruptedException);
            throw interruptedException;
        } catch (Throwable th3) {
            b bVar4 = c.f64678a;
            if (bVar4 != null) {
                bVar4.g();
            }
            throw th3;
        }
    }

    @Override
    protected void afterCompletion(Object obj) {
        if (Intrinsics.c(Thread.currentThread(), this.f64861a)) {
            return;
        }
        Thread thread = this.f64861a;
        b bVar = c.f64678a;
        if (bVar != null) {
            bVar.f(thread);
        } else {
            LockSupport.unpark(thread);
        }
    }

    @Override
    protected boolean isScopedCoroutine() {
        return true;
    }
}
