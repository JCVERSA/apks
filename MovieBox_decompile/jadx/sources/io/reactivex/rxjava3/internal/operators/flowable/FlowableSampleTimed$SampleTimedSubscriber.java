package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

abstract class FlowableSampleTimed$SampleTimedSubscriber<T> extends AtomicReference<T> implements io.reactivex.rxjava3.core.f, i00.d, Runnable {
    private static final long serialVersionUID = -3517602651313910099L;
    final i00.c downstream;
    final yx.f onDropped;
    final long period;
    final Scheduler scheduler;
    final TimeUnit unit;
    i00.d upstream;
    final AtomicLong requested = new AtomicLong();
    final SequentialDisposable timer = new SequentialDisposable();

    FlowableSampleTimed$SampleTimedSubscriber(i00.c cVar, long j10, TimeUnit timeUnit, Scheduler scheduler, yx.f fVar) {
        this.downstream = cVar;
        this.period = j10;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.onDropped = fVar;
    }

    @Override
    public void cancel() {
        cancelTimer();
        this.upstream.cancel();
    }

    void cancelTimer() {
        DisposableHelper.dispose(this.timer);
    }

    abstract void complete();

    void emit() {
        T andSet = getAndSet(null);
        if (andSet != null) {
            if (this.requested.get() != 0) {
                this.downstream.onNext(andSet);
                io.reactivex.rxjava3.internal.util.a.d(this.requested, 1L);
            } else {
                cancel();
                this.downstream.onError(MissingBackpressureException.createDefault());
            }
        }
    }

    @Override
    public void onComplete() {
        cancelTimer();
        complete();
    }

    @Override
    public void onError(Throwable th2) {
        cancelTimer();
        this.downstream.onError(th2);
    }

    @Override
    public void onNext(T t10) {
        yx.f fVar;
        T andSet = getAndSet(t10);
        if (andSet == null || (fVar = this.onDropped) == null) {
            return;
        }
        try {
            fVar.accept(andSet);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            cancelTimer();
            this.upstream.cancel();
            this.downstream.onError(th2);
        }
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            SequentialDisposable sequentialDisposable = this.timer;
            Scheduler scheduler = this.scheduler;
            long j10 = this.period;
            sequentialDisposable.replace(scheduler.f(this, j10, j10, this.unit));
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
        }
    }
}
