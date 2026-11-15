package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

public final class CallbackCompletableObserver extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.b, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -4361286194466301354L;
    final yx.a onComplete;
    final yx.f onError;

    public CallbackCompletableObserver(yx.f fVar, yx.a aVar) {
        this.onError = fVar;
        this.onComplete = aVar;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return this.onError != Functions.f62328f;
    }

    @Override
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void onComplete() {
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dy.a.r(th2);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override
    public void onError(Throwable th2) {
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            dy.a.r(th3);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
