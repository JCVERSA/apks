package io.reactivex.internal.operators.single;

import defpackage.in9;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class SingleUnsubscribeOn$UnsubscribeOnSingleObserver<T> extends AtomicReference<rc2> implements in9, rc2, Runnable {
    private static final long serialVersionUID = 3256698449646456986L;
    final in9 downstream;
    rc2 ds;
    final Scheduler scheduler;

    public SingleUnsubscribeOn$UnsubscribeOnSingleObserver(in9 in9Var, Scheduler scheduler) {
        this.downstream = in9Var;
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
