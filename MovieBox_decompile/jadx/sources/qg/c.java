package qg;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final a f69636b = new a(null);

    private static final c f69637c = new c();

    private ScheduledExecutorService f69638a = Executors.newScheduledThreadPool(1, new ThreadFactory() {
        @Override
        public final Thread newThread(Runnable runnable) {
            return c.c(runnable);
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return c.f69637c;
        }

        private a() {
        }
    }

    public static final Thread c(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("Delay-Task-Dispatcher");
        thread.setPriority(10);
        return thread;
    }

    public static final void f(ExecutorService executorService, Runnable runnable) {
        executorService.execute(runnable);
    }

    public final void e(long j10, final ExecutorService pool, final Runnable runnable) {
        Intrinsics.h(pool, "pool");
        Intrinsics.h(runnable, "runnable");
        if (j10 == 0) {
            pool.execute(runnable);
            return;
        }
        ScheduledExecutorService scheduledExecutorService = this.f69638a;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.schedule(new Runnable() {
                @Override
                public final void run() {
                    c.f(pool, runnable);
                }
            }, j10, TimeUnit.MICROSECONDS);
        }
    }
}
