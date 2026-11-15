package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

public final class FlowableOnBackpressureDrop extends a implements yx.f {

    final yx.f f62364c;

    static final class BackpressureDropSubscriber<T> extends AtomicLong implements io.reactivex.rxjava3.core.f, i00.d {
        private static final long serialVersionUID = -6246093802440953054L;
        boolean done;
        final i00.c downstream;
        final yx.f onDrop;
        i00.d upstream;

        BackpressureDropSubscriber(i00.c cVar, yx.f fVar) {
            this.downstream = cVar;
            this.onDrop = fVar;
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
                return;
            }
            try {
                this.onDrop.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cancel();
                onError(th2);
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

    public FlowableOnBackpressureDrop(io.reactivex.rxjava3.core.e eVar) {
        super(eVar);
        this.f62364c = this;
    }

    @Override
    public void accept(Object obj) {
    }

    @Override
    protected void g(i00.c cVar) {
        this.f62372b.f(new BackpressureDropSubscriber(cVar, this.f62364c));
    }
}
