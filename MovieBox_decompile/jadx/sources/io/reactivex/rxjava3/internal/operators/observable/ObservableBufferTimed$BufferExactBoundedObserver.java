package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

final class ObservableBufferTimed$BufferExactBoundedObserver<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.e implements Runnable, io.reactivex.rxjava3.disposables.c {
    U buffer;
    final yx.k bufferSupplier;
    long consumerIndex;
    final int maxSize;
    long producerIndex;
    final boolean restartTimerOnMaxSize;
    io.reactivex.rxjava3.disposables.c timer;
    final long timespan;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;

    final Scheduler.Worker f62392w;

    ObservableBufferTimed$BufferExactBoundedObserver(io.reactivex.rxjava3.core.o oVar, yx.k kVar, long j10, TimeUnit timeUnit, int i10, boolean z10, Scheduler.Worker worker) {
        super(oVar, new MpscLinkedQueue());
        this.bufferSupplier = kVar;
        this.timespan = j10;
        this.unit = timeUnit;
        this.maxSize = i10;
        this.restartTimerOnMaxSize = z10;
        this.f62392w = worker;
    }

    @Override
    public void dispose() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.dispose();
        this.f62392w.dispose();
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
        U u10;
        this.f62392w.dispose();
        synchronized (this) {
            u10 = this.buffer;
            this.buffer = null;
        }
        if (u10 != null) {
            this.queue.offer(u10);
            this.done = true;
            if (enter()) {
                io.reactivex.rxjava3.internal.util.i.d(this.queue, this.downstream, false, this, this);
            }
        }
    }

    @Override
    public void onError(Throwable th2) {
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th2);
        this.f62392w.dispose();
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
                fastPathOrderedEmit(u10, false, this);
                try {
                    Object obj = this.bufferSupplier.get();
                    Objects.requireNonNull(obj, "The buffer supplied is null");
                    U u11 = (U) obj;
                    synchronized (this) {
                        this.buffer = u11;
                        this.consumerIndex++;
                    }
                    if (this.restartTimerOnMaxSize) {
                        Scheduler.Worker worker = this.f62392w;
                        long j10 = this.timespan;
                        this.timer = worker.schedulePeriodically(this, j10, j10, this.unit);
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.downstream.onError(th2);
                    dispose();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The buffer supplied is null");
                this.buffer = (U) obj;
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.f62392w;
                long j10 = this.timespan;
                this.timer = worker.schedulePeriodically(this, j10, j10, this.unit);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cVar.dispose();
                EmptyDisposable.error(th2, this.downstream);
                this.f62392w.dispose();
            }
        }
    }

    @Override
    public void run() {
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
            U u10 = (U) obj;
            synchronized (this) {
                U u11 = this.buffer;
                if (u11 != null && this.producerIndex == this.consumerIndex) {
                    this.buffer = u10;
                    fastPathOrderedEmit(u11, false, this);
                }
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dispose();
            this.downstream.onError(th2);
        }
    }

    @Override
    public void accept(io.reactivex.rxjava3.core.o oVar, U u10) {
        oVar.onNext(u10);
    }
}
