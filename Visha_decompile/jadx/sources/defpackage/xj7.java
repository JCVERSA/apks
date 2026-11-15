package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class xj7 implements Executor {
    public static volatile xj7 c;
    public final ExecutorService b = Executors.newCachedThreadPool(new ThreadFactory() {
        @Override
        public final Thread newThread(Runnable runnable) {
            return xj7.b(runnable);
        }
    });

    public static xj7 a() {
        if (c == null) {
            synchronized (xj7.class) {
                try {
                    if (c == null) {
                        c = new xj7();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public static Thread b(Runnable runnable) {
        Thread thread = new Thread(runnable, "PalmSDK-Worker");
        thread.setDaemon(true);
        return thread;
    }

    @Override
    public void execute(Runnable runnable) {
        if (runnable != null) {
            this.b.execute(runnable);
        }
    }
}
