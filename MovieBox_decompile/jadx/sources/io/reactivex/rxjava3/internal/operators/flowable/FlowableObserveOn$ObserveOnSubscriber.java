package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.SpscArrayQueue;

final class FlowableObserveOn$ObserveOnSubscriber<T> extends FlowableObserveOn$BaseObserveOnSubscriber<T> {
    private static final long serialVersionUID = -4547113800637756442L;
    final i00.c downstream;

    FlowableObserveOn$ObserveOnSubscriber(i00.c cVar, Scheduler.Worker worker, boolean z10, int i10) {
        super(worker, z10, i10);
        this.downstream = cVar;
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            if (dVar instanceof io.reactivex.rxjava3.operators.d) {
                io.reactivex.rxjava3.operators.d dVar2 = (io.reactivex.rxjava3.operators.d) dVar;
                int iRequestFusion = dVar2.requestFusion(7);
                if (iRequestFusion == 1) {
                    this.sourceMode = 1;
                    this.queue = dVar2;
                    this.done = true;
                    this.downstream.onSubscribe(this);
                    return;
                }
                if (iRequestFusion == 2) {
                    this.sourceMode = 2;
                    this.queue = dVar2;
                    this.downstream.onSubscribe(this);
                    dVar.request(this.prefetch);
                    return;
                }
            }
            this.queue = new SpscArrayQueue(this.prefetch);
            this.downstream.onSubscribe(this);
            dVar.request(this.prefetch);
        }
    }

    @Override
    public T poll() throws Throwable {
        T t10 = (T) this.queue.poll();
        if (t10 != null && this.sourceMode != 1) {
            long j10 = this.produced + 1;
            if (j10 == this.limit) {
                this.produced = 0L;
                this.upstream.request(j10);
            } else {
                this.produced = j10;
            }
        }
        return t10;
    }

    @Override
    void runAsync() {
        i00.c cVar = this.downstream;
        io.reactivex.rxjava3.operators.g gVar = this.queue;
        long j10 = this.produced;
        int iAddAndGet = 1;
        while (true) {
            long jAddAndGet = this.requested.get();
            while (j10 != jAddAndGet) {
                boolean z10 = this.done;
                try {
                    Object objPoll = gVar.poll();
                    boolean z11 = objPoll == null;
                    if (checkTerminated(z10, z11, cVar)) {
                        return;
                    }
                    if (z11) {
                        break;
                    }
                    cVar.onNext(objPoll);
                    j10++;
                    if (j10 == this.limit) {
                        if (jAddAndGet != Long.MAX_VALUE) {
                            jAddAndGet = this.requested.addAndGet(-j10);
                        }
                        this.upstream.request(j10);
                        j10 = 0;
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.cancelled = true;
                    this.upstream.cancel();
                    gVar.clear();
                    cVar.onError(th2);
                    this.worker.dispose();
                    return;
                }
            }
            if (j10 == jAddAndGet && checkTerminated(this.done, gVar.isEmpty(), cVar)) {
                return;
            }
            int i10 = get();
            if (iAddAndGet == i10) {
                this.produced = j10;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                iAddAndGet = i10;
            }
        }
    }

    @Override
    void runBackfused() {
        int iAddAndGet = 1;
        while (!this.cancelled) {
            boolean z10 = this.done;
            this.downstream.onNext(null);
            if (z10) {
                this.cancelled = true;
                Throwable th2 = this.error;
                if (th2 != null) {
                    this.downstream.onError(th2);
                } else {
                    this.downstream.onComplete();
                }
                this.worker.dispose();
                return;
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    @Override
    void runSync() {
        i00.c cVar = this.downstream;
        io.reactivex.rxjava3.operators.g gVar = this.queue;
        long j10 = this.produced;
        int iAddAndGet = 1;
        do {
            long j11 = this.requested.get();
            while (j10 != j11) {
                try {
                    Object objPoll = gVar.poll();
                    if (this.cancelled) {
                        return;
                    }
                    if (objPoll == null) {
                        this.cancelled = true;
                        cVar.onComplete();
                        this.worker.dispose();
                        return;
                    }
                    cVar.onNext(objPoll);
                    j10++;
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.cancelled = true;
                    this.upstream.cancel();
                    cVar.onError(th2);
                    this.worker.dispose();
                    return;
                }
            }
            if (this.cancelled) {
                return;
            }
            if (gVar.isEmpty()) {
                this.cancelled = true;
                cVar.onComplete();
                this.worker.dispose();
                return;
            }
            this.produced = j10;
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }
}
