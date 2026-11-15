package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

abstract class ObservableSampleTimed$SampleTimedObserver<T> extends AtomicReference<T> implements pd7, rc2, Runnable {
    private static final long serialVersionUID = -3517602651313910099L;
    final pd7 downstream;
    final long period;
    final Scheduler scheduler;
    final AtomicReference<rc2> timer = new AtomicReference<>();
    final TimeUnit unit;
    rc2 upstream;

    public ObservableSampleTimed$SampleTimedObserver(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.downstream = pd7Var;
        this.period = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public void cancelTimer() {
        DisposableHelper.dispose(this.timer);
    }

    public abstract void complete();

    @Override
    public void dispose() {
        cancelTimer();
        this.upstream.dispose();
    }

    public void emit() {
        T andSet = getAndSet(null);
        if (andSet != null) {
            this.downstream.onNext(andSet);
        }
    }

    @Override
    public boolean isDisposed() {
        return this.upstream.isDisposed();
    }

    @Override
    public void onComplete() {
        cancelTimer();
        complete();
    }

    @Override
    public void onError(Throwable th) {
        cancelTimer();
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        lazySet(t);
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            this.downstream.onSubscribe(this);
            Scheduler scheduler = this.scheduler;
            long j = this.period;
            DisposableHelper.replace(this.timer, scheduler.e(this, j, j, this.unit));
        }
    }
}
