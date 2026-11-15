package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.y14;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

final class FlowableWindow$WindowSkipSubscriber<T> extends AtomicInteger implements y14, f2a, Runnable {
    private static final long serialVersionUID = -8792836352386833856L;
    final int bufferSize;
    final d2a downstream;
    final AtomicBoolean firstRequest;
    long index;
    final AtomicBoolean once;
    final long size;
    final long skip;
    f2a upstream;
    UnicastProcessor window;

    public FlowableWindow$WindowSkipSubscriber(d2a d2aVar, long j, long j2, int i) {
        super(1);
        this.downstream = d2aVar;
        this.size = j;
        this.skip = j2;
        this.once = new AtomicBoolean();
        this.firstRequest = new AtomicBoolean();
        this.bufferSize = i;
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
    public void onError(Throwable th) {
        UnicastProcessor unicastProcessor = this.window;
        if (unicastProcessor != null) {
            this.window = null;
            unicastProcessor.onError(th);
        }
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        long j = this.index;
        UnicastProcessor unicastProcessorW = this.window;
        if (j == 0) {
            getAndIncrement();
            unicastProcessorW = UnicastProcessor.w(this.bufferSize, this);
            this.window = unicastProcessorW;
            this.downstream.onNext(unicastProcessorW);
        }
        long j2 = j + 1;
        if (unicastProcessorW != null) {
            unicastProcessorW.onNext(t);
        }
        if (j2 == this.size) {
            this.window = null;
            unicastProcessorW.onComplete();
        }
        if (j2 == this.skip) {
            this.index = 0L;
        } else {
            this.index = j2;
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                this.upstream.request(i50.c(this.skip, j));
            } else {
                this.upstream.request(i50.b(i50.c(this.size, j), i50.c(this.skip - this.size, j - 1)));
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
