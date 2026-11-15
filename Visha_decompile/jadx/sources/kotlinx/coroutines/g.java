package kotlinx.coroutines;

import defpackage.d4;
import defpackage.yd3;
import java.util.concurrent.locks.LockSupport;

public abstract class g extends yd3 {
    public abstract Thread getThread();

    public void reschedule(long j, EventLoopImplBase.DelayedTask delayedTask) {
        DefaultExecutor.INSTANCE.schedule(j, delayedTask);
    }

    public final void unpark() {
        Thread thread = getThread();
        if (Thread.currentThread() != thread) {
            d4.a();
            LockSupport.unpark(thread);
        }
    }
}
