package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import io.reactivex.Scheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

final class ObservableSampleTimed$SampleTimedEmitLast<T> extends ObservableSampleTimed$SampleTimedObserver<T> {
    private static final long serialVersionUID = -7139995637533111443L;
    final AtomicInteger wip;

    public ObservableSampleTimed$SampleTimedEmitLast(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler scheduler) {
        super(pd7Var, j, timeUnit, scheduler);
        this.wip = new AtomicInteger(1);
    }

    @Override
    public void complete() {
        emit();
        if (this.wip.decrementAndGet() == 0) {
            this.downstream.onComplete();
        }
    }

    @Override
    public void run() {
        if (this.wip.incrementAndGet() == 2) {
            emit();
            if (this.wip.decrementAndGet() == 0) {
                this.downstream.onComplete();
            }
        }
    }
}
