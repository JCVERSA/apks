package io.reactivex.internal.operators.parallel;

import defpackage.f2a;
import defpackage.i50;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

abstract class ParallelRunOn$BaseRunOnSubscriber<T> extends AtomicInteger implements y14, f2a, Runnable {
    private static final long serialVersionUID = 9222303586456402150L;
    volatile boolean cancelled;
    int consumed;
    volatile boolean done;
    Throwable error;
    final int limit;
    final int prefetch;
    final SpscArrayQueue<T> queue;
    final AtomicLong requested = new AtomicLong();
    f2a upstream;
    final Scheduler.Worker worker;

    public ParallelRunOn$BaseRunOnSubscriber(int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
        this.prefetch = i;
        this.queue = spscArrayQueue;
        this.limit = i - (i >> 2);
        this.worker = worker;
    }

    @Override
    public final void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.cancel();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            this.queue.clear();
        }
    }

    @Override
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        schedule();
    }

    @Override
    public final void onError(Throwable th) {
        if (this.done) {
            yw8.s(th);
            return;
        }
        this.error = th;
        this.done = true;
        schedule();
    }

    @Override
    public final void onNext(T t) {
        if (this.done) {
            return;
        }
        if (this.queue.offer(t)) {
            schedule();
        } else {
            this.upstream.cancel();
            onError(new MissingBackpressureException("Queue is full?!"));
        }
    }

    @Override
    public abstract void onSubscribe(f2a f2aVar);

    @Override
    public final void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            i50.a(this.requested, j);
            schedule();
        }
    }

    public final void schedule() {
        if (getAndIncrement() == 0) {
            this.worker.schedule(this);
        }
    }
}
