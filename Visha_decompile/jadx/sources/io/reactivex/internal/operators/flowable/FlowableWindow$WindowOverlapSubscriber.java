package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.mv9;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

final class FlowableWindow$WindowOverlapSubscriber<T> extends AtomicInteger implements y14, f2a, Runnable {
    private static final long serialVersionUID = 2428527070996323976L;
    final int bufferSize;
    volatile boolean cancelled;
    volatile boolean done;
    final d2a downstream;
    Throwable error;
    final AtomicBoolean firstRequest;
    long index;
    final AtomicBoolean once;
    long produced;
    final mv9 queue;
    final AtomicLong requested;
    final long size;
    final long skip;
    f2a upstream;
    final ArrayDeque<UnicastProcessor> windows;
    final AtomicInteger wip;

    public FlowableWindow$WindowOverlapSubscriber(d2a d2aVar, long j, long j2, int i) {
        super(1);
        this.downstream = d2aVar;
        this.size = j;
        this.skip = j2;
        this.queue = new mv9(i);
        this.windows = new ArrayDeque<>();
        this.once = new AtomicBoolean();
        this.firstRequest = new AtomicBoolean();
        this.requested = new AtomicLong();
        this.wip = new AtomicInteger();
        this.bufferSize = i;
    }

    @Override
    public void cancel() {
        this.cancelled = true;
        if (this.once.compareAndSet(false, true)) {
            run();
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, d2a d2aVar, mv9 mv9Var) {
        if (this.cancelled) {
            mv9Var.clear();
            return true;
        }
        if (!z) {
            return false;
        }
        Throwable th = this.error;
        if (th != null) {
            mv9Var.clear();
            d2aVar.onError(th);
            return true;
        }
        if (!z2) {
            return false;
        }
        d2aVar.onComplete();
        return true;
    }

    public void drain() {
        if (this.wip.getAndIncrement() != 0) {
            return;
        }
        d2a d2aVar = this.downstream;
        mv9 mv9Var = this.queue;
        int iAddAndGet = 1;
        do {
            long j = this.requested.get();
            long j2 = 0;
            while (j2 != j) {
                boolean z = this.done;
                UnicastProcessor unicastProcessor = (UnicastProcessor) mv9Var.poll();
                boolean z2 = unicastProcessor == null;
                if (checkTerminated(z, z2, d2aVar, mv9Var)) {
                    return;
                }
                if (z2) {
                    break;
                }
                d2aVar.onNext(unicastProcessor);
                j2++;
            }
            if (j2 == j && checkTerminated(this.done, mv9Var.isEmpty(), d2aVar, mv9Var)) {
                return;
            }
            if (j2 != 0 && j != Long.MAX_VALUE) {
                this.requested.addAndGet(-j2);
            }
            iAddAndGet = this.wip.addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    @Override
    public void onComplete() {
        if (this.done) {
            return;
        }
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onComplete();
        }
        this.windows.clear();
        this.done = true;
        drain();
    }

    @Override
    public void onError(Throwable th) {
        if (this.done) {
            yw8.s(th);
            return;
        }
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onError(th);
        }
        this.windows.clear();
        this.error = th;
        this.done = true;
        drain();
    }

    @Override
    public void onNext(T t) {
        if (this.done) {
            return;
        }
        long j = this.index;
        if (j == 0 && !this.cancelled) {
            getAndIncrement();
            UnicastProcessor unicastProcessorW = UnicastProcessor.w(this.bufferSize, this);
            this.windows.offer(unicastProcessorW);
            this.queue.offer(unicastProcessorW);
            drain();
        }
        long j2 = j + 1;
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onNext(t);
        }
        long j3 = this.produced + 1;
        if (j3 == this.size) {
            this.produced = j3 - this.skip;
            UnicastProcessor unicastProcessorPoll = this.windows.poll();
            if (unicastProcessorPoll != null) {
                unicastProcessorPoll.onComplete();
            }
        } else {
            this.produced = j3;
        }
        if (j2 == this.skip) {
            this.index = 0L;
        } else {
            this.index = j2;
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            i50.a(this.requested, j);
            if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                this.upstream.request(i50.c(this.skip, j));
            } else {
                this.upstream.request(i50.b(this.size, i50.c(this.skip, j - 1)));
            }
            drain();
        }
    }

    @Override
    public void run() {
        if (decrementAndGet() == 0) {
            this.upstream.cancel();
        }
    }
}
