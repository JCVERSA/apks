package io.reactivex.internal.operators.completable;

import defpackage.qb1;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class CompletableObserveOn$ObserveOnCompletableObserver extends AtomicReference<rc2> implements qb1, rc2, Runnable {
    private static final long serialVersionUID = 8571289934935992137L;
    final qb1 downstream;
    Throwable error;
    final Scheduler scheduler;

    public CompletableObserveOn$ObserveOnCompletableObserver(qb1 qb1Var, Scheduler scheduler) {
        this.downstream = qb1Var;
        this.scheduler = scheduler;
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
    public void onComplete() {
        DisposableHelper.replace(this, this.scheduler.c(this));
    }

    @Override
    public void onError(Throwable th) {
        this.error = th;
        DisposableHelper.replace(this, this.scheduler.c(this));
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.setOnce(this, rc2Var)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void run() {
        Throwable th = this.error;
        if (th == null) {
            this.downstream.onComplete();
        } else {
            this.error = null;
            this.downstream.onError(th);
        }
    }
}
