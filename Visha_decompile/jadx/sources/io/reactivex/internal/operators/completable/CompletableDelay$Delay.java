package io.reactivex.internal.operators.completable;

import defpackage.qb1;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class CompletableDelay$Delay extends AtomicReference<rc2> implements qb1, Runnable, rc2 {
    private static final long serialVersionUID = 465972761105851022L;
    final long delay;
    final boolean delayError;
    final qb1 downstream;
    Throwable error;
    final Scheduler scheduler;
    final TimeUnit unit;

    public CompletableDelay$Delay(qb1 qb1Var, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        this.downstream = qb1Var;
        this.delay = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.delayError = z;
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
        DisposableHelper.replace(this, this.scheduler.d(this, this.delay, this.unit));
    }

    @Override
    public void onError(Throwable th) {
        this.error = th;
        DisposableHelper.replace(this, this.scheduler.d(this, this.delayError ? this.delay : 0L, this.unit));
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
        this.error = null;
        if (th != null) {
            this.downstream.onError(th);
        } else {
            this.downstream.onComplete();
        }
    }
}
