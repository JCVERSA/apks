package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.SpscArrayQueue;

final class FlowableObserveOn$ObserveOnConditionalSubscriber<T> extends FlowableObserveOn$BaseObserveOnSubscriber<T> {
    private static final long serialVersionUID = 644624475404284533L;
    long consumed;
    final io.reactivex.rxjava3.operators.a downstream;

    FlowableObserveOn$ObserveOnConditionalSubscriber(io.reactivex.rxjava3.operators.a aVar, Scheduler.Worker worker, boolean z10, int i10) {
        super(worker, z10, i10);
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
                    throw null;
                }
                if (iRequestFusion == 2) {
                    this.sourceMode = 2;
                    this.queue = dVar2;
                    throw null;
                }
            }
            this.queue = new SpscArrayQueue(this.prefetch);
            throw null;
        }
    }

    @Override
    public T poll() throws Throwable {
        T t10 = (T) this.queue.poll();
        if (t10 != null && this.sourceMode != 1) {
            long j10 = this.consumed + 1;
            if (j10 == this.limit) {
                this.consumed = 0L;
                this.upstream.request(j10);
            } else {
                this.consumed = j10;
            }
        }
        return t10;
    }

    @Override
    void runAsync() {
        io.reactivex.rxjava3.operators.g gVar = this.queue;
        long j10 = this.produced;
        long j11 = this.consumed;
        int iAddAndGet = 1;
        do {
            long j12 = this.requested.get();
            if (j10 != j12) {
                boolean z10 = this.done;
                try {
                    boolean z11 = gVar.poll() == null;
                    if (checkTerminated(z10, z11, null)) {
                        return;
                    }
                    if (!z11) {
                        throw null;
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.cancelled = true;
                    this.upstream.cancel();
                    gVar.clear();
                    throw null;
                }
            }
            if (j10 == j12 && checkTerminated(this.done, gVar.isEmpty(), null)) {
                return;
            }
            this.produced = j10;
            this.consumed = j11;
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    @Override
    void runBackfused() {
        if (!this.cancelled) {
            throw null;
        }
    }

    @Override
    void runSync() {
        io.reactivex.rxjava3.operators.g gVar = this.queue;
        long j10 = this.produced;
        int iAddAndGet = 1;
        while (j10 == this.requested.get()) {
            if (this.cancelled) {
                return;
            }
            if (gVar.isEmpty()) {
                this.cancelled = true;
                throw null;
            }
            this.produced = j10;
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
        try {
            Object objPoll = gVar.poll();
            if (this.cancelled) {
                return;
            }
            if (objPoll != null) {
                throw null;
            }
            this.cancelled = true;
            throw null;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            this.cancelled = true;
            this.upstream.cancel();
            throw null;
        }
    }
}
