package defpackage;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class hxd implements ThreadFactory {
    public static final AtomicInteger e = new AtomicInteger(1);
    public final ThreadGroup b;
    public final AtomicInteger c = new AtomicInteger(1);
    public final String d;

    public hxd(String str) {
        SecurityManager securityManager = System.getSecurityManager();
        this.b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        if (TextUtils.isEmpty(str)) {
            this.d = "mgmi_a-" + e.getAndIncrement() + "-thread-";
            return;
        }
        this.d = str + "-" + e.getAndIncrement() + "-thread-";
    }

    @Override
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.b, runnable, this.d + this.c.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (thread.getPriority() != 5) {
            thread.setPriority(5);
        }
        return thread;
    }
}
