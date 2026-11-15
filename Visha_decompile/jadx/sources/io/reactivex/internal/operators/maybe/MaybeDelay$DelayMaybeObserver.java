package io.reactivex.internal.operators.maybe;

import defpackage.k96;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class MaybeDelay$DelayMaybeObserver<T> extends AtomicReference<rc2> implements k96, rc2, Runnable {
    private static final long serialVersionUID = 5566860102500855068L;
    final long delay;
    final k96 downstream;
    Throwable error;
    final Scheduler scheduler;
    final TimeUnit unit;
    T value;

    public MaybeDelay$DelayMaybeObserver(k96 k96Var, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.downstream = k96Var;
        this.delay = j;
        this.unit = timeUnit;
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
        schedule();
    }

    @Override
    public void onError(Throwable th) {
        this.error = th;
        schedule();
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.setOnce(this, rc2Var)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void onSuccess(T t) {
        this.value = t;
        schedule();
    }

    @Override
    public void run() {
        Throwable th = this.error;
        if (th != null) {
            this.downstream.onError(th);
            return;
        }
        T t = this.value;
        if (t != null) {
            this.downstream.onSuccess(t);
        } else {
            this.downstream.onComplete();
        }
    }

    public void schedule() {
        DisposableHelper.replace(this, this.scheduler.d(this, this.delay, this.unit));
    }
}
