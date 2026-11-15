package io.reactivex.internal.operators.completable;

import defpackage.qb1;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class CompletableTimer$TimerDisposable extends AtomicReference<rc2> implements rc2, Runnable {
    private static final long serialVersionUID = 3167244060586201109L;
    final qb1 downstream;

    public CompletableTimer$TimerDisposable(qb1 qb1Var) {
        this.downstream = qb1Var;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override
    public void run() {
        this.downstream.onComplete();
    }

    public void setFuture(rc2 rc2Var) {
        DisposableHelper.replace(this, rc2Var);
    }
}
