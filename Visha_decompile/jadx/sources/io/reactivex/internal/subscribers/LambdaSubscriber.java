package io.reactivex.internal.subscribers;

import defpackage.d5;
import defpackage.f2a;
import defpackage.rc2;
import defpackage.re3;
import defpackage.y14;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class LambdaSubscriber<T> extends AtomicReference<f2a> implements y14, f2a, rc2 {
    private static final long serialVersionUID = -7251123623727029452L;
    final d5 onComplete;
    final zf1 onError;
    final zf1 onNext;
    final zf1 onSubscribe;

    public LambdaSubscriber(zf1 zf1Var, zf1 zf1Var2, d5 d5Var, zf1 zf1Var3) {
        this.onNext = zf1Var;
        this.onError = zf1Var2;
        this.onComplete = d5Var;
        this.onSubscribe = zf1Var3;
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
        return this.onError != Functions.f;
    }

    @Override
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override
    public void onComplete() {
        f2a f2aVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (f2aVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onComplete.run();
            } catch (Throwable th) {
                re3.b(th);
                yw8.s(th);
            }
        }
    }

    @Override
    public void onError(Throwable th) {
        f2a f2aVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (f2aVar == subscriptionHelper) {
            yw8.s(th);
            return;
        }
        lazySet(subscriptionHelper);
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            re3.b(th2);
            yw8.s(new CompositeException(th, th2));
        }
    }

    @Override
    public void onNext(T t) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t);
        } catch (Throwable th) {
            re3.b(th);
            get().cancel();
            onError(th);
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.setOnce(this, f2aVar)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th) {
                re3.b(th);
                f2aVar.cancel();
                onError(th);
            }
        }
    }

    @Override
    public void request(long j) {
        get().request(j);
    }
}
