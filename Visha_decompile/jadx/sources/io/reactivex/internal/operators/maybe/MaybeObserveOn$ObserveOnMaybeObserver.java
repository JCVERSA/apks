package io.reactivex.internal.operators.maybe;

import defpackage.k96;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class MaybeObserveOn$ObserveOnMaybeObserver<T> extends AtomicReference<rc2> implements k96, rc2, Runnable {
    private static final long serialVersionUID = 8571289934935992137L;
    final k96 downstream;
    Throwable error;
    final Scheduler scheduler;
    T value;

    public MaybeObserveOn$ObserveOnMaybeObserver(k96 k96Var, Scheduler scheduler) {
        this.downstream = k96Var;
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
    public void onSuccess(T t) {
        this.value = t;
        DisposableHelper.replace(this, this.scheduler.c(this));
    }

    @Override
    public void run() {
        Throwable th = this.error;
        if (th != null) {
            this.error = null;
            this.downstream.onError(th);
            return;
        }
        T t = this.value;
        if (t == null) {
            this.downstream.onComplete();
        } else {
            this.value = null;
            this.downstream.onSuccess(t);
        }
    }
}
