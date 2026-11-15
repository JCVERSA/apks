package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

public final class FlowableOnBackpressureError extends a {

    static final class BackpressureErrorSubscriber<T> extends AtomicLong implements io.reactivex.rxjava3.core.f, i00.d {
        private static final long serialVersionUID = -3176480756392482682L;
        boolean done;
        final i00.c downstream;
        i00.d upstream;

        BackpressureErrorSubscriber(i00.c cVar) {
            this.downstream = cVar;
        }

        @Override
        public void cancel() {
            this.upstream.cancel();
        }

        @Override
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.done) {
                dy.a.r(th2);
            } else {
                this.done = true;
                this.downstream.onError(th2);
            }
        }

        @Override
        public void onNext(T t10) {
            if (this.done) {
                return;
            }
            if (get() != 0) {
                this.downstream.onNext(t10);
                io.reactivex.rxjava3.internal.util.a.d(this, 1L);
            } else {
                this.upstream.cancel();
                onError(MissingBackpressureException.createDefault());
            }
        }

        @Override
        public void onSubscribe(i00.d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override
        public void request(long j10) {
            if (SubscriptionHelper.validate(j10)) {
                io.reactivex.rxjava3.internal.util.a.a(this, j10);
            }
        }
    }

    public FlowableOnBackpressureError(io.reactivex.rxjava3.core.e eVar) {
        super(eVar);
    }

    @Override
    protected void g(i00.c cVar) {
        this.f62372b.f(new BackpressureErrorSubscriber(cVar));
    }
}
