package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

final class FlowableThrottleFirstTimed$DebounceTimedSubscriber<T> extends AtomicLong implements io.reactivex.rxjava3.core.f, i00.d, Runnable {
    private static final long serialVersionUID = -9102637559663639004L;
    boolean done;
    final i00.c downstream;
    volatile boolean gate;
    final yx.f onDropped;
    final long timeout;
    final SequentialDisposable timer = new SequentialDisposable();
    final TimeUnit unit;
    i00.d upstream;
    final Scheduler.Worker worker;

    FlowableThrottleFirstTimed$DebounceTimedSubscriber(i00.c cVar, long j10, TimeUnit timeUnit, Scheduler.Worker worker, yx.f fVar) {
        this.downstream = cVar;
        this.timeout = j10;
        this.unit = timeUnit;
        this.worker = worker;
        this.onDropped = fVar;
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
    public void onError(Throwable th2) {
        if (this.done) {
            dy.a.r(th2);
            return;
        }
        this.done = true;
        this.downstream.onError(th2);
        this.worker.dispose();
    }

    @Override
    public void onNext(T t10) {
        if (this.done) {
            return;
        }
        if (this.gate) {
            yx.f fVar = this.onDropped;
            if (fVar != null) {
                try {
                    fVar.accept(t10);
                    return;
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.upstream.cancel();
                    this.done = true;
                    this.downstream.onError(th2);
                    this.worker.dispose();
                    return;
                }
            }
            return;
        }
        this.gate = true;
        if (get() == 0) {
            this.upstream.cancel();
            this.done = true;
            this.downstream.onError(MissingBackpressureException.createDefault());
            this.worker.dispose();
            return;
        }
        this.downstream.onNext(t10);
        io.reactivex.rxjava3.internal.util.a.d(this, 1L);
        io.reactivex.rxjava3.disposables.c cVar = this.timer.get();
        if (cVar != null) {
            cVar.dispose();
        }
        this.timer.replace(this.worker.schedule(this, this.timeout, this.unit));
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.rxjava3.internal.util.a.a(this, j10);
        }
    }

    @Override
    public void run() {
        this.gate = false;
    }
}
