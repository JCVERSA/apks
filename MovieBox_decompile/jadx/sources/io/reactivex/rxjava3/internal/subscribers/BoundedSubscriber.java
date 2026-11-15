package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class BoundedSubscriber<T> extends AtomicReference<i00.d> implements io.reactivex.rxjava3.core.f, i00.d, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -7251123623727029452L;
    final int bufferSize;
    int consumed;
    final int limit;
    final yx.a onComplete;
    final yx.f onError;
    final yx.f onNext;
    final yx.f onSubscribe;

    public BoundedSubscriber(yx.f fVar, yx.f fVar2, yx.a aVar, yx.f fVar3, int i10) {
        this.onNext = fVar;
        this.onError = fVar2;
        this.onComplete = aVar;
        this.onSubscribe = fVar3;
        this.bufferSize = i10;
        this.limit = i10 - (i10 >> 2);
    }

    @Override
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override
    public void dispose() {
        cancel();
    }

    public boolean hasCustomOnError() {
        return this.onError != Functions.f62328f;
    }

    @Override
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
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
    }

    @Override
    public void onError(Throwable th2) {
        i00.d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar == subscriptionHelper) {
            dy.a.r(th2);
            return;
        }
        lazySet(subscriptionHelper);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            dy.a.r(new CompositeException(th2, th3));
        }
    }

    @Override
    public void onNext(T t10) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t10);
            int i10 = this.consumed + 1;
            if (i10 == this.limit) {
                this.consumed = 0;
                get().request(this.limit);
            } else {
                this.consumed = i10;
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            get().cancel();
            onError(th2);
        }
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dVar.cancel();
                onError(th2);
            }
        }
    }

    @Override
    public void request(long j10) {
        get().request(j10);
    }
}
