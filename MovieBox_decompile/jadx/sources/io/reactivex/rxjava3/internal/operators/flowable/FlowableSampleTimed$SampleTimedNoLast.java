package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.TimeUnit;

final class FlowableSampleTimed$SampleTimedNoLast<T> extends FlowableSampleTimed$SampleTimedSubscriber<T> {
    private static final long serialVersionUID = -7139995637533111443L;

    FlowableSampleTimed$SampleTimedNoLast(i00.c cVar, long j10, TimeUnit timeUnit, Scheduler scheduler, yx.f fVar) {
        super(cVar, j10, timeUnit, scheduler, fVar);
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
