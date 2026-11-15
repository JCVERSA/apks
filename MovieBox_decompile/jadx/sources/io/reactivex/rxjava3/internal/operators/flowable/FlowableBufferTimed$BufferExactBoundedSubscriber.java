package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import yx.k;

final class FlowableBufferTimed$BufferExactBoundedSubscriber<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.b implements i00.d, Runnable, io.reactivex.rxjava3.disposables.c {
    U buffer;
    final k bufferSupplier;
    long consumerIndex;
    final int maxSize;
    long producerIndex;
    final boolean restartTimerOnMaxSize;
    io.reactivex.rxjava3.disposables.c timer;
    final long timespan;
    final TimeUnit unit;
    i00.d upstream;

    final Scheduler.Worker f62355w;

    FlowableBufferTimed$BufferExactBoundedSubscriber(i00.c cVar, k kVar, long j10, TimeUnit timeUnit, int i10, boolean z10, Scheduler.Worker worker) {
        super(cVar, new MpscLinkedQueue());
        this.bufferSupplier = kVar;
        this.timespan = j10;
        this.unit = timeUnit;
        this.maxSize = i10;
        this.restartTimerOnMaxSize = z10;
        this.f62355w = worker;
    }

    @Override
    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        dispose();
    }

    @Override
    public void dispose() {
        synchronized (this) {
            this.buffer = null;
        }
        this.upstream.cancel();
        this.f62355w.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.f62355w.isDisposed();
    }

    @Override
    public void onComplete() {
        U u10;
        synchronized (this) {
            u10 = this.buffer;
            this.buffer = null;
        }
        if (u10 != null) {
            this.queue.offer(u10);
            this.done = true;
            if (enter()) {
                i.e(this.queue, this.downstream, false, this, this);
            }
            this.f62355w.dispose();
        }
    }

    @Override
    public void onError(Throwable th2) {
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th2);
        this.f62355w.dispose();
    }

    @Override
    public void onNext(T t10) {
        synchronized (this) {
            try {
                U u10 = this.buffer;
                if (u10 == null) {
                    return;
                }
                u10.add(t10);
                if (u10.size() < this.maxSize) {
                    return;
                }
                this.buffer = null;
                this.producerIndex++;
                if (this.restartTimerOnMaxSize) {
                    this.timer.dispose();
                }
                fastPathOrderedEmitMax(u10, false, this);
                try {
                    Object obj = this.bufferSupplier.get();
                    Objects.requireNonNull(obj, "The supplied buffer is null");
                    U u11 = (U) obj;
                    synchronized (this) {
                        this.buffer = u11;
                        this.consumerIndex++;
                    }
                    if (this.restartTimerOnMaxSize) {
                        Scheduler.Worker worker = this.f62355w;
                        long j10 = this.timespan;
                        this.timer = worker.schedulePeriodically(this, j10, j10, this.unit);
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    cancel();
                    this.downstream.onError(th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The supplied buffer is null");
                this.buffer = (U) obj;
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.f62355w;
                long j10 = this.timespan;
                this.timer = worker.schedulePeriodically(this, j10, j10, this.unit);
                dVar.request(Long.MAX_VALUE);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f62355w.dispose();
                dVar.cancel();
                EmptySubscription.error(th2, this.downstream);
            }
        }
    }

    @Override
    public void request(long j10) {
        requested(j10);
    }

    @Override
    public void run() {
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The supplied buffer is null");
            U u10 = (U) obj;
            synchronized (this) {
                U u11 = this.buffer;
                if (u11 != null && this.producerIndex == this.consumerIndex) {
                    this.buffer = u10;
                    fastPathOrderedEmitMax(u11, false, this);
                }
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            cancel();
            this.downstream.onError(th2);
        }
    }

    @Override
    public boolean accept(i00.c cVar, U u10) {
        cVar.onNext(u10);
        return true;
    }
}
