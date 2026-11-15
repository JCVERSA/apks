package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import io.reactivex.Scheduler;
import java.util.concurrent.TimeUnit;

final class ObservableSampleTimed$SampleTimedNoLast<T> extends ObservableSampleTimed$SampleTimedObserver<T> {
    private static final long serialVersionUID = -7139995637533111443L;

    public ObservableSampleTimed$SampleTimedNoLast(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler scheduler) {
        super(pd7Var, j, timeUnit, scheduler);
    }

    @Override
    public void complete() {
        this.downstream.onComplete();
    }

    @Override
    public void run() {
        emit();
    }
}
