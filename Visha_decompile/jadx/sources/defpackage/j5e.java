package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class j5e implements ThreadFactory {
    public final AtomicInteger b = new AtomicInteger(1);
    public final String c;

    public j5e(String str) {
        this.c = str;
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AdWorker(" + this.c + ") #" + this.b.getAndIncrement());
    }
}
