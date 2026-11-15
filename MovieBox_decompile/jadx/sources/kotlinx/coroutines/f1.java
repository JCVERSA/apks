package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;

public abstract class f1 extends e1 {
    protected abstract Thread getThread();

    protected void reschedule(long j10, EventLoopImplBase.DelayedTask delayedTask) {
        DefaultExecutor.INSTANCE.schedule(j10, delayedTask);
    }

    protected final void unpark() {
        Thread thread = getThread();
        if (Thread.currentThread() != thread) {
            b bVar = c.f64678a;
            if (bVar != null) {
                bVar.f(thread);
            } else {
                LockSupport.unpark(thread);
            }
        }
    }
}
