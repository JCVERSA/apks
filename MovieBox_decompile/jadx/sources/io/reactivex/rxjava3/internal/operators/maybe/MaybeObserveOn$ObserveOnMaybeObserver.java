package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class MaybeObserveOn$ObserveOnMaybeObserver<T> extends AtomicReference<c> implements h, c, Runnable {
    private static final long serialVersionUID = 8571289934935992137L;
    final h downstream;
    Throwable error;
    final Scheduler scheduler;
    T value;

    MaybeObserveOn$ObserveOnMaybeObserver(h hVar, Scheduler scheduler) {
        this.downstream = hVar;
        this.scheduler = scheduler;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override
    public void onComplete() {
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override
    public void onError(Throwable th2) {
        this.error = th2;
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override
    public void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void onSuccess(T t10) {
        this.value = t10;
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override
    public void run() {
        Throwable th2 = this.error;
        if (th2 != null) {
            this.error = null;
            this.downstream.onError(th2);
            return;
        }
        T t10 = this.value;
        if (t10 == null) {
            this.downstream.onComplete();
        } else {
            this.value = null;
            this.downstream.onSuccess(t10);
        }
    }
}
