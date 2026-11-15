package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

public final class ConsumerSingleObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements q, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -7012088219455310787L;
    final yx.f onError;
    final yx.f onSuccess;

    public ConsumerSingleObserver(yx.f fVar, yx.f fVar2) {
        this.onSuccess = fVar;
        this.onError = fVar2;
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
    public void onError(Throwable th2) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            dy.a.r(new CompositeException(th2, th3));
        }
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override
    public void onSuccess(T t10) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onSuccess.accept(t10);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dy.a.r(th2);
        }
    }
}
