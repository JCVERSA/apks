package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.rc2;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

final class FlowableDebounceTimed$DebounceTimedSubscriber<T> extends AtomicLong implements y14, f2a {
    private static final long serialVersionUID = -9102637559663639004L;
    boolean done;
    final d2a downstream;
    volatile long index;
    final long timeout;
    rc2 timer;
    final TimeUnit unit;
    f2a upstream;
    final Scheduler.Worker worker;

    public FlowableDebounceTimed$DebounceTimedSubscriber(d2a d2aVar, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
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

    public void emit(long j, T t, FlowableDebounceTimed$DebounceEmitter<T> flowableDebounceTimed$DebounceEmitter) {
        if (j == this.index) {
            if (get() == 0) {
                cancel();
                this.downstream.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            } else {
                this.downstream.onNext(t);
                i50.d(this, 1L);
                flowableDebounceTimed$DebounceEmitter.dispose();
            }
        }
    }

    @Override
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        rc2 rc2Var = this.timer;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        FlowableDebounceTimed$DebounceEmitter flowableDebounceTimed$DebounceEmitter = (FlowableDebounceTimed$DebounceEmitter) rc2Var;
        if (flowableDebounceTimed$DebounceEmitter != null) {
            flowableDebounceTimed$DebounceEmitter.emit();
        }
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
        rc2 rc2Var = this.timer;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        this.downstream.onError(th);
        this.worker.dispose();
    }

    @Override
    public void onNext(T t) {
        if (this.done) {
            return;
        }
        long j = this.index + 1;
        this.index = j;
        rc2 rc2Var = this.timer;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        FlowableDebounceTimed$DebounceEmitter flowableDebounceTimed$DebounceEmitter = new FlowableDebounceTimed$DebounceEmitter(t, j, this);
        this.timer = flowableDebounceTimed$DebounceEmitter;
        flowableDebounceTimed$DebounceEmitter.setResource(this.worker.schedule(flowableDebounceTimed$DebounceEmitter, this.timeout, this.unit));
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
}
