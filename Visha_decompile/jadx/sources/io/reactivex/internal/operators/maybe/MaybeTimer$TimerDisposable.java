package io.reactivex.internal.operators.maybe;

import defpackage.k96;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class MaybeTimer$TimerDisposable extends AtomicReference<rc2> implements rc2, Runnable {
    private static final long serialVersionUID = 2875964065294031672L;
    final k96 downstream;

    public MaybeTimer$TimerDisposable(k96 k96Var) {
        this.downstream = k96Var;
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
        this.downstream.onSuccess(0L);
    }

    public void setFuture(rc2 rc2Var) {
        DisposableHelper.replace(this, rc2Var);
    }
}
