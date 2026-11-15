package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

public final class LambdaObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements o, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -7251123623727029452L;
    final yx.a onComplete;
    final yx.f onError;
    final yx.f onNext;
    final yx.f onSubscribe;

    public LambdaObserver(yx.f fVar, yx.f fVar2, yx.a aVar, yx.f fVar3) {
        this.onNext = fVar;
        this.onError = fVar2;
        this.onComplete = aVar;
        this.onSubscribe = fVar3;
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
        if (isDisposed()) {
            return;
        }
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
        if (isDisposed()) {
            dy.a.r(th2);
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            dy.a.r(new CompositeException(th2, th3));
        }
    }

    @Override
    public void onNext(T t10) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t10);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            get().dispose();
            onError(th2);
        }
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cVar.dispose();
                onError(th2);
            }
        }
    }
}
