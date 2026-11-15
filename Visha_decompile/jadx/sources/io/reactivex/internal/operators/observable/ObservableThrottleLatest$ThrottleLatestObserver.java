package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableThrottleLatest$ThrottleLatestObserver<T> extends AtomicInteger implements pd7, rc2, Runnable {
    private static final long serialVersionUID = -8296689127439125014L;
    volatile boolean cancelled;
    volatile boolean done;
    final pd7 downstream;
    final boolean emitLast;
    Throwable error;
    final AtomicReference<T> latest = new AtomicReference<>();
    final long timeout;
    volatile boolean timerFired;
    boolean timerRunning;
    final TimeUnit unit;
    rc2 upstream;
    final Scheduler.Worker worker;

    public ObservableThrottleLatest$ThrottleLatestObserver(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
        this.downstream = pd7Var;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = worker;
        this.emitLast = z;
    }

    @Override
    public void dispose() {
        this.cancelled = true;
        this.upstream.dispose();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            this.latest.lazySet(null);
        }
    }

    public void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        AtomicReference<T> atomicReference = this.latest;
        pd7 pd7Var = this.downstream;
        int iAddAndGet = 1;
        while (!this.cancelled) {
            boolean z = this.done;
            if (z && this.error != null) {
                atomicReference.lazySet(null);
                pd7Var.onError(this.error);
                this.worker.dispose();
                return;
            }
            boolean z2 = atomicReference.get() == null;
            if (z) {
                T andSet = atomicReference.getAndSet(null);
                if (!z2 && this.emitLast) {
                    pd7Var.onNext(andSet);
                }
                pd7Var.onComplete();
                this.worker.dispose();
                return;
            }
            if (z2) {
                if (this.timerFired) {
                    this.timerRunning = false;
                    this.timerFired = false;
                }
            } else if (!this.timerRunning || this.timerFired) {
                pd7Var.onNext(atomicReference.getAndSet(null));
                this.timerFired = false;
                this.timerRunning = true;
                this.worker.schedule(this, this.timeout, this.unit);
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
        atomicReference.lazySet(null);
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    @Override
    public void onNext(T t) {
        this.latest.set(t);
        drain();
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
        this.timerFired = true;
        drain();
    }
}
