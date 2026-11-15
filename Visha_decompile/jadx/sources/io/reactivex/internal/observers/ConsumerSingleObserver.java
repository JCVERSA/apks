package io.reactivex.internal.observers;

import defpackage.in9;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

public final class ConsumerSingleObserver<T> extends AtomicReference<rc2> implements in9, rc2 {
    private static final long serialVersionUID = -7012088219455310787L;
    final zf1 onError;
    final zf1 onSuccess;

    public ConsumerSingleObserver(zf1 zf1Var, zf1 zf1Var2) {
        this.onSuccess = zf1Var;
        this.onError = zf1Var2;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return this.onError != Functions.f;
    }

    @Override
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            re3.b(th2);
            yw8.s(new CompositeException(th, th2));
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        DisposableHelper.setOnce(this, rc2Var);
    }

    @Override
    public void onSuccess(T t) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onSuccess.accept(t);
        } catch (Throwable th) {
            re3.b(th);
            yw8.s(th);
        }
    }
}
