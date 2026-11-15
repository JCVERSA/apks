package defpackage;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class pia {
    public static volatile ExecutorService a;
    public static final int b = Runtime.getRuntime().availableProcessors();

    public static void a(Runnable runnable) {
        if (a == null) {
            int i = b;
            a = new ThreadPoolExecutor(i + 1, (i * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        }
        a.execute(runnable);
    }
}
