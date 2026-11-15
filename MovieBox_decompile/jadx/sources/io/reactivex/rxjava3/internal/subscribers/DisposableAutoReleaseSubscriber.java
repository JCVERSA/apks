package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class DisposableAutoReleaseSubscriber<T> extends AtomicReference<i00.d> implements io.reactivex.rxjava3.core.f, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 8924480688481408726L;
    final AtomicReference<io.reactivex.rxjava3.disposables.d> composite;
    final yx.a onComplete;
    final yx.f onError;
    final yx.f onNext;

    public DisposableAutoReleaseSubscriber(io.reactivex.rxjava3.disposables.d dVar, yx.f fVar, yx.f fVar2, yx.a aVar) {
        this.onNext = fVar;
        this.onError = fVar2;
        this.onComplete = aVar;
        this.composite = new AtomicReference<>(dVar);
    }

    @Override
    public void dispose() {
        SubscriptionHelper.cancel(this);
        removeSelf();
    }

    public boolean hasCustomOnError() {
        return this.onError != Functions.f62328f;
    }

    @Override
    public boolean isDisposed() {
        return SubscriptionHelper.CANCELLED == get();
    }

    @Override
    public void onComplete() {
        i00.d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onComplete.run();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dy.a.r(th2);
            }
        }
        removeSelf();
    }

    @Override
    public void onError(Throwable th2) {
        i00.d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onError.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                dy.a.r(new CompositeException(th2, th3));
            }
        } else {
            dy.a.r(th2);
        }
        removeSelf();
    }

    @Override
    public void onNext(T t10) {
        if (get() != SubscriptionHelper.CANCELLED) {
            try {
                this.onNext.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                get().cancel();
                onError(th2);
            }
        }
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            dVar.request(Long.MAX_VALUE);
        }
    }

    void removeSelf() {
        io.reactivex.rxjava3.disposables.d andSet = this.composite.getAndSet(null);
        if (andSet != null) {
            andSet.c(this);
        }
    }
}
