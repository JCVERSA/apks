package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class cse implements ThreadFactory {
    public final ThreadFactory b = Executors.defaultThreadFactory();
    public final AtomicInteger c = new AtomicInteger(1);

    @Override
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.c;
        Thread threadNewThread = this.b.newThread(runnable);
        threadNewThread.setName("gads-" + atomicInteger.getAndIncrement());
        return threadNewThread;
    }
}
