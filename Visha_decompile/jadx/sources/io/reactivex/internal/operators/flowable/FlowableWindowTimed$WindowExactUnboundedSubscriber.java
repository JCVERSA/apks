package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.jm8;
import defpackage.nm9;
import defpackage.y14;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.TimeUnit;

final class FlowableWindowTimed$WindowExactUnboundedSubscriber<T> extends jm8 implements y14, f2a, Runnable {
    static final Object NEXT = new Object();
    final int bufferSize;
    final Scheduler scheduler;
    volatile boolean terminated;
    final SequentialDisposable timer;
    final long timespan;
    final TimeUnit unit;
    f2a upstream;
    UnicastProcessor window;

    public FlowableWindowTimed$WindowExactUnboundedSubscriber(d2a d2aVar, long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
        super(d2aVar, new MpscLinkedQueue());
        this.timer = new SequentialDisposable();
        this.timespan = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.bufferSize = i;
    }

    @Override
    public void cancel() {
        this.cancelled = true;
    }

    public void drainLoop() {
        nm9 nm9Var = this.queue;
        d2a d2aVar = this.downstream;
        UnicastProcessor unicastProcessorV = this.window;
        int iLeave = 1;
        while (true) {
            boolean z = this.terminated;
            boolean z2 = this.done;
            Object objPoll = nm9Var.poll();
            if (z2 && (objPoll == null || objPoll == NEXT)) {
                break;
            }
            if (objPoll == null) {
                iLeave = leave(-iLeave);
                if (iLeave == 0) {
                    return;
                }
            } else if (objPoll == NEXT) {
                unicastProcessorV.onComplete();
                if (z) {
                    this.upstream.cancel();
                } else {
                    unicastProcessorV = UnicastProcessor.v(this.bufferSize);
                    this.window = unicastProcessorV;
                    long jRequested = requested();
                    if (jRequested == 0) {
                        this.window = null;
                        this.queue.clear();
                        this.upstream.cancel();
                        d2aVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
                        this.timer.dispose();
                        return;
                    }
                    d2aVar.onNext(unicastProcessorV);
                    if (jRequested != Long.MAX_VALUE) {
                        produced(1L);
                    }
                }
            } else {
                unicastProcessorV.onNext(NotificationLite.getValue(objPoll));
            }
        }
        this.window = null;
        nm9Var.clear();
        Throwable th = this.error;
        if (th != null) {
            unicastProcessorV.onError(th);
        } else {
            unicastProcessorV.onComplete();
        }
        this.timer.dispose();
    }

    @Override
    public void onComplete() {
        this.done = true;
        if (enter()) {
            drainLoop();
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        if (enter()) {
            drainLoop();
        }
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        if (this.terminated) {
            return;
        }
        if (fastEnter()) {
            this.window.onNext(t);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            this.queue.offer(NotificationLite.next(t));
            if (!enter()) {
                return;
            }
        }
        drainLoop();
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.window = UnicastProcessor.v(this.bufferSize);
            d2a d2aVar = this.downstream;
            d2aVar.onSubscribe(this);
            long jRequested = requested();
            if (jRequested == 0) {
                this.cancelled = true;
                f2aVar.cancel();
                d2aVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
                return;
            }
            d2aVar.onNext(this.window);
            if (jRequested != Long.MAX_VALUE) {
                produced(1L);
            }
            if (this.cancelled) {
                return;
            }
            SequentialDisposable sequentialDisposable = this.timer;
            Scheduler scheduler = this.scheduler;
            long j = this.timespan;
            if (sequentialDisposable.replace(scheduler.e(this, j, j, this.unit))) {
                f2aVar.request(Long.MAX_VALUE);
            }
        }
    }

    @Override
    public void request(long j) {
        requested(j);
    }

    @Override
    public void run() {
        if (this.cancelled) {
            this.terminated = true;
        }
        this.queue.offer(NEXT);
        if (enter()) {
            drainLoop();
        }
    }
}
