package io.reactivex.internal.schedulers;

import defpackage.t74;
import defpackage.wk5;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.BooleanUtils;

public abstract class SchedulerPoolFactory {
    public static final boolean a;
    public static final int b;
    public static final AtomicReference c = new AtomicReference();
    public static final Map d = new ConcurrentHashMap();

    public static final class ScheduledTask implements Runnable {
        @Override
        public void run() {
            for (ScheduledThreadPoolExecutor scheduledThreadPoolExecutor : new ArrayList(SchedulerPoolFactory.d.keySet())) {
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    SchedulerPoolFactory.d.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    public static final class a implements t74 {
        @Override
        public String apply(String str) {
            return System.getProperty(str);
        }
    }

    static {
        a aVar = new a();
        boolean zB = b(true, "rx2.purge-enabled", true, true, aVar);
        a = zB;
        b = c(zB, "rx2.purge-period-seconds", 1, 1, aVar);
        d();
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        e(a, scheduledExecutorServiceNewScheduledThreadPool);
        return scheduledExecutorServiceNewScheduledThreadPool;
    }

    public static boolean b(boolean z, String str, boolean z2, boolean z3, t74 t74Var) {
        if (!z) {
            return z3;
        }
        try {
            String str2 = (String) t74Var.apply(str);
            return str2 == null ? z2 : BooleanUtils.TRUE.equals(str2);
        } catch (Throwable unused) {
            return z2;
        }
    }

    public static int c(boolean z, String str, int i, int i2, t74 t74Var) {
        if (!z) {
            return i2;
        }
        try {
            String str2 = (String) t74Var.apply(str);
            return str2 == null ? i : Integer.parseInt(str2);
        } catch (Throwable unused) {
            return i;
        }
    }

    public static void d() {
        f(a);
    }

    public static void e(boolean z, ScheduledExecutorService scheduledExecutorService) {
        if (z && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            d.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }

    public static void f(boolean z) {
        if (!z) {
            return;
        }
        while (true) {
            AtomicReference atomicReference = c;
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge"));
            if (wk5.a(atomicReference, scheduledExecutorService, scheduledExecutorServiceNewScheduledThreadPool)) {
                ScheduledTask scheduledTask = new ScheduledTask();
                int i = b;
                scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(scheduledTask, i, i, TimeUnit.SECONDS);
                return;
            }
            scheduledExecutorServiceNewScheduledThreadPool.shutdownNow();
        }
    }
}
