package kotlinx.coroutines;

import defpackage.cr0;
import defpackage.d4;
import defpackage.fr0;
import defpackage.mc2;
import defpackage.n95;
import defpackage.se3;
import defpackage.tc2;
import defpackage.uc2;
import defpackage.zq0;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class i extends h implements e {
    public final Executor c;

    public i(Executor executor) {
        this.c = executor;
        if (b() instanceof ScheduledThreadPoolExecutor) {
            ((ScheduledThreadPoolExecutor) b()).setRemoveOnCancelPolicy(true);
        }
    }

    public final void a(kotlin.coroutines.d dVar, RejectedExecutionException rejectedExecutionException) {
        n95.c(dVar, se3.a("The task was rejected", rejectedExecutionException));
    }

    public Executor b() {
        return this.c;
    }

    @Override
    public void close() {
        Executor executorB = b();
        ExecutorService executorService = executorB instanceof ExecutorService ? (ExecutorService) executorB : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override
    public void dispatch(kotlin.coroutines.d dVar, Runnable runnable) {
        try {
            Executor executorB = b();
            d4.a();
            executorB.execute(runnable);
        } catch (RejectedExecutionException e) {
            d4.a();
            a(dVar, e);
            mc2.b().dispatch(dVar, runnable);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof i) && ((i) obj).b() == b();
    }

    public int hashCode() {
        return System.identityHashCode(b());
    }

    @Override
    public uc2 invokeOnTimeout(long j, Runnable runnable, kotlin.coroutines.d dVar) {
        Executor executorB = b();
        ScheduledExecutorService scheduledExecutorService = executorB instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorB : null;
        ScheduledFuture scheduledFutureK = scheduledExecutorService != null ? k(scheduledExecutorService, runnable, dVar, j) : null;
        return scheduledFutureK != null ? new tc2(scheduledFutureK) : DefaultExecutor.INSTANCE.invokeOnTimeout(j, runnable, dVar);
    }

    public final ScheduledFuture k(ScheduledExecutorService scheduledExecutorService, Runnable runnable, kotlin.coroutines.d dVar, long j) {
        try {
            return scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            a(dVar, e);
            return null;
        }
    }

    @Override
    public void scheduleResumeAfterDelay(long j, cr0 cr0Var) {
        Executor executorB = b();
        ScheduledExecutorService scheduledExecutorService = executorB instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorB : null;
        ScheduledFuture scheduledFutureK = scheduledExecutorService != null ? k(scheduledExecutorService, new ResumeUndispatchedRunnable(this, cr0Var), cr0Var.getContext(), j) : null;
        if (scheduledFutureK != null) {
            fr0.c(cr0Var, new zq0(scheduledFutureK));
        } else {
            DefaultExecutor.INSTANCE.scheduleResumeAfterDelay(j, cr0Var);
        }
    }

    @Override
    public String toString() {
        return b().toString();
    }
}
