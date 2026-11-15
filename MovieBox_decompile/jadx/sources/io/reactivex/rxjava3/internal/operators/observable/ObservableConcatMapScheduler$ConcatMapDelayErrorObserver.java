package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableConcatMapScheduler$ConcatMapDelayErrorObserver<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = -6951100001833242599L;
    volatile boolean active;
    final int bufferSize;
    volatile boolean cancelled;
    volatile boolean done;
    final io.reactivex.rxjava3.core.o downstream;
    final AtomicThrowable errors = new AtomicThrowable();
    final yx.h mapper;
    final DelayErrorInnerObserver<R> observer;
    io.reactivex.rxjava3.operators.g queue;
    int sourceMode;
    final boolean tillTheEnd;
    io.reactivex.rxjava3.disposables.c upstream;
    final Scheduler.Worker worker;

    static final class DelayErrorInnerObserver<R> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.o {
        private static final long serialVersionUID = 2620149119579502636L;
        final io.reactivex.rxjava3.core.o downstream;
        final ObservableConcatMapScheduler$ConcatMapDelayErrorObserver<?, R> parent;

        DelayErrorInnerObserver(io.reactivex.rxjava3.core.o oVar, ObservableConcatMapScheduler$ConcatMapDelayErrorObserver<?, R> observableConcatMapScheduler$ConcatMapDelayErrorObserver) {
            this.downstream = oVar;
            this.parent = observableConcatMapScheduler$ConcatMapDelayErrorObserver;
        }

        void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public void onComplete() {
            ObservableConcatMapScheduler$ConcatMapDelayErrorObserver<?, R> observableConcatMapScheduler$ConcatMapDelayErrorObserver = this.parent;
            observableConcatMapScheduler$ConcatMapDelayErrorObserver.active = false;
            observableConcatMapScheduler$ConcatMapDelayErrorObserver.drain();
        }

        @Override
        public void onError(Throwable th2) {
            ObservableConcatMapScheduler$ConcatMapDelayErrorObserver<?, R> observableConcatMapScheduler$ConcatMapDelayErrorObserver = this.parent;
            if (observableConcatMapScheduler$ConcatMapDelayErrorObserver.errors.tryAddThrowableOrReport(th2)) {
                if (!observableConcatMapScheduler$ConcatMapDelayErrorObserver.tillTheEnd) {
                    observableConcatMapScheduler$ConcatMapDelayErrorObserver.upstream.dispose();
                }
                observableConcatMapScheduler$ConcatMapDelayErrorObserver.active = false;
                observableConcatMapScheduler$ConcatMapDelayErrorObserver.drain();
            }
        }

        @Override
        public void onNext(R r10) {
            this.downstream.onNext(r10);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }
    }

    ObservableConcatMapScheduler$ConcatMapDelayErrorObserver(io.reactivex.rxjava3.core.o oVar, yx.h hVar, int i10, boolean z10, Scheduler.Worker worker) {
        this.downstream = oVar;
        this.mapper = hVar;
        this.bufferSize = i10;
        this.tillTheEnd = z10;
        this.observer = new DelayErrorInnerObserver<>(oVar, this);
        this.worker = worker;
    }

    @Override
    public void dispose() {
        this.cancelled = true;
        this.upstream.dispose();
        this.observer.dispose();
        this.worker.dispose();
        this.errors.tryTerminateAndReport();
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        this.worker.schedule(this);
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
        if (this.errors.tryAddThrowableOrReport(th2)) {
            this.done = true;
            drain();
        }
    }

    @Override
    public void onNext(T t10) {
        if (this.sourceMode == 0) {
            this.queue.offer(t10);
        }
        drain();
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            if (cVar instanceof io.reactivex.rxjava3.operators.b) {
                io.reactivex.rxjava3.operators.b bVar = (io.reactivex.rxjava3.operators.b) cVar;
                int iRequestFusion = bVar.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.sourceMode = iRequestFusion;
                    this.queue = bVar;
                    this.done = true;
                    this.downstream.onSubscribe(this);
                    drain();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.sourceMode = iRequestFusion;
                    this.queue = bVar;
                    this.downstream.onSubscribe(this);
                    return;
                }
            }
            this.queue = new io.reactivex.rxjava3.operators.h(this.bufferSize);
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void run() {
        io.reactivex.rxjava3.core.o oVar = this.downstream;
        io.reactivex.rxjava3.operators.g gVar = this.queue;
        AtomicThrowable atomicThrowable = this.errors;
        while (true) {
            if (!this.active) {
                if (this.cancelled) {
                    gVar.clear();
                    return;
                }
                if (!this.tillTheEnd && atomicThrowable.get() != null) {
                    gVar.clear();
                    this.cancelled = true;
                    atomicThrowable.tryTerminateConsumer(oVar);
                    this.worker.dispose();
                    return;
                }
                boolean z10 = this.done;
                try {
                    Object objPoll = gVar.poll();
                    boolean z11 = objPoll == null;
                    if (z10 && z11) {
                        this.cancelled = true;
                        atomicThrowable.tryTerminateConsumer(oVar);
                        this.worker.dispose();
                        return;
                    }
                    if (!z11) {
                        try {
                            Object objApply = this.mapper.apply(objPoll);
                            Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                            io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) objApply;
                            if (mVar instanceof yx.k) {
                                try {
                                    Object obj = ((yx.k) mVar).get();
                                    if (obj != null && !this.cancelled) {
                                        oVar.onNext(obj);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.rxjava3.exceptions.a.b(th2);
                                    atomicThrowable.tryAddThrowableOrReport(th2);
                                }
                            } else {
                                this.active = true;
                                mVar.subscribe(this.observer);
                            }
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            this.cancelled = true;
                            this.upstream.dispose();
                            gVar.clear();
                            atomicThrowable.tryAddThrowableOrReport(th3);
                            atomicThrowable.tryTerminateConsumer(oVar);
                            this.worker.dispose();
                            return;
                        }
                    }
                } catch (Throwable th4) {
                    io.reactivex.rxjava3.exceptions.a.b(th4);
                    this.cancelled = true;
                    this.upstream.dispose();
                    atomicThrowable.tryAddThrowableOrReport(th4);
                    atomicThrowable.tryTerminateConsumer(oVar);
                    this.worker.dispose();
                    return;
                }
            }
            if (decrementAndGet() == 0) {
                return;
            }
        }
    }
}
