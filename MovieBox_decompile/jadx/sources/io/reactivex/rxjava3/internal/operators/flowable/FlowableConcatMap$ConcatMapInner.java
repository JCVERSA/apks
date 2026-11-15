package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;

final class FlowableConcatMap$ConcatMapInner<R> extends SubscriptionArbiter implements io.reactivex.rxjava3.core.f {
    private static final long serialVersionUID = 897683679971470653L;
    final b parent;
    long produced;

    FlowableConcatMap$ConcatMapInner(b bVar) {
        super(false);
        this.parent = bVar;
    }

    @Override
    public void onComplete() {
        long j10 = this.produced;
        if (j10 != 0) {
            this.produced = 0L;
            produced(j10);
        }
        this.parent.innerComplete();
    }

    @Override
    public void onError(Throwable th2) {
        long j10 = this.produced;
        if (j10 != 0) {
            this.produced = 0L;
            produced(j10);
        }
        this.parent.innerError(th2);
    }

    @Override
    public void onNext(R r10) {
        this.produced++;
        this.parent.innerNext(r10);
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        setSubscription(dVar);
    }
}
