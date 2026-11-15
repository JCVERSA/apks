package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class hr0 extends l42 {
    public final Runnable c;
    public final e74 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hr0(Lock lock, Runnable runnable, e74 e74Var) {
        super(lock);
        y45.j(lock, "lock");
        y45.j(runnable, "checkCancelled");
        y45.j(e74Var, "interruptedExceptionHandler");
        this.c = runnable;
        this.d = e74Var;
    }

    @Override
    public void lock() {
        while (!a().tryLock(50L, TimeUnit.MILLISECONDS)) {
            try {
                this.c.run();
            } catch (InterruptedException e) {
                this.d.invoke(e);
                return;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public hr0(Runnable runnable, e74 e74Var) {
        this(new ReentrantLock(), runnable, e74Var);
        y45.j(runnable, "checkCancelled");
        y45.j(e74Var, "interruptedExceptionHandler");
    }
}
