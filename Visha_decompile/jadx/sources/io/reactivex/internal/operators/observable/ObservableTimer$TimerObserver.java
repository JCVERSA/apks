package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableTimer$TimerObserver extends AtomicReference<rc2> implements rc2, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    final pd7 downstream;

    public ObservableTimer$TimerObserver(pd7 pd7Var) {
        this.downstream = pd7Var;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void run() {
        if (isDisposed()) {
            return;
        }
        this.downstream.onNext(0L);
        lazySet(EmptyDisposable.INSTANCE);
        this.downstream.onComplete();
    }

    public void setResource(rc2 rc2Var) {
        DisposableHelper.trySet(this, rc2Var);
    }
}
