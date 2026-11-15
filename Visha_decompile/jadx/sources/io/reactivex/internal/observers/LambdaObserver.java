package io.reactivex.internal.observers;

import defpackage.d5;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

public final class LambdaObserver<T> extends AtomicReference<rc2> implements pd7, rc2 {
    private static final long serialVersionUID = -7251123623727029452L;
    final d5 onComplete;
    final zf1 onError;
    final zf1 onNext;
    final zf1 onSubscribe;

    public LambdaObserver(zf1 zf1Var, zf1 zf1Var2, d5 d5Var, zf1 zf1Var3) {
        this.onNext = zf1Var;
        this.onError = zf1Var2;
        this.onComplete = d5Var;
        this.onSubscribe = zf1Var3;
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
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
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
        if (isDisposed()) {
            yw8.s(th);
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            re3.b(th2);
            yw8.s(new CompositeException(th, th2));
        }
    }

    @Override
    public void onNext(T t) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t);
        } catch (Throwable th) {
            re3.b(th);
            get().dispose();
            onError(th);
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.setOnce(this, rc2Var)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th) {
                re3.b(th);
                rc2Var.dispose();
                onError(th);
            }
        }
    }
}
