package io.reactivex.internal.operators.parallel;

import defpackage.d2a;
import defpackage.f2a;
import io.reactivex.Scheduler;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

final class ParallelRunOn$RunOnSubscriber<T> extends ParallelRunOn$BaseRunOnSubscriber<T> {
    private static final long serialVersionUID = 1075119423897941642L;
    final d2a downstream;

    public ParallelRunOn$RunOnSubscriber(d2a d2aVar, int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
        super(i, spscArrayQueue, worker);
        this.downstream = d2aVar;
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
            f2aVar.request(this.prefetch);
        }
    }

    @Override
    public void run() {
        Throwable th;
        int i = this.consumed;
        SpscArrayQueue<T> spscArrayQueue = this.queue;
        d2a d2aVar = this.downstream;
        int i2 = this.limit;
        int iAddAndGet = 1;
        while (true) {
            long j = this.requested.get();
            long j2 = 0;
            while (j2 != j) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                }
                boolean z = this.done;
                if (z && (th = this.error) != null) {
                    spscArrayQueue.clear();
                    d2aVar.onError(th);
                    this.worker.dispose();
                    return;
                }
                T tPoll = spscArrayQueue.poll();
                boolean z2 = tPoll == null;
                if (z && z2) {
                    d2aVar.onComplete();
                    this.worker.dispose();
                    return;
                } else {
                    if (z2) {
                        break;
                    }
                    d2aVar.onNext(tPoll);
                    j2++;
                    i++;
                    if (i == i2) {
                        this.upstream.request(i);
                        i = 0;
                    }
                }
            }
            if (j2 == j) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                }
                if (this.done) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        spscArrayQueue.clear();
                        d2aVar.onError(th2);
                        this.worker.dispose();
                        return;
                    } else if (spscArrayQueue.isEmpty()) {
                        d2aVar.onComplete();
                        this.worker.dispose();
                        return;
                    }
                }
            }
            if (j2 != 0 && j != Long.MAX_VALUE) {
                this.requested.addAndGet(-j2);
            }
            int i3 = get();
            if (i3 == iAddAndGet) {
                this.consumed = i;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                iAddAndGet = i3;
            }
        }
    }
}
