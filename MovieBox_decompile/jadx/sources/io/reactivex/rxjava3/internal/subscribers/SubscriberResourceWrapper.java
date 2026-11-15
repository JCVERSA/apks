package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class SubscriberResourceWrapper<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.f, io.reactivex.rxjava3.disposables.c, i00.d {
    private static final long serialVersionUID = -8612022020200669122L;
    final i00.c downstream;
    final AtomicReference<i00.d> upstream = new AtomicReference<>();

    public SubscriberResourceWrapper(i00.c cVar) {
        this.downstream = cVar;
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
    public void onError(Throwable th2) {
        DisposableHelper.dispose(this);
        this.downstream.onError(th2);
    }

    @Override
    public void onNext(T t10) {
        this.downstream.onNext(t10);
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            this.upstream.get().request(j10);
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.set(this, cVar);
    }
}
