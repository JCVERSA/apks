package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableBufferTimed$BufferExactUnboundedObserver<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.e implements Runnable, io.reactivex.rxjava3.disposables.c {
    U buffer;
    final yx.k bufferSupplier;
    final Scheduler scheduler;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> timer;
    final long timespan;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;

    ObservableBufferTimed$BufferExactUnboundedObserver(io.reactivex.rxjava3.core.o oVar, yx.k kVar, long j10, TimeUnit timeUnit, Scheduler scheduler) {
        super(oVar, new MpscLinkedQueue());
        this.timer = new AtomicReference<>();
        this.bufferSupplier = kVar;
        this.timespan = j10;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this.timer);
        this.upstream.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.timer.get() == DisposableHelper.DISPOSED;
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
                io.reactivex.rxjava3.internal.util.i.d(this.queue, this.downstream, false, null, this);
            }
        }
        DisposableHelper.dispose(this.timer);
    }

    @Override
    public void onError(Throwable th2) {
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th2);
        DisposableHelper.dispose(this.timer);
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
            } catch (Throwable th2) {
                throw th2;
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
                if (DisposableHelper.isDisposed(this.timer.get())) {
                    return;
                }
                Scheduler scheduler = this.scheduler;
                long j10 = this.timespan;
                DisposableHelper.set(this.timer, scheduler.f(this, j10, j10, this.unit));
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dispose();
                EmptyDisposable.error(th2, this.downstream);
            }
        }
    }

    @Override
    public void run() {
        U u10;
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
            U u11 = (U) obj;
            synchronized (this) {
                try {
                    u10 = this.buffer;
                    if (u10 != null) {
                        this.buffer = u11;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (u10 == null) {
                DisposableHelper.dispose(this.timer);
            } else {
                fastPathEmit(u10, false, this);
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            this.downstream.onError(th3);
            dispose();
        }
    }

    @Override
    public void accept(io.reactivex.rxjava3.core.o oVar, U u10) {
        this.downstream.onNext(u10);
    }
}
