package io.reactivex.internal.subscribers;

import defpackage.d5;
import defpackage.f2a;
import defpackage.ie8;
import defpackage.rc2;
import defpackage.re3;
import defpackage.y14;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ForEachWhileSubscriber<T> extends AtomicReference<f2a> implements y14, rc2 {
    private static final long serialVersionUID = -4403180040475402120L;
    boolean done;
    final d5 onComplete;
    final zf1 onError;
    final ie8 onNext;

    public ForEachWhileSubscriber(ie8 ie8Var, zf1 zf1Var, d5 d5Var) {
        this.onNext = ie8Var;
        this.onError = zf1Var;
        this.onComplete = d5Var;
    }

    @Override
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        try {
            this.onComplete.run();
        } catch (Throwable th) {
            re3.b(th);
            yw8.s(th);
        }
    }

    @Override
    public void onError(Throwable th) {
        if (this.done) {
            yw8.s(th);
            return;
        }
        this.done = true;
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            re3.b(th2);
            yw8.s(new CompositeException(th, th2));
        }
    }

    @Override
    public void onNext(T t) {
        if (this.done) {
            return;
        }
        try {
            if (this.onNext.test(t)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th) {
            re3.b(th);
            dispose();
            onError(th);
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        SubscriptionHelper.setOnce(this, f2aVar, Long.MAX_VALUE);
    }
}
