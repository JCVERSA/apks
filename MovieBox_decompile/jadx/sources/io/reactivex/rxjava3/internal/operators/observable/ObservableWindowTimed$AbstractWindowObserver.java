package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

abstract class ObservableWindowTimed$AbstractWindowObserver<T> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 5724293814035355511L;
    final int bufferSize;
    volatile boolean done;
    final io.reactivex.rxjava3.core.o downstream;
    long emitted;
    Throwable error;
    final long timespan;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;
    volatile boolean upstreamCancelled;
    final io.reactivex.rxjava3.operators.f queue = new MpscLinkedQueue();
    final AtomicBoolean downstreamCancelled = new AtomicBoolean();
    final AtomicInteger windowCount = new AtomicInteger(1);

    ObservableWindowTimed$AbstractWindowObserver(io.reactivex.rxjava3.core.o oVar, long j10, TimeUnit timeUnit, int i10) {
        this.downstream = oVar;
        this.timespan = j10;
        this.unit = timeUnit;
        this.bufferSize = i10;
    }

    abstract void cleanupResources();

    abstract void createFirstWindow();

    @Override
    public final void dispose() {
        if (this.downstreamCancelled.compareAndSet(false, true)) {
            windowDone();
        }
    }

    abstract void drain();

    @Override
    public final boolean isDisposed() {
        return this.downstreamCancelled.get();
    }

    @Override
    public final void onComplete() {
        this.done = true;
        drain();
    }

    @Override
    public final void onError(Throwable th2) {
        this.error = th2;
        this.done = true;
        drain();
    }

    @Override
    public final void onNext(T t10) {
        this.queue.offer(t10);
        drain();
    }

    @Override
    public final void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
            createFirstWindow();
        }
    }

    final void windowDone() {
        if (this.windowCount.decrementAndGet() == 0) {
            cleanupResources();
            this.upstream.dispose();
            this.upstreamCancelled = true;
            drain();
        }
    }
}
