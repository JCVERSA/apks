package io.reactivex.internal.operators.flowable;

import defpackage.ac7;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.jk8;
import defpackage.re3;
import defpackage.wk5;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber<T, B> extends AtomicInteger implements y14, f2a, Runnable {
    static final c BOUNDARY_DISPOSED = new c(null);
    static final Object NEXT_WINDOW = new Object();
    private static final long serialVersionUID = 2233020065421370272L;
    final int capacityHint;
    volatile boolean done;
    final d2a downstream;
    long emitted;
    final Callable<? extends jk8> other;
    f2a upstream;
    UnicastProcessor window;
    final AtomicReference<c> boundarySubscriber = new AtomicReference<>();
    final AtomicInteger windows = new AtomicInteger(1);
    final MpscLinkedQueue queue = new MpscLinkedQueue();
    final AtomicThrowable errors = new AtomicThrowable();
    final AtomicBoolean stopWindows = new AtomicBoolean();
    final AtomicLong requested = new AtomicLong();

    public FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber(d2a d2aVar, int i, Callable<? extends jk8> callable) {
        this.downstream = d2aVar;
        this.capacityHint = i;
        this.other = callable;
    }

    @Override
    public void cancel() {
        if (this.stopWindows.compareAndSet(false, true)) {
            disposeBoundary();
            if (this.windows.decrementAndGet() == 0) {
                this.upstream.cancel();
            }
        }
    }

    public void disposeBoundary() {
        AtomicReference<c> atomicReference = this.boundarySubscriber;
        c cVar = BOUNDARY_DISPOSED;
        c andSet = atomicReference.getAndSet(cVar);
        if (andSet == null || andSet == cVar) {
            return;
        }
        andSet.dispose();
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
                    if (j != this.requested.get()) {
                        UnicastProcessor unicastProcessorW = UnicastProcessor.w(this.capacityHint, this);
                        this.window = unicastProcessorW;
                        this.windows.getAndIncrement();
                        try {
                            jk8 jk8Var = (jk8) ac7.d(this.other.call(), "The other Callable returned a null Publisher");
                            c cVar = new c(this);
                            if (wk5.a(this.boundarySubscriber, null, cVar)) {
                                jk8Var.subscribe(cVar);
                                j++;
                                d2aVar.onNext(unicastProcessorW);
                            }
                        } catch (Throwable th) {
                            re3.b(th);
                            atomicThrowable.addThrowable(th);
                            this.done = true;
                        }
                    } else {
                        this.upstream.cancel();
                        disposeBoundary();
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
        this.upstream.cancel();
        this.done = true;
        drain();
    }

    public void innerError(Throwable th) {
        this.upstream.cancel();
        if (!this.errors.addThrowable(th)) {
            yw8.s(th);
        } else {
            this.done = true;
            drain();
        }
    }

    public void innerNext(c cVar) {
        wk5.a(this.boundarySubscriber, cVar, null);
        this.queue.offer(NEXT_WINDOW);
        drain();
    }

    @Override
    public void onComplete() {
        disposeBoundary();
        this.done = true;
        drain();
    }

    @Override
    public void onError(Throwable th) {
        disposeBoundary();
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
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
            this.queue.offer(NEXT_WINDOW);
            drain();
            f2aVar.request(Long.MAX_VALUE);
        }
    }

    @Override
    public void request(long j) {
        i50.a(this.requested, j);
    }

    @Override
    public void run() {
        if (this.windows.decrementAndGet() == 0) {
            this.upstream.cancel();
        }
    }
}
