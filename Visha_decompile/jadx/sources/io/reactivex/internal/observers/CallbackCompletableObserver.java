package io.reactivex.internal.observers;

import defpackage.d5;
import defpackage.qb1;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class CallbackCompletableObserver extends AtomicReference<rc2> implements qb1, rc2, zf1 {
    private static final long serialVersionUID = -4361286194466301354L;
    final d5 onComplete;
    final zf1 onError;

    public CallbackCompletableObserver(d5 d5Var) {
        this.onError = this;
        this.onComplete = d5Var;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return this.onError != this;
    }

    @Override
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void onComplete() {
        try {
            this.onComplete.run();
        } catch (Throwable th) {
            re3.b(th);
            yw8.s(th);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override
    public void onError(Throwable th) {
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            re3.b(th2);
            yw8.s(th2);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        DisposableHelper.setOnce(this, rc2Var);
    }

    @Override
    public void accept(Throwable th) {
        yw8.s(new OnErrorNotImplementedException(th));
    }

    public CallbackCompletableObserver(zf1 zf1Var, d5 d5Var) {
        this.onError = zf1Var;
        this.onComplete = d5Var;
    }
}
