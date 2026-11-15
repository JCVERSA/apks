package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.y14;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableThrottleLatest$ThrottleLatestSubscriber<T> extends AtomicInteger implements y14, f2a, Runnable {
    private static final long serialVersionUID = -8296689127439125014L;
    volatile boolean cancelled;
    volatile boolean done;
    final d2a downstream;
    final boolean emitLast;
    long emitted;
    Throwable error;
    final AtomicReference<T> latest = new AtomicReference<>();
    final AtomicLong requested = new AtomicLong();
    final long timeout;
    volatile boolean timerFired;
    boolean timerRunning;
    final TimeUnit unit;
    f2a upstream;
    final Scheduler.Worker worker;

    public FlowableThrottleLatest$ThrottleLatestSubscriber(d2a d2aVar, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
        this.downstream = d2aVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = worker;
        this.emitLast = z;
    }

    @Override
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
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
        AtomicLong atomicLong = this.requested;
        d2a d2aVar = this.downstream;
        int iAddAndGet = 1;
        while (!this.cancelled) {
            boolean z = this.done;
            if (z && this.error != null) {
                atomicReference.lazySet(null);
                d2aVar.onError(this.error);
                this.worker.dispose();
                return;
            }
            boolean z2 = atomicReference.get() == null;
            if (z) {
                if (z2 || !this.emitLast) {
                    atomicReference.lazySet(null);
                    d2aVar.onComplete();
                } else {
                    T andSet = atomicReference.getAndSet(null);
                    long j = this.emitted;
                    if (j != atomicLong.get()) {
                        this.emitted = j + 1;
                        d2aVar.onNext(andSet);
                        d2aVar.onComplete();
                    } else {
                        d2aVar.onError(new MissingBackpressureException("Could not emit final value due to lack of requests"));
                    }
                }
                this.worker.dispose();
                return;
            }
            if (z2) {
                if (this.timerFired) {
                    this.timerRunning = false;
                    this.timerFired = false;
                }
            } else if (!this.timerRunning || this.timerFired) {
                T andSet2 = atomicReference.getAndSet(null);
                long j2 = this.emitted;
                if (j2 == atomicLong.get()) {
                    this.upstream.cancel();
                    d2aVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                    this.worker.dispose();
                    return;
                } else {
                    d2aVar.onNext(andSet2);
                    this.emitted = j2 + 1;
                    this.timerFired = false;
                    this.timerRunning = true;
                    this.worker.schedule(this, this.timeout, this.unit);
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
        atomicReference.lazySet(null);
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
            i50.a(this.requested, j);
        }
    }

    @Override
    public void run() {
        this.timerFired = true;
        drain();
    }
}
