package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class xph implements ThreadFactory {
    public final AtomicInteger b = new AtomicInteger(1);

    @Override
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AdWorker(NG) #" + this.b.getAndIncrement());
    }
}
