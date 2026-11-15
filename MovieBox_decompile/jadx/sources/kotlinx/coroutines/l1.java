package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.coroutines.CoroutineContext;

public final class l1 extends k1 implements t0 {

    private final Executor f64928b;

    public l1(Executor executor) {
        this.f64928b = executor;
        if (p() instanceof ScheduledThreadPoolExecutor) {
            ((ScheduledThreadPoolExecutor) p()).setRemoveOnCancelPolicy(true);
        }
    }

    private final void q(CoroutineContext coroutineContext, RejectedExecutionException rejectedExecutionException) {
        v1.c(coroutineContext, i1.a("The task was rejected", rejectedExecutionException));
    }

    private final ScheduledFuture r(ScheduledExecutorService scheduledExecutorService, Runnable runnable, CoroutineContext coroutineContext, long j10) {
        try {
            return scheduledExecutorService.schedule(runnable, j10, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            q(coroutineContext, e10);
            return null;
        }
    }

    @Override
    public void close() {
        Executor executorP = p();
        ExecutorService executorService = executorP instanceof ExecutorService ? (ExecutorService) executorP : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableH;
        try {
            Executor executorP = p();
            b bVar = c.f64678a;
            if (bVar == null || (runnableH = bVar.h(runnable)) == null) {
                runnableH = runnable;
            }
            executorP.execute(runnableH);
        } catch (RejectedExecutionException e10) {
            b bVar2 = c.f64678a;
            if (bVar2 != null) {
                bVar2.e();
            }
            q(coroutineContext, e10);
            y0.b().dispatch(coroutineContext, runnable);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof l1) && ((l1) obj).p() == p();
    }

    public int hashCode() {
        return System.identityHashCode(p());
    }

    @Override
    public a1 invokeOnTimeout(long j10, Runnable runnable, CoroutineContext coroutineContext) {
        Executor executorP = p();
        ScheduledExecutorService scheduledExecutorService = executorP instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorP : null;
        ScheduledFuture scheduledFutureR = scheduledExecutorService != null ? r(scheduledExecutorService, runnable, coroutineContext, j10) : null;
        return scheduledFutureR != null ? new z0(scheduledFutureR) : DefaultExecutor.INSTANCE.invokeOnTimeout(j10, runnable, coroutineContext);
    }

    @Override
    public Executor p() {
        return this.f64928b;
    }

    @Override
    public void scheduleResumeAfterDelay(long j10, n nVar) {
        Executor executorP = p();
        ScheduledExecutorService scheduledExecutorService = executorP instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorP : null;
        ScheduledFuture scheduledFutureR = scheduledExecutorService != null ? r(scheduledExecutorService, new ResumeUndispatchedRunnable(this, nVar), nVar.getF64063a(), j10) : null;
        if (scheduledFutureR != null) {
            q.c(nVar, new l(scheduledFutureR));
        } else {
            DefaultExecutor.INSTANCE.scheduleResumeAfterDelay(j10, nVar);
        }
    }

    @Override
    public String toString() {
        return p().toString();
    }
}
