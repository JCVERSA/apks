package io.reactivex.internal.observers;

import defpackage.qb1;
import defpackage.rc2;
import defpackage.yw8;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class EmptyCompletableObserver extends AtomicReference<rc2> implements qb1, rc2 {
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
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        yw8.s(new OnErrorNotImplementedException(th));
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        DisposableHelper.setOnce(this, rc2Var);
    }
}
