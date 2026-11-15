package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableThrottleLatest$ThrottleLatestObserver<T> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = -8296689127439125014L;
    volatile boolean cancelled;
    volatile boolean done;
    final io.reactivex.rxjava3.core.o downstream;
    final boolean emitLast;
    Throwable error;
    final AtomicReference<T> latest = new AtomicReference<>();
    final yx.f onDropped;
    final long timeout;
    volatile boolean timerFired;
    boolean timerRunning;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;
    final Scheduler.Worker worker;

    ObservableThrottleLatest$ThrottleLatestObserver(io.reactivex.rxjava3.core.o oVar, long j10, TimeUnit timeUnit, Scheduler.Worker worker, boolean z10, yx.f fVar) {
        this.downstream = oVar;
        this.timeout = j10;
        this.unit = timeUnit;
        this.worker = worker;
        this.emitLast = z10;
        this.onDropped = fVar;
    }

    void clear() {
        if (this.onDropped == null) {
            this.latest.lazySet(null);
            return;
        }
        T andSet = this.latest.getAndSet(null);
        if (andSet != null) {
            try {
                this.onDropped.accept(andSet);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dy.a.r(th2);
            }
        }
    }

    @Override
    public void dispose() {
        this.cancelled = true;
        this.upstream.dispose();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            clear();
        }
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        AtomicReference<T> atomicReference = this.latest;
        io.reactivex.rxjava3.core.o oVar = this.downstream;
        int iAddAndGet = 1;
        while (!this.cancelled) {
            boolean z10 = this.done;
            Throwable compositeException = this.error;
            if (z10 && compositeException != null) {
                if (this.onDropped != null) {
                    T andSet = atomicReference.getAndSet(null);
                    if (andSet != null) {
                        try {
                            this.onDropped.accept(andSet);
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            compositeException = new CompositeException(compositeException, th2);
                        }
                    }
                } else {
                    atomicReference.lazySet(null);
                }
                oVar.onError(compositeException);
                this.worker.dispose();
                return;
            }
            boolean z11 = atomicReference.get() == null;
            if (z10) {
                if (!z11) {
                    T andSet2 = atomicReference.getAndSet(null);
                    if (this.emitLast) {
                        oVar.onNext(andSet2);
                    } else {
                        yx.f fVar = this.onDropped;
                        if (fVar != null) {
                            try {
                                fVar.accept(andSet2);
                            } catch (Throwable th3) {
                                io.reactivex.rxjava3.exceptions.a.b(th3);
                                oVar.onError(th3);
                                this.worker.dispose();
                                return;
                            }
                        }
                    }
                }
                oVar.onComplete();
                this.worker.dispose();
                return;
            }
            if (z11) {
                if (this.timerFired) {
                    this.timerRunning = false;
                    this.timerFired = false;
                }
            } else if (!this.timerRunning || this.timerFired) {
                oVar.onNext(atomicReference.getAndSet(null));
                this.timerFired = false;
                this.timerRunning = true;
                this.worker.schedule(this, this.timeout, this.unit);
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
        clear();
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override
    public void onError(Throwable th2) {
        this.error = th2;
        this.done = true;
        drain();
    }

    @Override
    public void onNext(T t10) {
        T andSet = this.latest.getAndSet(t10);
        yx.f fVar = this.onDropped;
        if (fVar != null && andSet != null) {
            try {
                fVar.accept(andSet);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.upstream.dispose();
                this.error = th2;
                this.done = true;
            }
        }
        drain();
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
        this.timerFired = true;
        drain();
    }
}
