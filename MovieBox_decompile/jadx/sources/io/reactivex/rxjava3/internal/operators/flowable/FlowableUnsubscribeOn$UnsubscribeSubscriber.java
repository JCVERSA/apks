package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;

final class FlowableUnsubscribeOn$UnsubscribeSubscriber<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.f, i00.d {
    private static final long serialVersionUID = 1015244841293359600L;
    final i00.c downstream;
    final Scheduler scheduler;
    i00.d upstream;

    final class Cancellation implements Runnable {
        Cancellation() {
        }

        @Override
        public void run() {
            FlowableUnsubscribeOn$UnsubscribeSubscriber.this.upstream.cancel();
        }
    }

    FlowableUnsubscribeOn$UnsubscribeSubscriber(i00.c cVar, Scheduler scheduler) {
        this.downstream = cVar;
        this.scheduler = scheduler;
    }

    @Override
    public void cancel() {
        if (compareAndSet(false, true)) {
            this.scheduler.d(new Cancellation());
        }
    }

    @Override
    public void onComplete() {
        if (get()) {
            return;
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th2) {
        if (get()) {
            dy.a.r(th2);
        } else {
            this.downstream.onError(th2);
        }
    }

    @Override
    public void onNext(T t10) {
        if (get()) {
            return;
        }
        this.downstream.onNext(t10);
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void request(long j10) {
        this.upstream.request(j10);
    }
}
