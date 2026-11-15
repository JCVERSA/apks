package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;
import yx.a;
import yx.f;

public final class MaybeCallbackObserver<T> extends AtomicReference<c> implements h, c {
    private static final long serialVersionUID = -6076952298809384986L;
    final a onComplete;
    final f onError;
    final f onSuccess;

    public MaybeCallbackObserver(f fVar, f fVar2, a aVar) {
        this.onSuccess = fVar;
        this.onError = fVar2;
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
        return DisposableHelper.isDisposed(get());
    }

    @Override
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dy.a.r(th2);
        }
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
    public void onSubscribe(c cVar) {
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
