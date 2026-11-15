package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class e extends Scheduler.Worker {

    private final ScheduledExecutorService f62522a;

    volatile boolean f62523b;

    public e(ThreadFactory threadFactory) {
        this.f62522a = g.a(threadFactory);
    }

    public ScheduledRunnable a(Runnable runnable, long j10, TimeUnit timeUnit, io.reactivex.rxjava3.disposables.d dVar) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(dy.a.t(runnable), dVar);
        if (dVar != null && !dVar.b(scheduledRunnable)) {
            return scheduledRunnable;
        }
        try {
            scheduledRunnable.setFuture(j10 <= 0 ? this.f62522a.submit((Callable) scheduledRunnable) : this.f62522a.schedule((Callable) scheduledRunnable, j10, timeUnit));
        } catch (RejectedExecutionException e10) {
            if (dVar != null) {
                dVar.a(scheduledRunnable);
            }
            dy.a.r(e10);
        }
        return scheduledRunnable;
    }

    public io.reactivex.rxjava3.disposables.c b(Runnable runnable, long j10, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(dy.a.t(runnable), true);
        try {
            scheduledDirectTask.setFuture(j10 <= 0 ? this.f62522a.submit(scheduledDirectTask) : this.f62522a.schedule(scheduledDirectTask, j10, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e10) {
            dy.a.r(e10);
            return EmptyDisposable.INSTANCE;
        }
    }

    public io.reactivex.rxjava3.disposables.c c(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        Runnable runnableT = dy.a.t(runnable);
        if (j11 <= 0) {
            c cVar = new c(runnableT, this.f62522a);
            try {
                cVar.b(j10 <= 0 ? this.f62522a.submit(cVar) : this.f62522a.schedule(cVar, j10, timeUnit));
                return cVar;
            } catch (RejectedExecutionException e10) {
                dy.a.r(e10);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(runnableT, true);
        try {
            scheduledDirectPeriodicTask.setFuture(this.f62522a.scheduleAtFixedRate(scheduledDirectPeriodicTask, j10, j11, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e11) {
            dy.a.r(e11);
            return EmptyDisposable.INSTANCE;
        }
    }

    public void d() {
        if (this.f62523b) {
            return;
        }
        this.f62523b = true;
        this.f62522a.shutdown();
    }

    @Override
    public void dispose() {
        if (this.f62523b) {
            return;
        }
        this.f62523b = true;
        this.f62522a.shutdownNow();
    }

    @Override
    public boolean isDisposed() {
        return this.f62523b;
    }

    @Override
    public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable) {
        return schedule(runnable, 0L, null);
    }

    @Override
    public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        return this.f62523b ? EmptyDisposable.INSTANCE : a(runnable, j10, timeUnit, null);
    }
}
