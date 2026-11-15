package io.reactivex.internal.schedulers;

import defpackage.l15;
import defpackage.rc2;
import defpackage.sc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class a extends Scheduler.Worker implements rc2 {
    public final ScheduledExecutorService b;
    public volatile boolean c;

    public a(ThreadFactory threadFactory) {
        this.b = SchedulerPoolFactory.a(threadFactory);
    }

    public ScheduledRunnable a(Runnable runnable, long j, TimeUnit timeUnit, sc2 sc2Var) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(yw8.v(runnable), sc2Var);
        if (sc2Var != null && !sc2Var.b(scheduledRunnable)) {
            return scheduledRunnable;
        }
        try {
            scheduledRunnable.setFuture(j <= 0 ? this.b.submit((Callable) scheduledRunnable) : this.b.schedule((Callable) scheduledRunnable, j, timeUnit));
        } catch (RejectedExecutionException e) {
            if (sc2Var != null) {
                sc2Var.c(scheduledRunnable);
            }
            yw8.s(e);
        }
        return scheduledRunnable;
    }

    public rc2 b(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(yw8.v(runnable));
        try {
            scheduledDirectTask.setFuture(j <= 0 ? this.b.submit(scheduledDirectTask) : this.b.schedule(scheduledDirectTask, j, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e) {
            yw8.s(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    public rc2 c(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Runnable runnableV = yw8.v(runnable);
        if (j2 <= 0) {
            l15 l15Var = new l15(runnableV, this.b);
            try {
                l15Var.b(j <= 0 ? this.b.submit(l15Var) : this.b.schedule(l15Var, j, timeUnit));
                return l15Var;
            } catch (RejectedExecutionException e) {
                yw8.s(e);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(runnableV);
        try {
            scheduledDirectPeriodicTask.setFuture(this.b.scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e2) {
            yw8.s(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    public void d() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.b.shutdown();
    }

    @Override
    public void dispose() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.b.shutdownNow();
    }

    @Override
    public boolean isDisposed() {
        return this.c;
    }

    @Override
    public rc2 schedule(Runnable runnable) {
        return schedule(runnable, 0L, null);
    }

    @Override
    public rc2 schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.c ? EmptyDisposable.INSTANCE : a(runnable, j, timeUnit, null);
    }
}
