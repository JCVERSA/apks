package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

abstract class FlowableObserveOn$BaseObserveOnSubscriber<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.f, Runnable {
    private static final long serialVersionUID = -8241002408341274697L;
    volatile boolean cancelled;
    final boolean delayError;
    volatile boolean done;
    Throwable error;
    final int limit;
    boolean outputFused;
    final int prefetch;
    long produced;
    io.reactivex.rxjava3.operators.g queue;
    final AtomicLong requested = new AtomicLong();
    int sourceMode;
    i00.d upstream;
    final Scheduler.Worker worker;

    FlowableObserveOn$BaseObserveOnSubscriber(Scheduler.Worker worker, boolean z10, int i10) {
        this.worker = worker;
        this.delayError = z10;
        this.prefetch = i10;
        this.limit = i10 - (i10 >> 2);
    }

    @Override
    public final void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.cancel();
        this.worker.dispose();
        if (this.outputFused || getAndIncrement() != 0) {
            return;
        }
        this.queue.clear();
    }

    final boolean checkTerminated(boolean z10, boolean z11, i00.c cVar) {
        if (this.cancelled) {
            clear();
            return true;
        }
        if (!z10) {
            return false;
        }
        if (this.delayError) {
            if (!z11) {
                return false;
            }
            this.cancelled = true;
            Throwable th2 = this.error;
            if (th2 != null) {
                cVar.onError(th2);
            } else {
                cVar.onComplete();
            }
            this.worker.dispose();
            return true;
        }
        Throwable th3 = this.error;
        if (th3 != null) {
            this.cancelled = true;
            clear();
            cVar.onError(th3);
            this.worker.dispose();
            return true;
        }
        if (!z11) {
            return false;
        }
        this.cancelled = true;
        cVar.onComplete();
        this.worker.dispose();
        return true;
    }

    @Override
    public final void clear() {
        this.queue.clear();
    }

    @Override
    public final boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        trySchedule();
    }

    @Override
    public final void onError(Throwable th2) {
        if (this.done) {
            dy.a.r(th2);
            return;
        }
        this.error = th2;
        this.done = true;
        trySchedule();
    }

    @Override
    public final void onNext(T t10) {
        if (this.done) {
            return;
        }
        if (this.sourceMode == 2) {
            trySchedule();
            return;
        }
        if (!this.queue.offer(t10)) {
            this.upstream.cancel();
            this.error = new QueueOverflowException();
            this.done = true;
        }
        trySchedule();
    }

    @Override
    public abstract void onSubscribe(i00.d dVar);

    @Override
    public abstract Object poll() throws Throwable;

    @Override
    public final void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
            trySchedule();
        }
    }

    @Override
    public final int requestFusion(int i10) {
        if ((i10 & 2) == 0) {
            return 0;
        }
        this.outputFused = true;
        return 2;
    }

    @Override
    public final void run() {
        if (this.outputFused) {
            runBackfused();
        } else if (this.sourceMode == 1) {
            runSync();
        } else {
            runAsync();
        }
    }

    abstract void runAsync();

    abstract void runBackfused();

    abstract void runSync();

    final void trySchedule() {
        if (getAndIncrement() != 0) {
            return;
        }
        this.worker.schedule(this);
    }
}
