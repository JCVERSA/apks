package mgtv.qt;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class j {
    public static ScheduledThreadPoolExecutor a;

    static {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(2);
        a = scheduledThreadPoolExecutor;
        scheduledThreadPoolExecutor.setMaximumPoolSize(5);
    }

    public static void a(Runnable runnable) {
        b(runnable, 0L);
    }

    public static void b(Runnable runnable, long j) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = a;
        if (scheduledThreadPoolExecutor == null) {
            if (j > 0) {
                runnable = new y(j, runnable);
            }
            new Thread(runnable).start();
        } else if (j > 0) {
            scheduledThreadPoolExecutor.schedule(runnable, j, TimeUnit.MILLISECONDS);
        } else {
            scheduledThreadPoolExecutor.submit(runnable);
        }
    }
}
