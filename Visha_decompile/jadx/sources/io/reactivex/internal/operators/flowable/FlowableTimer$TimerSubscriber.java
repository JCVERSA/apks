package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.rc2;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableTimer$TimerSubscriber extends AtomicReference<rc2> implements f2a, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    final d2a downstream;
    volatile boolean requested;

    public FlowableTimer$TimerSubscriber(d2a d2aVar) {
        this.downstream = d2aVar;
    }

    @Override
    public void cancel() {
        DisposableHelper.dispose(this);
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            this.requested = true;
        }
    }

    @Override
    public void run() {
        if (get() != DisposableHelper.DISPOSED) {
            if (!this.requested) {
                lazySet(EmptyDisposable.INSTANCE);
                this.downstream.onError(new MissingBackpressureException("Can't deliver value due to lack of requests"));
            } else {
                this.downstream.onNext(0L);
                lazySet(EmptyDisposable.INSTANCE);
                this.downstream.onComplete();
            }
        }
    }

    public void setResource(rc2 rc2Var) {
        DisposableHelper.trySet(this, rc2Var);
    }
}
