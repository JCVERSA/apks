package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.rc2;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

final class FlowableThrottleFirstTimed$DebounceTimedSubscriber<T> extends AtomicLong implements y14, f2a, Runnable {
    private static final long serialVersionUID = -9102637559663639004L;
    boolean done;
    final d2a downstream;
    volatile boolean gate;
    final long timeout;
    final SequentialDisposable timer = new SequentialDisposable();
    final TimeUnit unit;
    f2a upstream;
    final Scheduler.Worker worker;

    public FlowableThrottleFirstTimed$DebounceTimedSubscriber(d2a d2aVar, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
        this.downstream = d2aVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = worker;
    }

    @Override
    public void cancel() {
        this.upstream.cancel();
        this.worker.dispose();
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
        if (this.done || this.gate) {
            return;
        }
        this.gate = true;
        if (get() == 0) {
            this.done = true;
            cancel();
            this.downstream.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
        } else {
            this.downstream.onNext(t);
            i50.d(this, 1L);
            rc2 rc2Var = this.timer.get();
            if (rc2Var != null) {
                rc2Var.dispose();
            }
            this.timer.replace(this.worker.schedule(this, this.timeout, this.unit));
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
            f2aVar.request(Long.MAX_VALUE);
        }
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            i50.a(this, j);
        }
    }

    @Override
    public void run() {
        this.gate = false;
    }
}
