package io.reactivex.internal.subscriptions;

import defpackage.f2a;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class AsyncSubscription extends AtomicLong implements f2a, rc2 {
    private static final long serialVersionUID = 7028635084060361255L;
    final AtomicReference<f2a> actual;
    final AtomicReference<rc2> resource;

    public AsyncSubscription() {
        this.resource = new AtomicReference<>();
        this.actual = new AtomicReference<>();
    }

    @Override
    public void cancel() {
        dispose();
    }

    @Override
    public void dispose() {
        SubscriptionHelper.cancel(this.actual);
        DisposableHelper.dispose(this.resource);
    }

    @Override
    public boolean isDisposed() {
        return this.actual.get() == SubscriptionHelper.CANCELLED;
    }

    public boolean replaceResource(rc2 rc2Var) {
        return DisposableHelper.replace(this.resource, rc2Var);
    }

    @Override
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.actual, this, j);
    }

    public boolean setResource(rc2 rc2Var) {
        return DisposableHelper.set(this.resource, rc2Var);
    }

    public void setSubscription(f2a f2aVar) {
        SubscriptionHelper.deferredSetOnce(this.actual, this, f2aVar);
    }

    public AsyncSubscription(rc2 rc2Var) {
        this();
        this.resource.lazySet(rc2Var);
    }
}
