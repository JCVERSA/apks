package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.y14;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

abstract class FlowableSampleTimed$SampleTimedSubscriber<T> extends AtomicReference<T> implements y14, f2a, Runnable {
    private static final long serialVersionUID = -3517602651313910099L;
    final d2a downstream;
    final long period;
    final Scheduler scheduler;
    final TimeUnit unit;
    f2a upstream;
    final AtomicLong requested = new AtomicLong();
    final SequentialDisposable timer = new SequentialDisposable();

    public FlowableSampleTimed$SampleTimedSubscriber(d2a d2aVar, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.downstream = d2aVar;
        this.period = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override
    public void cancel() {
        cancelTimer();
        this.upstream.cancel();
    }

    public void cancelTimer() {
        DisposableHelper.dispose(this.timer);
    }

    public abstract void complete();

    public void emit() {
        T andSet = getAndSet(null);
        if (andSet != null) {
            if (this.requested.get() != 0) {
                this.downstream.onNext(andSet);
                i50.d(this.requested, 1L);
            } else {
                cancel();
                this.downstream.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
            }
        }
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
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
            SequentialDisposable sequentialDisposable = this.timer;
            Scheduler scheduler = this.scheduler;
            long j = this.period;
            sequentialDisposable.replace(scheduler.e(this, j, j, this.unit));
            f2aVar.request(Long.MAX_VALUE);
        }
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            i50.a(this.requested, j);
        }
    }
}
