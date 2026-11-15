package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

final class FlowableSampleTimed$SampleTimedEmitLast<T> extends FlowableSampleTimed$SampleTimedSubscriber<T> {
    private static final long serialVersionUID = -7139995637533111443L;
    final AtomicInteger wip;

    FlowableSampleTimed$SampleTimedEmitLast(i00.c cVar, long j10, TimeUnit timeUnit, Scheduler scheduler, yx.f fVar) {
        super(cVar, j10, timeUnit, scheduler, fVar);
        this.wip = new AtomicInteger(1);
    }

    @Override
    void complete() {
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
