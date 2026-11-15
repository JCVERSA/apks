package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class MaybeTimer$TimerDisposable extends AtomicReference<c> implements c, Runnable {
    private static final long serialVersionUID = 2875964065294031672L;
    final h downstream;

    MaybeTimer$TimerDisposable(h hVar) {
        this.downstream = hVar;
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
        this.downstream.onSuccess(0L);
    }

    void setFuture(c cVar) {
        DisposableHelper.replace(this, cVar);
    }
}
