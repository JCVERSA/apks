package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.r14;
import defpackage.x2;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;

public final class FlowableUnsubscribeOn extends x2 {
    public final Scheduler d;

    public static final class UnsubscribeSubscriber<T> extends AtomicBoolean implements y14, f2a {
        private static final long serialVersionUID = 1015244841293359600L;
        final d2a downstream;
        final Scheduler scheduler;
        f2a upstream;

        public final class Cancellation implements Runnable {
            public Cancellation() {
            }

            @Override
            public void run() {
                UnsubscribeSubscriber.this.upstream.cancel();
            }
        }

        public UnsubscribeSubscriber(d2a d2aVar, Scheduler scheduler) {
            this.downstream = d2aVar;
            this.scheduler = scheduler;
        }

        @Override
        public void cancel() {
            if (compareAndSet(false, true)) {
                this.scheduler.c(new Cancellation());
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
        public void onError(Throwable th) {
            if (get()) {
                yw8.s(th);
            } else {
                this.downstream.onError(th);
            }
        }

        @Override
        public void onNext(T t) {
            if (get()) {
                return;
            }
            this.downstream.onNext(t);
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
                this.upstream = f2aVar;
                this.downstream.onSubscribe(this);
            }
        }

        @Override
        public void request(long j) {
            this.upstream.request(j);
        }
    }

    public FlowableUnsubscribeOn(r14 r14Var, Scheduler scheduler) {
        super(r14Var);
        this.d = scheduler;
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.p(new UnsubscribeSubscriber(d2aVar, this.d));
    }
}
