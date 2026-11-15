package io.reactivex.internal.operators.flowable;

import defpackage.ac7;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.hm8;
import defpackage.jm8;
import defpackage.rc2;
import defpackage.re3;
import io.reactivex.Scheduler;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

final class FlowableBufferTimed$BufferExactBoundedSubscriber<T, U extends Collection<? super T>> extends jm8 implements f2a, Runnable, rc2 {
    U buffer;
    final Callable<U> bufferSupplier;
    long consumerIndex;
    final int maxSize;
    long producerIndex;
    final boolean restartTimerOnMaxSize;
    rc2 timer;
    final long timespan;
    final TimeUnit unit;
    f2a upstream;
    final Scheduler.Worker w;

    public FlowableBufferTimed$BufferExactBoundedSubscriber(d2a d2aVar, Callable<U> callable, long j, TimeUnit timeUnit, int i, boolean z, Scheduler.Worker worker) {
        super(d2aVar, new MpscLinkedQueue());
        this.bufferSupplier = callable;
        this.timespan = j;
        this.unit = timeUnit;
        this.maxSize = i;
        this.restartTimerOnMaxSize = z;
        this.w = worker;
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
        this.w.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.w.isDisposed();
    }

    @Override
    public void onComplete() {
        U u;
        synchronized (this) {
            u = this.buffer;
            this.buffer = null;
        }
        if (u != null) {
            this.queue.offer(u);
            this.done = true;
            if (enter()) {
                hm8.e(this.queue, this.downstream, false, this, this);
            }
            this.w.dispose();
        }
    }

    @Override
    public void onError(Throwable th) {
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th);
        this.w.dispose();
    }

    @Override
    public void onNext(T t) {
        synchronized (this) {
            try {
                U u = this.buffer;
                if (u == null) {
                    return;
                }
                u.add(t);
                if (u.size() < this.maxSize) {
                    return;
                }
                this.buffer = null;
                this.producerIndex++;
                if (this.restartTimerOnMaxSize) {
                    this.timer.dispose();
                }
                fastPathOrderedEmitMax(u, false, this);
                try {
                    U u2 = (U) ac7.d(this.bufferSupplier.call(), "The supplied buffer is null");
                    synchronized (this) {
                        this.buffer = u2;
                        this.consumerIndex++;
                    }
                    if (this.restartTimerOnMaxSize) {
                        Scheduler.Worker worker = this.w;
                        long j = this.timespan;
                        this.timer = worker.schedulePeriodically(this, j, j, this.unit);
                    }
                } catch (Throwable th) {
                    re3.b(th);
                    cancel();
                    this.downstream.onError(th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            try {
                this.buffer = (U) ac7.d(this.bufferSupplier.call(), "The supplied buffer is null");
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.w;
                long j = this.timespan;
                this.timer = worker.schedulePeriodically(this, j, j, this.unit);
                f2aVar.request(Long.MAX_VALUE);
            } catch (Throwable th) {
                re3.b(th);
                this.w.dispose();
                f2aVar.cancel();
                EmptySubscription.error(th, this.downstream);
            }
        }
    }

    @Override
    public void request(long j) {
        requested(j);
    }

    @Override
    public void run() {
        try {
            U u = (U) ac7.d(this.bufferSupplier.call(), "The supplied buffer is null");
            synchronized (this) {
                U u2 = this.buffer;
                if (u2 != null && this.producerIndex == this.consumerIndex) {
                    this.buffer = u;
                    fastPathOrderedEmitMax(u2, false, this);
                }
            }
        } catch (Throwable th) {
            re3.b(th);
            cancel();
            this.downstream.onError(th);
        }
    }

    @Override
    public boolean accept(d2a d2aVar, U u) {
        d2aVar.onNext(u);
        return true;
    }
}
