package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class SingleObserveOn$ObserveOnSingleObserver<T> extends AtomicReference<c> implements q, c, Runnable {
    private static final long serialVersionUID = 3528003840217436037L;
    final q downstream;
    Throwable error;
    final Scheduler scheduler;
    T value;

    SingleObserveOn$ObserveOnSingleObserver(q qVar, Scheduler scheduler) {
        this.downstream = qVar;
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
            this.downstream.onError(th2);
        } else {
            this.downstream.onSuccess(this.value);
        }
    }
}
