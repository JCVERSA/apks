package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.rc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableThrottleFirstTimed$DebounceTimedObserver<T> extends AtomicReference<rc2> implements pd7, rc2, Runnable {
    private static final long serialVersionUID = 786994795061867455L;
    boolean done;
    final pd7 downstream;
    volatile boolean gate;
    final long timeout;
    final TimeUnit unit;
    rc2 upstream;
    final Scheduler.Worker worker;

    public ObservableThrottleFirstTimed$DebounceTimedObserver(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
        this.downstream = pd7Var;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = worker;
    }

    @Override
    public void dispose() {
        this.upstream.dispose();
        this.worker.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.worker.isDisposed();
    }

    @Override
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        this.downstream.onComplete();
        this.worker.dispose();
    }

    @Override
    public void onError(Throwable th) {
        if (this.done) {
            yw8.s(th);
            return;
        }
        this.done = true;
        this.downstream.onError(th);
        this.worker.dispose();
    }

    @Override
    public void onNext(T t) {
        if (this.gate || this.done) {
            return;
        }
        this.gate = true;
        this.downstream.onNext(t);
        rc2 rc2Var = get();
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        DisposableHelper.replace(this, this.worker.schedule(this, this.timeout, this.unit));
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
        this.gate = false;
    }
}
