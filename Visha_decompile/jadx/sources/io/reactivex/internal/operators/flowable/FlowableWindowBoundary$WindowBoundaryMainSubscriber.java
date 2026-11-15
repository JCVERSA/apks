package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableWindowBoundary$WindowBoundaryMainSubscriber<T, B> extends AtomicInteger implements y14, f2a, Runnable {
    static final Object NEXT_WINDOW = new Object();
    private static final long serialVersionUID = 2233020065421370272L;
    final int capacityHint;
    volatile boolean done;
    final d2a downstream;
    long emitted;
    UnicastProcessor window;
    final b boundarySubscriber = new b(this);
    final AtomicReference<f2a> upstream = new AtomicReference<>();
    final AtomicInteger windows = new AtomicInteger(1);
    final MpscLinkedQueue queue = new MpscLinkedQueue();
    final AtomicThrowable errors = new AtomicThrowable();
    final AtomicBoolean stopWindows = new AtomicBoolean();
    final AtomicLong requested = new AtomicLong();

    public FlowableWindowBoundary$WindowBoundaryMainSubscriber(d2a d2aVar, int i) {
        this.downstream = d2aVar;
        this.capacityHint = i;
    }

    @Override
    public void cancel() {
        if (this.stopWindows.compareAndSet(false, true)) {
            this.boundarySubscriber.dispose();
            if (this.windows.decrementAndGet() == 0) {
                SubscriptionHelper.cancel(this.upstream);
            }
        }
    }

    public void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        d2a d2aVar = this.downstream;
        MpscLinkedQueue mpscLinkedQueue = this.queue;
        AtomicThrowable atomicThrowable = this.errors;
        long j = this.emitted;
        int iAddAndGet = 1;
        while (this.windows.get() != 0) {
            UnicastProcessor unicastProcessor = this.window;
            boolean z = this.done;
            if (z && atomicThrowable.get() != null) {
                mpscLinkedQueue.clear();
                Throwable thTerminate = atomicThrowable.terminate();
                if (unicastProcessor != null) {
                    this.window = null;
                    unicastProcessor.onError(thTerminate);
                }
                d2aVar.onError(thTerminate);
                return;
            }
            Object objPoll = mpscLinkedQueue.poll();
            boolean z2 = objPoll == null;
            if (z && z2) {
                Throwable thTerminate2 = atomicThrowable.terminate();
                if (thTerminate2 == null) {
                    if (unicastProcessor != null) {
                        this.window = null;
                        unicastProcessor.onComplete();
                    }
                    d2aVar.onComplete();
                    return;
                }
                if (unicastProcessor != null) {
                    this.window = null;
                    unicastProcessor.onError(thTerminate2);
                }
                d2aVar.onError(thTerminate2);
                return;
            }
            if (z2) {
                this.emitted = j;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else if (objPoll != NEXT_WINDOW) {
                unicastProcessor.onNext(objPoll);
            } else {
                if (unicastProcessor != null) {
                    this.window = null;
                    unicastProcessor.onComplete();
                }
                if (!this.stopWindows.get()) {
                    UnicastProcessor unicastProcessorW = UnicastProcessor.w(this.capacityHint, this);
                    this.window = unicastProcessorW;
                    this.windows.getAndIncrement();
                    if (j != this.requested.get()) {
                        j++;
                        d2aVar.onNext(unicastProcessorW);
                    } else {
                        SubscriptionHelper.cancel(this.upstream);
                        this.boundarySubscriber.dispose();
                        atomicThrowable.addThrowable(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                        this.done = true;
                    }
                }
            }
        }
        mpscLinkedQueue.clear();
        this.window = null;
    }

    public void innerComplete() {
        SubscriptionHelper.cancel(this.upstream);
        this.done = true;
        drain();
    }

    public void innerError(Throwable th) {
        SubscriptionHelper.cancel(this.upstream);
        if (!this.errors.addThrowable(th)) {
            yw8.s(th);
        } else {
            this.done = true;
            drain();
        }
    }

    public void innerNext() {
        this.queue.offer(NEXT_WINDOW);
        drain();
    }

    @Override
    public void onComplete() {
        this.boundarySubscriber.dispose();
        this.done = true;
        drain();
    }

    @Override
    public void onError(Throwable th) {
        this.boundarySubscriber.dispose();
        if (!this.errors.addThrowable(th)) {
            yw8.s(th);
        } else {
            this.done = true;
            drain();
        }
    }

    @Override
    public void onNext(T t) {
        this.queue.offer(t);
        drain();
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        SubscriptionHelper.setOnce(this.upstream, f2aVar, Long.MAX_VALUE);
    }

    @Override
    public void request(long j) {
        i50.a(this.requested, j);
    }

    @Override
    public void run() {
        if (this.windows.decrementAndGet() == 0) {
            SubscriptionHelper.cancel(this.upstream);
        }
    }
}
