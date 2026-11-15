package defpackage;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class iia {
    public static final int a;
    public static final TimeUnit b;
    public static final BlockingQueue c;
    public static final ExecutorService d;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        a = iAvailableProcessors;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        b = timeUnit;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        c = linkedBlockingQueue;
        d = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors * 2, 1L, timeUnit, linkedBlockingQueue);
    }

    public static void a(Runnable runnable) {
        ExecutorService executorService = d;
        if (executorService != null) {
            executorService.execute(runnable);
        }
    }
}
