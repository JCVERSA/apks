package io.reactivex.internal.subscribers;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.y14;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements y14 {
    private static final long serialVersionUID = 2984505488220891551L;
    protected boolean hasValue;
    protected f2a upstream;

    public DeferredScalarSubscriber(d2a d2aVar) {
        super(d2aVar);
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
    public void onError(Throwable th) {
        this.value = null;
        this.downstream.onError(th);
    }

    @Override
    public abstract void onNext(Object obj);

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
            f2aVar.request(Long.MAX_VALUE);
        }
    }
}
