package io.reactivex.rxjava3.internal.subscriptions;

import i00.d;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class AsyncSubscription extends AtomicLong implements d, c {
    private static final long serialVersionUID = 7028635084060361255L;
    final AtomicReference<d> actual;
    final AtomicReference<c> resource;

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

    public boolean replaceResource(c cVar) {
        return DisposableHelper.replace(this.resource, cVar);
    }

    @Override
    public void request(long j10) {
        SubscriptionHelper.deferredRequest(this.actual, this, j10);
    }

    public boolean setResource(c cVar) {
        return DisposableHelper.set(this.resource, cVar);
    }

    public void setSubscription(d dVar) {
        SubscriptionHelper.deferredSetOnce(this.actual, this, dVar);
    }

    public AsyncSubscription(c cVar) {
        this();
        this.resource.lazySet(cVar);
    }
}
