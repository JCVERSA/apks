package io.reactivex.rxjava3.internal.operators.parallel;

import i00.c;
import i00.d;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.SpscArrayQueue;

final class ParallelRunOn$RunOnSubscriber<T> extends ParallelRunOn$BaseRunOnSubscriber<T> {
    private static final long serialVersionUID = 1075119423897941642L;
    final c downstream;

    ParallelRunOn$RunOnSubscriber(c cVar, int i10, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
        super(i10, spscArrayQueue, worker);
        this.downstream = cVar;
    }

    @Override
    public void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            dVar.request(this.prefetch);
        }
    }

    @Override
    public void run() {
        Throwable th2;
        int i10 = this.consumed;
        SpscArrayQueue<T> spscArrayQueue = this.queue;
        c cVar = this.downstream;
        int i11 = this.limit;
        int iAddAndGet = 1;
        while (true) {
            long j10 = this.requested.get();
            long j11 = 0;
            while (j11 != j10) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                }
                boolean z10 = this.done;
                if (z10 && (th2 = this.error) != null) {
                    spscArrayQueue.clear();
                    cVar.onError(th2);
                    this.worker.dispose();
                    return;
                }
                T tPoll = spscArrayQueue.poll();
                boolean z11 = tPoll == null;
                if (z10 && z11) {
                    cVar.onComplete();
                    this.worker.dispose();
                    return;
                } else {
                    if (z11) {
                        break;
                    }
                    cVar.onNext(tPoll);
                    j11++;
                    i10++;
                    if (i10 == i11) {
                        this.upstream.request(i10);
                        i10 = 0;
                    }
                }
            }
            if (j11 == j10) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                }
                if (this.done) {
                    Throwable th3 = this.error;
                    if (th3 != null) {
                        spscArrayQueue.clear();
                        cVar.onError(th3);
                        this.worker.dispose();
                        return;
                    } else if (spscArrayQueue.isEmpty()) {
                        cVar.onComplete();
                        this.worker.dispose();
                        return;
                    }
                }
            }
            if (j11 != 0 && j10 != Long.MAX_VALUE) {
                this.requested.addAndGet(-j11);
            }
            int i12 = get();
            if (i12 == iAddAndGet) {
                this.consumed = i10;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                iAddAndGet = i12;
            }
        }
    }
}
