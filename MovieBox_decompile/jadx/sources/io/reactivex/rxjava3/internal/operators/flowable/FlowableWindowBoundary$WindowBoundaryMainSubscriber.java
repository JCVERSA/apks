package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableWindowBoundary$WindowBoundaryMainSubscriber<T, B> extends AtomicInteger implements io.reactivex.rxjava3.core.f, i00.d, Runnable {
    static final Object NEXT_WINDOW = new Object();
    private static final long serialVersionUID = 2233020065421370272L;
    final int capacityHint;
    volatile boolean done;
    final i00.c downstream;
    long emitted;
    UnicastProcessor window;
    final f boundarySubscriber = new f(this);
    final AtomicReference<i00.d> upstream = new AtomicReference<>();
    final AtomicInteger windows = new AtomicInteger(1);
    final MpscLinkedQueue queue = new MpscLinkedQueue();
    final AtomicThrowable errors = new AtomicThrowable();
    final AtomicBoolean stopWindows = new AtomicBoolean();
    final AtomicLong requested = new AtomicLong();

    FlowableWindowBoundary$WindowBoundaryMainSubscriber(i00.c cVar, int i10) {
        this.downstream = cVar;
        this.capacityHint = i10;
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

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        i00.c cVar = this.downstream;
        MpscLinkedQueue mpscLinkedQueue = this.queue;
        AtomicThrowable atomicThrowable = this.errors;
        long j10 = this.emitted;
        int iAddAndGet = 1;
        while (this.windows.get() != 0) {
            UnicastProcessor unicastProcessor = this.window;
            boolean z10 = this.done;
            if (z10 && atomicThrowable.get() != null) {
                mpscLinkedQueue.clear();
                Throwable thTerminate = atomicThrowable.terminate();
                if (unicastProcessor != null) {
                    this.window = null;
                    unicastProcessor.onError(thTerminate);
                }
                cVar.onError(thTerminate);
                return;
            }
            Object objPoll = mpscLinkedQueue.poll();
            boolean z11 = objPoll == null;
            if (z10 && z11) {
                Throwable thTerminate2 = atomicThrowable.terminate();
                if (thTerminate2 == null) {
                    if (unicastProcessor != null) {
                        this.window = null;
                        unicastProcessor.onComplete();
                    }
                    cVar.onComplete();
                    return;
                }
                if (unicastProcessor != null) {
                    this.window = null;
                    unicastProcessor.onError(thTerminate2);
                }
                cVar.onError(thTerminate2);
                return;
            }
            if (z11) {
                this.emitted = j10;
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
                    UnicastProcessor unicastProcessorI = UnicastProcessor.i(this.capacityHint, this);
                    this.window = unicastProcessorI;
                    this.windows.getAndIncrement();
                    if (j10 != this.requested.get()) {
                        j10++;
                        g gVar = new g(unicastProcessorI);
                        cVar.onNext(gVar);
                        if (gVar.h()) {
                            unicastProcessorI.onComplete();
                        }
                    } else {
                        SubscriptionHelper.cancel(this.upstream);
                        this.boundarySubscriber.dispose();
                        atomicThrowable.tryAddThrowableOrReport(MissingBackpressureException.createDefault());
                        this.done = true;
                    }
                }
            }
        }
        mpscLinkedQueue.clear();
        this.window = null;
    }

    void innerComplete() {
        SubscriptionHelper.cancel(this.upstream);
        this.done = true;
        drain();
    }

    void innerError(Throwable th2) {
        SubscriptionHelper.cancel(this.upstream);
        if (this.errors.tryAddThrowableOrReport(th2)) {
            this.done = true;
            drain();
        }
    }

    void innerNext() {
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
    public void onError(Throwable th2) {
        this.boundarySubscriber.dispose();
        if (this.errors.tryAddThrowableOrReport(th2)) {
            this.done = true;
            drain();
        }
    }

    @Override
    public void onNext(T t10) {
        this.queue.offer(t10);
        drain();
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        SubscriptionHelper.setOnce(this.upstream, dVar, Long.MAX_VALUE);
    }

    @Override
    public void request(long j10) {
        io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
    }

    @Override
    public void run() {
        if (this.windows.decrementAndGet() == 0) {
            SubscriptionHelper.cancel(this.upstream);
        }
    }
}
