package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableThrottleLatest$ThrottleLatestSubscriber<T> extends AtomicInteger implements io.reactivex.rxjava3.core.f, i00.d, Runnable {
    private static final long serialVersionUID = -8296689127439125014L;
    volatile boolean cancelled;
    volatile boolean done;
    final i00.c downstream;
    final boolean emitLast;
    long emitted;
    Throwable error;
    final yx.f onDropped;
    final long timeout;
    volatile boolean timerFired;
    boolean timerRunning;
    final TimeUnit unit;
    i00.d upstream;
    final Scheduler.Worker worker;
    final AtomicReference<T> latest = new AtomicReference<>();
    final AtomicLong requested = new AtomicLong();

    FlowableThrottleLatest$ThrottleLatestSubscriber(i00.c cVar, long j10, TimeUnit timeUnit, Scheduler.Worker worker, boolean z10, yx.f fVar) {
        this.downstream = cVar;
        this.timeout = j10;
        this.unit = timeUnit;
        this.worker = worker;
        this.emitLast = z10;
        this.onDropped = fVar;
    }

    @Override
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            clear();
        }
    }

    void clear() {
        if (this.onDropped == null) {
            this.latest.lazySet(null);
            return;
        }
        T andSet = this.latest.getAndSet(null);
        if (andSet != null) {
            try {
                this.onDropped.accept(andSet);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dy.a.r(th2);
            }
        }
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        AtomicReference<T> atomicReference = this.latest;
        AtomicLong atomicLong = this.requested;
        i00.c cVar = this.downstream;
        int iAddAndGet = 1;
        while (!this.cancelled) {
            boolean z10 = this.done;
            Throwable compositeException = this.error;
            if (z10 && compositeException != null) {
                if (this.onDropped != null) {
                    T andSet = atomicReference.getAndSet(null);
                    if (andSet != null) {
                        try {
                            this.onDropped.accept(andSet);
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            compositeException = new CompositeException(compositeException, th2);
                        }
                    }
                } else {
                    atomicReference.lazySet(null);
                }
                cVar.onError(compositeException);
                this.worker.dispose();
                return;
            }
            boolean z11 = atomicReference.get() == null;
            if (z10) {
                if (z11) {
                    cVar.onComplete();
                } else {
                    T andSet2 = atomicReference.getAndSet(null);
                    if (this.emitLast) {
                        long j10 = this.emitted;
                        if (j10 != atomicLong.get()) {
                            this.emitted = j10 + 1;
                            cVar.onNext(andSet2);
                            cVar.onComplete();
                        } else {
                            tryDropAndSignalMBE(andSet2);
                        }
                    } else {
                        yx.f fVar = this.onDropped;
                        if (fVar != null) {
                            try {
                                fVar.accept(andSet2);
                            } catch (Throwable th3) {
                                io.reactivex.rxjava3.exceptions.a.b(th3);
                                cVar.onError(th3);
                                this.worker.dispose();
                                return;
                            }
                        }
                        cVar.onComplete();
                    }
                }
                this.worker.dispose();
                return;
            }
            if (z11) {
                if (this.timerFired) {
                    this.timerRunning = false;
                    this.timerFired = false;
                }
            } else if (!this.timerRunning || this.timerFired) {
                T andSet3 = atomicReference.getAndSet(null);
                long j11 = this.emitted;
                if (j11 == atomicLong.get()) {
                    this.upstream.cancel();
                    tryDropAndSignalMBE(andSet3);
                    this.worker.dispose();
                    return;
                } else {
                    cVar.onNext(andSet3);
                    this.emitted = j11 + 1;
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
        clear();
    }

    @Override
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override
    public void onError(Throwable th2) {
        this.error = th2;
        this.done = true;
        drain();
    }

    @Override
    public void onNext(T t10) {
        T andSet = this.latest.getAndSet(t10);
        yx.f fVar = this.onDropped;
        if (fVar != null && andSet != null) {
            try {
                fVar.accept(andSet);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.upstream.cancel();
                this.error = th2;
                this.done = true;
            }
        }
        drain();
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
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
        }
    }

    @Override
    public void run() {
        this.timerFired = true;
        drain();
    }

    void tryDropAndSignalMBE(T t10) {
        Throwable thCreateDefault = MissingBackpressureException.createDefault();
        yx.f fVar = this.onDropped;
        if (fVar != null) {
            try {
                fVar.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                thCreateDefault = new CompositeException(thCreateDefault, th2);
            }
        }
        this.downstream.onError(thCreateDefault);
    }
}
