package defpackage;

import android.util.Log;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public abstract class iea {
    public static final int a;
    public static final int b;
    public static final ScheduledExecutorService c;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        a = iAvailableProcessors;
        b = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        c = Executors.newScheduledThreadPool(1);
    }

    public static void b(ScheduledFuture scheduledFuture, boolean z) {
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        scheduledFuture.cancel(z);
    }

    public static ScheduledFuture c(long j, final Runnable runnable, final Runnable runnable2) {
        return c.schedule(new Runnable() {
            @Override
            public final void run() {
                iea.d(runnable, runnable2);
            }
        }, j, TimeUnit.MILLISECONDS);
    }

    public static void d(Runnable runnable, Runnable runnable2) {
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Exception e) {
                Log.e("TaskScheduler", "executeTask error: ", e);
                return;
            }
        }
        if (runnable2 != null) {
            runnable2.run();
        }
    }
}
