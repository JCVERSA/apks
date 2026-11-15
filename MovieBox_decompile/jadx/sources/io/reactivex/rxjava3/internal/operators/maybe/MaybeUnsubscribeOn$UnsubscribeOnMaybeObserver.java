package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<T> extends AtomicReference<c> implements h, c, Runnable {
    private static final long serialVersionUID = 3256698449646456986L;
    final h downstream;

    c f62382ds;
    final Scheduler scheduler;

    MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver(h hVar, Scheduler scheduler) {
        this.downstream = hVar;
        this.scheduler = scheduler;
    }

    @Override
    public void dispose() {
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        c andSet = getAndSet(disposableHelper);
        if (andSet != disposableHelper) {
            this.f62382ds = andSet;
            this.scheduler.d(this);
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
        this.f62382ds.dispose();
    }
}
