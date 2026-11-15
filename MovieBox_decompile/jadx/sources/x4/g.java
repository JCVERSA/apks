package x4;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class g implements ThreadFactory {

    private static final AtomicInteger f75076d = new AtomicInteger(1);

    private final ThreadGroup f75077a;

    private final AtomicInteger f75078b = new AtomicInteger(1);

    private final String f75079c;

    public g() {
        SecurityManager securityManager = System.getSecurityManager();
        this.f75077a = securityManager == null ? Thread.currentThread().getThreadGroup() : securityManager.getThreadGroup();
        this.f75079c = "lottie-" + f75076d.getAndIncrement() + "-thread-";
    }

    @Override
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f75077a, runnable, this.f75079c + this.f75078b.getAndIncrement(), 0L);
        thread.setDaemon(false);
        thread.setPriority(10);
        return thread;
    }
}
