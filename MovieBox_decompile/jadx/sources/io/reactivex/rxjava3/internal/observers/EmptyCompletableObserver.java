package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class EmptyCompletableObserver extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.b, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -7545121636549663526L;

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return false;
    }

    @Override
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override
    public void onError(Throwable th2) {
        lazySet(DisposableHelper.DISPOSED);
        dy.a.r(new OnErrorNotImplementedException(th2));
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
