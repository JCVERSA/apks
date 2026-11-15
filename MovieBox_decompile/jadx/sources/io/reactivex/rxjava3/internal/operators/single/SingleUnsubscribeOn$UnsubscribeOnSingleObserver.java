package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class SingleUnsubscribeOn$UnsubscribeOnSingleObserver<T> extends AtomicReference<c> implements q, c, Runnable {
    private static final long serialVersionUID = 3256698449646456986L;
    final q downstream;

    c f62472ds;
    final Scheduler scheduler;

    SingleUnsubscribeOn$UnsubscribeOnSingleObserver(q qVar, Scheduler scheduler) {
        this.downstream = qVar;
        this.scheduler = scheduler;
    }

    @Override
    public void dispose() {
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        c andSet = getAndSet(disposableHelper);
        if (andSet != disposableHelper) {
            this.f62472ds = andSet;
            this.scheduler.d(this);
        }
    }

    @Override
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override
    public void onError(Throwable th2) {
        this.downstream.onError(th2);
    }

    @Override
    public void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void onSuccess(T t10) {
        this.downstream.onSuccess(t10);
    }

    @Override
    public void run() {
        this.f62472ds.dispose();
    }
}
