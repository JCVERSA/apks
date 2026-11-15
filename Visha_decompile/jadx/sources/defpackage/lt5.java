package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class lt5 implements ThreadFactory {
    public static final AtomicInteger e = new AtomicInteger(1);
    public final ThreadGroup b;
    public final AtomicInteger c = new AtomicInteger(1);
    public final String d;

    public lt5() {
        SecurityManager securityManager = System.getSecurityManager();
        this.b = securityManager == null ? Thread.currentThread().getThreadGroup() : securityManager.getThreadGroup();
        this.d = "lottie-" + e.getAndIncrement() + "-thread-";
    }

    @Override
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.b, runnable, this.d + this.c.getAndIncrement(), 0L);
        thread.setDaemon(false);
        thread.setPriority(10);
        return thread;
    }
}
