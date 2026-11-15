package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.TimeUnit;

final class ObservableSampleTimed$SampleTimedNoLast<T> extends ObservableSampleTimed$SampleTimedObserver<T> {
    private static final long serialVersionUID = -7139995637533111443L;

    ObservableSampleTimed$SampleTimedNoLast(io.reactivex.rxjava3.core.o oVar, long j10, TimeUnit timeUnit, Scheduler scheduler, yx.f fVar) {
        super(oVar, j10, timeUnit, scheduler, fVar);
    }

    @Override
    void complete() {
        this.downstream.onComplete();
    }

    @Override
    public void run() {
        emit();
    }
}
