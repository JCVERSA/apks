package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableThrottleFirstTimed$DebounceTimedObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = 786994795061867455L;
    final io.reactivex.rxjava3.core.o downstream;
    volatile boolean gate;
    final yx.f onDropped;
    final long timeout;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;
    final Scheduler.Worker worker;

    ObservableThrottleFirstTimed$DebounceTimedObserver(io.reactivex.rxjava3.core.o oVar, long j10, TimeUnit timeUnit, Scheduler.Worker worker, yx.f fVar) {
        this.downstream = oVar;
        this.timeout = j10;
        this.unit = timeUnit;
        this.worker = worker;
        this.onDropped = fVar;
    }

    @Override
    public void dispose() {
        this.upstream.dispose();
        this.worker.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.worker.isDisposed();
    }

    @Override
    public void onComplete() {
        this.downstream.onComplete();
        this.worker.dispose();
    }

    @Override
    public void onError(Throwable th2) {
        this.downstream.onError(th2);
        this.worker.dispose();
    }

    @Override
    public void onNext(T t10) {
        if (!this.gate) {
            this.gate = true;
            this.downstream.onNext(t10);
            io.reactivex.rxjava3.disposables.c cVar = get();
            if (cVar != null) {
                cVar.dispose();
            }
            DisposableHelper.replace(this, this.worker.schedule(this, this.timeout, this.unit));
            return;
        }
        yx.f fVar = this.onDropped;
        if (fVar != null) {
            try {
                fVar.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.upstream.dispose();
                this.downstream.onError(th2);
                this.worker.dispose();
            }
        }
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void run() {
        this.gate = false;
    }
}
