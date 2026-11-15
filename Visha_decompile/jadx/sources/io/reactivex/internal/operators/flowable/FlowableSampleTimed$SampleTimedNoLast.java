package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import io.reactivex.Scheduler;
import java.util.concurrent.TimeUnit;

final class FlowableSampleTimed$SampleTimedNoLast<T> extends FlowableSampleTimed$SampleTimedSubscriber<T> {
    private static final long serialVersionUID = -7139995637533111443L;

    public FlowableSampleTimed$SampleTimedNoLast(d2a d2aVar, long j, TimeUnit timeUnit, Scheduler scheduler) {
        super(d2aVar, j, timeUnit, scheduler);
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
