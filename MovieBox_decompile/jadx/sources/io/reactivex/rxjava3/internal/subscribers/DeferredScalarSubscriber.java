package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements io.reactivex.rxjava3.core.f {
    private static final long serialVersionUID = 2984505488220891551L;
    protected boolean hasValue;
    protected i00.d upstream;

    public DeferredScalarSubscriber(i00.c cVar) {
        super(cVar);
    }

    @Override
    public void cancel() {
        super.cancel();
        this.upstream.cancel();
    }

    @Override
    public void onComplete() {
        if (this.hasValue) {
            complete(this.value);
        } else {
            this.downstream.onComplete();
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.value = null;
        this.downstream.onError(th2);
    }

    @Override
    public abstract void onNext(Object obj);

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}
