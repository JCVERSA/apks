package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class h extends Scheduler {

    static final RxThreadFactory f62525e;

    static final ScheduledExecutorService f62526f;

    final ThreadFactory f62527c;

    final AtomicReference f62528d;

    static final class a extends Scheduler.Worker {

        final ScheduledExecutorService f62529a;

        final io.reactivex.rxjava3.disposables.a f62530b = new io.reactivex.rxjava3.disposables.a();

        volatile boolean f62531c;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f62529a = scheduledExecutorService;
        }

        @Override
        public void dispose() {
            if (this.f62531c) {
                return;
            }
            this.f62531c = true;
            this.f62530b.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.f62531c;
        }

        @Override
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            if (this.f62531c) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(dy.a.t(runnable), this.f62530b);
            this.f62530b.b(scheduledRunnable);
            try {
                scheduledRunnable.setFuture(j10 <= 0 ? this.f62529a.submit((Callable) scheduledRunnable) : this.f62529a.schedule((Callable) scheduledRunnable, j10, timeUnit));
                return scheduledRunnable;
            } catch (RejectedExecutionException e10) {
                dispose();
                dy.a.r(e10);
                return EmptyDisposable.INSTANCE;
            }
        }
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f62526f = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        f62525e = new RxThreadFactory("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx3.single-priority", 5).intValue())), true);
    }

    public h() {
        this(f62525e);
    }

    static ScheduledExecutorService g(ThreadFactory threadFactory) {
        return g.a(threadFactory);
    }

    @Override
    public Scheduler.Worker c() {
        return new a((ScheduledExecutorService) this.f62528d.get());
    }

    @Override
    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j10, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(dy.a.t(runnable), true);
        try {
            scheduledDirectTask.setFuture(j10 <= 0 ? ((ScheduledExecutorService) this.f62528d.get()).submit(scheduledDirectTask) : ((ScheduledExecutorService) this.f62528d.get()).schedule(scheduledDirectTask, j10, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e10) {
            dy.a.r(e10);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override
    public io.reactivex.rxjava3.disposables.c f(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        Runnable runnableT = dy.a.t(runnable);
        if (j11 > 0) {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(runnableT, true);
            try {
                scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) this.f62528d.get()).scheduleAtFixedRate(scheduledDirectPeriodicTask, j10, j11, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e10) {
                dy.a.r(e10);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f62528d.get();
        c cVar = new c(runnableT, scheduledExecutorService);
        try {
            cVar.b(j10 <= 0 ? scheduledExecutorService.submit(cVar) : scheduledExecutorService.schedule(cVar, j10, timeUnit));
            return cVar;
        } catch (RejectedExecutionException e11) {
            dy.a.r(e11);
            return EmptyDisposable.INSTANCE;
        }
    }

    public h(ThreadFactory threadFactory) {
        AtomicReference atomicReference = new AtomicReference();
        this.f62528d = atomicReference;
        this.f62527c = threadFactory;
        atomicReference.lazySet(g(threadFactory));
    }
}
