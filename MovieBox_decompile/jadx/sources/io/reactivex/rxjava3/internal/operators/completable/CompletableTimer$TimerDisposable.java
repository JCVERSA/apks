package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.b;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class CompletableTimer$TimerDisposable extends AtomicReference<c> implements c, Runnable {
    private static final long serialVersionUID = 3167244060586201109L;
    final b downstream;

    CompletableTimer$TimerDisposable(b bVar) {
        this.downstream = bVar;
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
    public void run() {
        this.downstream.onComplete();
    }

    void setFuture(c cVar) {
        DisposableHelper.replace(this, cVar);
    }
}
