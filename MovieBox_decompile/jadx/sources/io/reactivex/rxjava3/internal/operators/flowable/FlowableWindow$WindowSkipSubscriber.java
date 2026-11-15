package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

final class FlowableWindow$WindowSkipSubscriber<T> extends AtomicInteger implements io.reactivex.rxjava3.core.f, i00.d, Runnable {
    private static final long serialVersionUID = -8792836352386833856L;
    final int bufferSize;
    final i00.c downstream;
    final AtomicBoolean firstRequest;
    long index;
    final AtomicBoolean once;
    final long size;
    final long skip;
    i00.d upstream;
    UnicastProcessor window;

    FlowableWindow$WindowSkipSubscriber(i00.c cVar, long j10, long j11, int i10) {
        super(1);
        this.downstream = cVar;
        this.size = j10;
        this.skip = j11;
        this.once = new AtomicBoolean();
        this.firstRequest = new AtomicBoolean();
        this.bufferSize = i10;
    }

    @Override
    public void cancel() {
        if (this.once.compareAndSet(false, true)) {
            run();
        }
    }

    @Override
    public void onComplete() {
        UnicastProcessor unicastProcessor = this.window;
        if (unicastProcessor != null) {
            this.window = null;
            unicastProcessor.onComplete();
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th2) {
        UnicastProcessor unicastProcessor = this.window;
        if (unicastProcessor != null) {
            this.window = null;
            unicastProcessor.onError(th2);
        }
        this.downstream.onError(th2);
    }

    @Override
    public void onNext(T t10) {
        g gVar;
        long j10 = this.index;
        UnicastProcessor unicastProcessorI = this.window;
        if (j10 == 0) {
            getAndIncrement();
            unicastProcessorI = UnicastProcessor.i(this.bufferSize, this);
            this.window = unicastProcessorI;
            gVar = new g(unicastProcessorI);
            this.downstream.onNext(gVar);
        } else {
            gVar = null;
        }
        long j11 = j10 + 1;
        if (unicastProcessorI != null) {
            unicastProcessorI.onNext(t10);
        }
        if (j11 == this.size) {
            this.window = null;
            unicastProcessorI.onComplete();
        }
        if (j11 == this.skip) {
            this.index = 0L;
        } else {
            this.index = j11;
        }
        if (gVar == null || !gVar.h()) {
            return;
        }
        gVar.f62379b.onComplete();
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                this.upstream.request(io.reactivex.rxjava3.internal.util.a.c(this.skip, j10));
            } else {
                this.upstream.request(io.reactivex.rxjava3.internal.util.a.b(io.reactivex.rxjava3.internal.util.a.c(this.size, j10), io.reactivex.rxjava3.internal.util.a.c(this.skip - this.size, j10 - 1)));
            }
        }
    }

    @Override
    public void run() {
        if (decrementAndGet() == 0) {
            this.upstream.cancel();
        }
    }
}
