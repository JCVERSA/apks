package io.reactivex.internal.schedulers;

import defpackage.gd1;
import defpackage.l15;
import defpackage.rc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class b extends Scheduler {
    public static final RxThreadFactory e;
    public static final ScheduledExecutorService f;
    public final ThreadFactory c;
    public final AtomicReference d;

    public static final class a extends Scheduler.Worker {
        public final ScheduledExecutorService b;
        public final gd1 c = new gd1();
        public volatile boolean d;

        public a(ScheduledExecutorService scheduledExecutorService) {
            this.b = scheduledExecutorService;
        }

        @Override
        public void dispose() {
            if (this.d) {
                return;
            }
            this.d = true;
            this.c.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.d;
        }

        @Override
        public rc2 schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.d) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(yw8.v(runnable), this.c);
            this.c.b(scheduledRunnable);
            try {
                scheduledRunnable.setFuture(j <= 0 ? this.b.submit((Callable) scheduledRunnable) : this.b.schedule((Callable) scheduledRunnable, j, timeUnit));
                return scheduledRunnable;
            } catch (RejectedExecutionException e) {
                dispose();
                yw8.s(e);
                return EmptyDisposable.INSTANCE;
            }
        }
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        e = new RxThreadFactory("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    }

    public b() {
        this(e);
    }

    public static ScheduledExecutorService f(ThreadFactory threadFactory) {
        return SchedulerPoolFactory.a(threadFactory);
    }

    @Override
    public Scheduler.Worker b() {
        return new a((ScheduledExecutorService) this.d.get());
    }

    @Override
    public rc2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(yw8.v(runnable));
        try {
            scheduledDirectTask.setFuture(j <= 0 ? ((ScheduledExecutorService) this.d.get()).submit(scheduledDirectTask) : ((ScheduledExecutorService) this.d.get()).schedule(scheduledDirectTask, j, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e2) {
            yw8.s(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override
    public rc2 e(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Runnable runnableV = yw8.v(runnable);
        if (j2 > 0) {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(runnableV);
            try {
                scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) this.d.get()).scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e2) {
                yw8.s(e2);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.get();
        l15 l15Var = new l15(runnableV, scheduledExecutorService);
        try {
            l15Var.b(j <= 0 ? scheduledExecutorService.submit(l15Var) : scheduledExecutorService.schedule(l15Var, j, timeUnit));
            return l15Var;
        } catch (RejectedExecutionException e3) {
            yw8.s(e3);
            return EmptyDisposable.INSTANCE;
        }
    }

    public b(ThreadFactory threadFactory) {
        AtomicReference atomicReference = new AtomicReference();
        this.d = atomicReference;
        this.c = threadFactory;
        atomicReference.lazySet(f(threadFactory));
    }
}
