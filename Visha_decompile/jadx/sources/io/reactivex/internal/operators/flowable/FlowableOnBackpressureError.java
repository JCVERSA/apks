package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.r14;
import defpackage.x2;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

public final class FlowableOnBackpressureError extends x2 {

    public static final class BackpressureErrorSubscriber<T> extends AtomicLong implements y14, f2a {
        private static final long serialVersionUID = -3176480756392482682L;
        boolean done;
        final d2a downstream;
        f2a upstream;

        public BackpressureErrorSubscriber(d2a d2aVar) {
            this.downstream = d2aVar;
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
        public void onError(Throwable th) {
            if (this.done) {
                yw8.s(th);
            } else {
                this.done = true;
                this.downstream.onError(th);
            }
        }

        @Override
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (get() != 0) {
                this.downstream.onNext(t);
                i50.d(this, 1L);
            } else {
                this.upstream.cancel();
                onError(new MissingBackpressureException("could not emit value due to lack of requests"));
            }
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
                this.upstream = f2aVar;
                this.downstream.onSubscribe(this);
                f2aVar.request(Long.MAX_VALUE);
            }
        }

        @Override
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                i50.a(this, j);
            }
        }
    }

    public FlowableOnBackpressureError(r14 r14Var) {
        super(r14Var);
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.p(new BackpressureErrorSubscriber(d2aVar));
    }
}
