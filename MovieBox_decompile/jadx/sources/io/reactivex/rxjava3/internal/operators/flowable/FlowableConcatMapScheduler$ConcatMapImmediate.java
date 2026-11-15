package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import yx.h;
import yx.k;

final class FlowableConcatMapScheduler$ConcatMapImmediate<T, R> extends FlowableConcatMapScheduler$BaseConcatMapSubscriber<T, R> {
    private static final long serialVersionUID = 7898995095634264146L;
    final i00.c downstream;
    final AtomicInteger wip;

    FlowableConcatMapScheduler$ConcatMapImmediate(i00.c cVar, h hVar, int i10, Scheduler.Worker worker) {
        super(hVar, i10, worker);
        this.downstream = cVar;
        this.wip = new AtomicInteger();
    }

    @Override
    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.inner.cancel();
        this.upstream.cancel();
        this.worker.dispose();
        this.errors.tryTerminateAndReport();
    }

    @Override
    public void innerError(Throwable th2) {
        if (this.errors.tryAddThrowableOrReport(th2)) {
            this.upstream.cancel();
            if (getAndIncrement() == 0) {
                this.errors.tryTerminateConsumer(this.downstream);
                this.worker.dispose();
            }
        }
    }

    @Override
    public void innerNext(R r10) {
        if (tryEnter()) {
            this.downstream.onNext(r10);
            if (compareAndSet(1, 0)) {
                return;
            }
            this.errors.tryTerminateConsumer(this.downstream);
            this.worker.dispose();
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.errors.tryAddThrowableOrReport(th2)) {
            this.inner.cancel();
            if (getAndIncrement() == 0) {
                this.errors.tryTerminateConsumer(this.downstream);
                this.worker.dispose();
            }
        }
    }

    @Override
    public void request(long j10) {
        this.inner.request(j10);
    }

    @Override
    public void run() {
        while (!this.cancelled) {
            if (!this.active) {
                boolean z10 = this.done;
                try {
                    Object objPoll = this.queue.poll();
                    boolean z11 = objPoll == null;
                    if (z10 && z11) {
                        this.downstream.onComplete();
                        this.worker.dispose();
                        return;
                    }
                    if (!z11) {
                        try {
                            Object objApply = this.mapper.apply(objPoll);
                            Objects.requireNonNull(objApply, "The mapper returned a null Publisher");
                            i00.b bVar = (i00.b) objApply;
                            if (this.sourceMode != 1) {
                                int i10 = this.consumed + 1;
                                if (i10 == this.limit) {
                                    this.consumed = 0;
                                    this.upstream.request(i10);
                                } else {
                                    this.consumed = i10;
                                }
                            }
                            if (bVar instanceof k) {
                                try {
                                    Object obj = ((k) bVar).get();
                                    if (obj != null && !this.cancelled) {
                                        if (!this.inner.isUnbounded()) {
                                            this.active = true;
                                            this.inner.setSubscription(new FlowableConcatMap$SimpleScalarSubscription(obj, this.inner));
                                        } else if (tryEnter()) {
                                            this.downstream.onNext(obj);
                                            if (!compareAndSet(1, 0)) {
                                                this.errors.tryTerminateConsumer(this.downstream);
                                                this.worker.dispose();
                                                return;
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.rxjava3.exceptions.a.b(th2);
                                    this.upstream.cancel();
                                    this.errors.tryAddThrowableOrReport(th2);
                                    this.errors.tryTerminateConsumer(this.downstream);
                                    this.worker.dispose();
                                    return;
                                }
                            } else {
                                this.active = true;
                                bVar.subscribe(this.inner);
                            }
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            this.upstream.cancel();
                            this.errors.tryAddThrowableOrReport(th3);
                            this.errors.tryTerminateConsumer(this.downstream);
                            this.worker.dispose();
                            return;
                        }
                    }
                } catch (Throwable th4) {
                    io.reactivex.rxjava3.exceptions.a.b(th4);
                    this.upstream.cancel();
                    this.errors.tryAddThrowableOrReport(th4);
                    this.errors.tryTerminateConsumer(this.downstream);
                    this.worker.dispose();
                    return;
                }
            }
            if (this.wip.decrementAndGet() == 0) {
                return;
            }
        }
    }

    @Override
    void schedule() {
        if (this.wip.getAndIncrement() == 0) {
            this.worker.schedule(this);
        }
    }

    @Override
    void subscribeActual() {
        this.downstream.onSubscribe(this);
    }

    boolean tryEnter() {
        return get() == 0 && compareAndSet(0, 1);
    }
}
