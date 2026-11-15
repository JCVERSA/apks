package io.reactivex.internal.operators.completable;

import defpackage.qb1;
import defpackage.rc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;

final class CompletableDisposeOn$DisposeOnObserver implements qb1, rc2, Runnable {
    volatile boolean disposed;
    final qb1 downstream;
    final Scheduler scheduler;
    rc2 upstream;

    public CompletableDisposeOn$DisposeOnObserver(qb1 qb1Var, Scheduler scheduler) {
        this.downstream = qb1Var;
        this.scheduler = scheduler;
    }

    @Override
    public void dispose() {
        this.disposed = true;
        this.scheduler.c(this);
    }

    @Override
    public boolean isDisposed() {
        return this.disposed;
    }

    @Override
    public void onComplete() {
        if (this.disposed) {
            return;
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        if (this.disposed) {
            yw8.s(th);
        } else {
            this.downstream.onError(th);
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void run() {
        this.upstream.dispose();
        this.upstream = DisposableHelper.DISPOSED;
    }
}
