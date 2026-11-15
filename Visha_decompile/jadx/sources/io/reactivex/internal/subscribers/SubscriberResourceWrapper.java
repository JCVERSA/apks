package io.reactivex.internal.subscribers;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.rc2;
import defpackage.y14;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class SubscriberResourceWrapper<T> extends AtomicReference<rc2> implements y14, rc2, f2a {
    private static final long serialVersionUID = -8612022020200669122L;
    final d2a downstream;
    final AtomicReference<f2a> upstream = new AtomicReference<>();

    public SubscriberResourceWrapper(d2a d2aVar) {
        this.downstream = d2aVar;
    }

    @Override
    public void cancel() {
        dispose();
    }

    @Override
    public void dispose() {
        SubscriptionHelper.cancel(this.upstream);
        DisposableHelper.dispose(this);
    }

    @Override
    public boolean isDisposed() {
        return this.upstream.get() == SubscriptionHelper.CANCELLED;
    }

    @Override
    public void onComplete() {
        DisposableHelper.dispose(this);
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        DisposableHelper.dispose(this);
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        this.downstream.onNext(t);
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.setOnce(this.upstream, f2aVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            this.upstream.get().request(j);
        }
    }

    public void setResource(rc2 rc2Var) {
        DisposableHelper.set(this, rc2Var);
    }
}
