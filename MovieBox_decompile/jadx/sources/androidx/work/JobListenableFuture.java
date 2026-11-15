package androidx.work;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

public final class JobListenableFuture implements com.google.common.util.concurrent.r {

    private final t1 f15054a;

    private final androidx.work.impl.utils.futures.a f15055b;

    public JobListenableFuture(t1 job, androidx.work.impl.utils.futures.a underlying) {
        Intrinsics.h(job, "job");
        Intrinsics.h(underlying, "underlying");
        this.f15054a = job;
        this.f15055b = underlying;
        job.invokeOnCompletion(new Function1<Throwable, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f64096a;
            }

            public final void invoke(Throwable th2) {
                if (th2 == null) {
                    if (!JobListenableFuture.this.f15055b.isDone()) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                } else {
                    if (th2 instanceof CancellationException) {
                        JobListenableFuture.this.f15055b.cancel(true);
                        return;
                    }
                    androidx.work.impl.utils.futures.a aVar = JobListenableFuture.this.f15055b;
                    Throwable cause = th2.getCause();
                    if (cause != null) {
                        th2 = cause;
                    }
                    aVar.u(th2);
                }
            }
        });
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        this.f15055b.addListener(runnable, executor);
    }

    public final void c(Object obj) {
        this.f15055b.t(obj);
    }

    @Override
    public boolean cancel(boolean z10) {
        return this.f15055b.cancel(z10);
    }

    @Override
    public Object get() {
        return this.f15055b.get();
    }

    @Override
    public boolean isCancelled() {
        return this.f15055b.isCancelled();
    }

    @Override
    public boolean isDone() {
        return this.f15055b.isDone();
    }

    @Override
    public Object get(long j10, TimeUnit timeUnit) {
        return this.f15055b.get(j10, timeUnit);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public JobListenableFuture(t1 t1Var, androidx.work.impl.utils.futures.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 2) != 0) {
            aVar = androidx.work.impl.utils.futures.a.x();
            Intrinsics.g(aVar, "create()");
        }
        this(t1Var, aVar);
    }
}
