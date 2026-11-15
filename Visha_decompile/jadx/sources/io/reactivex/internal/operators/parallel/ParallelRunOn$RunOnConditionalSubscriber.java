package io.reactivex.internal.operators.parallel;

import defpackage.f2a;
import defpackage.ne1;
import io.reactivex.Scheduler;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

final class ParallelRunOn$RunOnConditionalSubscriber<T> extends ParallelRunOn$BaseRunOnSubscriber<T> {
    private static final long serialVersionUID = 1075119423897941642L;
    final ne1 downstream;

    public ParallelRunOn$RunOnConditionalSubscriber(ne1 ne1Var, int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
        super(i, spscArrayQueue, worker);
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            throw null;
        }
    }

    @Override
    public void run() {
        int i = this.consumed;
        SpscArrayQueue<T> spscArrayQueue = this.queue;
        int iAddAndGet = 1;
        while (true) {
            long j = this.requested.get();
            if (0 != j) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                }
                boolean z = this.done;
                if (z && this.error != null) {
                    spscArrayQueue.clear();
                    throw null;
                }
                boolean z2 = spscArrayQueue.poll() == null;
                if (z && z2) {
                    throw null;
                }
                if (!z2) {
                    throw null;
                }
            }
            if (0 == j) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                } else if (this.done) {
                    if (this.error != null) {
                        spscArrayQueue.clear();
                        throw null;
                    }
                    if (spscArrayQueue.isEmpty()) {
                        throw null;
                    }
                }
            }
            if (0 != 0 && j != Long.MAX_VALUE) {
                this.requested.addAndGet(-0L);
            }
            int i2 = get();
            if (i2 == iAddAndGet) {
                this.consumed = i;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                iAddAndGet = i2;
            }
        }
    }
}
