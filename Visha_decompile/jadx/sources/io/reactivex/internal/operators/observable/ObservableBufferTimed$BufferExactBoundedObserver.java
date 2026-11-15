package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.hm8;
import defpackage.im8;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

final class ObservableBufferTimed$BufferExactBoundedObserver<T, U extends Collection<? super T>> extends im8 implements Runnable, rc2 {
    U buffer;
    final Callable<U> bufferSupplier;
    long consumerIndex;
    final int maxSize;
    long producerIndex;
    final boolean restartTimerOnMaxSize;
    rc2 timer;
    final long timespan;
    final TimeUnit unit;
    rc2 upstream;
    final Scheduler.Worker w;

    public ObservableBufferTimed$BufferExactBoundedObserver(pd7 pd7Var, Callable<U> callable, long j, TimeUnit timeUnit, int i, boolean z, Scheduler.Worker worker) {
        super(pd7Var, new MpscLinkedQueue());
        this.bufferSupplier = callable;
        this.timespan = j;
        this.unit = timeUnit;
        this.maxSize = i;
        this.restartTimerOnMaxSize = z;
        this.w = worker;
    }

    @Override
    public void dispose() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.dispose();
        this.w.dispose();
        synchronized (this) {
            this.buffer = null;
        }
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override
    public void onComplete() {
        U u;
        this.w.dispose();
        synchronized (this) {
            u = this.buffer;
            this.buffer = null;
        }
        if (u != null) {
            this.queue.offer(u);
            this.done = true;
            if (enter()) {
                hm8.d(this.queue, this.downstream, false, this, this);
            }
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
                fastPathOrderedEmit(u, false, this);
                try {
                    U u2 = (U) ac7.d(this.bufferSupplier.call(), "The buffer supplied is null");
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
                    this.downstream.onError(th);
                    dispose();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            try {
                this.buffer = (U) ac7.d(this.bufferSupplier.call(), "The buffer supplied is null");
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.w;
                long j = this.timespan;
                this.timer = worker.schedulePeriodically(this, j, j, this.unit);
            } catch (Throwable th) {
                re3.b(th);
                rc2Var.dispose();
                EmptyDisposable.error(th, this.downstream);
                this.w.dispose();
            }
        }
    }

    @Override
    public void run() {
        try {
            U u = (U) ac7.d(this.bufferSupplier.call(), "The bufferSupplier returned a null buffer");
            synchronized (this) {
                U u2 = this.buffer;
                if (u2 != null && this.producerIndex == this.consumerIndex) {
                    this.buffer = u;
                    fastPathOrderedEmit(u2, false, this);
                }
            }
        } catch (Throwable th) {
            re3.b(th);
            dispose();
            this.downstream.onError(th);
        }
    }

    @Override
    public void accept(pd7 pd7Var, U u) {
        pd7Var.onNext(u);
    }
}
