package io.reactivex.internal.operators.maybe;

import defpackage.k96;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<T> extends AtomicReference<rc2> implements k96, rc2, Runnable {
    private static final long serialVersionUID = 3256698449646456986L;
    final k96 downstream;
    rc2 ds;
    final Scheduler scheduler;

    public MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver(k96 k96Var, Scheduler scheduler) {
        this.downstream = k96Var;
        this.scheduler = scheduler;
    }

    @Override
    public void dispose() {
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        rc2 andSet = getAndSet(disposableHelper);
        if (andSet != disposableHelper) {
            this.ds = andSet;
            this.scheduler.c(this);
        }
    }

    @Override
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override
    public void onComplete() {
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        this.downstream.onError(th);
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.setOnce(this, rc2Var)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void onSuccess(T t) {
        this.downstream.onSuccess(t);
    }

    @Override
    public void run() {
        this.ds.dispose();
    }
}
