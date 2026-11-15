package io.reactivex.internal.operators.maybe;

import defpackage.d5;
import defpackage.k96;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

public final class MaybeCallbackObserver<T> extends AtomicReference<rc2> implements k96, rc2 {
    private static final long serialVersionUID = -6076952298809384986L;
    final d5 onComplete;
    final zf1 onError;
    final zf1 onSuccess;

    public MaybeCallbackObserver(zf1 zf1Var, zf1 zf1Var2, d5 d5Var) {
        this.onSuccess = zf1Var;
        this.onError = zf1Var2;
        this.onComplete = d5Var;
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
        return DisposableHelper.isDisposed(get());
    }

    @Override
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th) {
            re3.b(th);
            yw8.s(th);
        }
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
