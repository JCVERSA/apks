package io.reactivex.internal.operators.single;

import defpackage.in9;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class SingleTimer$TimerDisposable extends AtomicReference<rc2> implements rc2, Runnable {
    private static final long serialVersionUID = 8465401857522493082L;
    final in9 downstream;

    public SingleTimer$TimerDisposable(in9 in9Var) {
        this.downstream = in9Var;
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
