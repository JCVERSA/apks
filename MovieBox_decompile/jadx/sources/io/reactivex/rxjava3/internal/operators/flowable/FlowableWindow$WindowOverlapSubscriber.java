package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.h;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

final class FlowableWindow$WindowOverlapSubscriber<T> extends AtomicInteger implements io.reactivex.rxjava3.core.f, i00.d, Runnable {
    private static final long serialVersionUID = 2428527070996323976L;
    final int bufferSize;
    volatile boolean cancelled;
    volatile boolean done;
    final i00.c downstream;
    Throwable error;
    final AtomicBoolean firstRequest;
    long index;
    final AtomicBoolean once;
    long produced;
    final h queue;
    final AtomicLong requested;
    final long size;
    final long skip;
    i00.d upstream;
    final ArrayDeque<UnicastProcessor> windows;
    final AtomicInteger wip;

    FlowableWindow$WindowOverlapSubscriber(i00.c cVar, long j10, long j11, int i10) {
        super(1);
        this.downstream = cVar;
        this.size = j10;
        this.skip = j11;
        this.queue = new h(i10);
        this.windows = new ArrayDeque<>();
        this.once = new AtomicBoolean();
        this.firstRequest = new AtomicBoolean();
        this.requested = new AtomicLong();
        this.wip = new AtomicInteger();
        this.bufferSize = i10;
    }

    @Override
    public void cancel() {
        this.cancelled = true;
        if (this.once.compareAndSet(false, true)) {
            run();
        }
        drain();
    }

    boolean checkTerminated(boolean z10, boolean z11, i00.c cVar, h hVar) {
        if (!z10) {
            return false;
        }
        Throwable th2 = this.error;
        if (th2 != null) {
            hVar.clear();
            cVar.onError(th2);
            return true;
        }
        if (!z11) {
            return false;
        }
        cVar.onComplete();
        return true;
    }

    void drain() {
        if (this.wip.getAndIncrement() != 0) {
            return;
        }
        i00.c cVar = this.downstream;
        h hVar = this.queue;
        int iAddAndGet = 1;
        while (true) {
            if (this.cancelled) {
                while (true) {
                    UnicastProcessor unicastProcessor = (UnicastProcessor) hVar.poll();
                    if (unicastProcessor == null) {
                        break;
                    } else {
                        unicastProcessor.onComplete();
                    }
                }
            } else {
                long j10 = this.requested.get();
                long j11 = 0;
                while (true) {
                    if (j11 != j10) {
                        boolean z10 = this.done;
                        UnicastProcessor unicastProcessor2 = (UnicastProcessor) hVar.poll();
                        boolean z11 = unicastProcessor2 == null;
                        if (this.cancelled) {
                            continue;
                        } else {
                            if (checkTerminated(z10, z11, cVar, hVar)) {
                                return;
                            }
                            if (!z11) {
                                g gVar = new g(unicastProcessor2);
                                cVar.onNext(gVar);
                                if (gVar.h()) {
                                    unicastProcessor2.onComplete();
                                }
                                j11++;
                            }
                        }
                    }
                    if (j11 == j10) {
                        if (this.cancelled) {
                            continue;
                        } else if (checkTerminated(this.done, hVar.isEmpty(), cVar, hVar)) {
                            return;
                        }
                    }
                    if (j11 != 0 && j10 != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j11);
                    }
                }
            }
            iAddAndGet = this.wip.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    @Override
    public void onComplete() {
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onComplete();
        }
        this.windows.clear();
        this.done = true;
        drain();
    }

    @Override
    public void onError(Throwable th2) {
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onError(th2);
        }
        this.windows.clear();
        this.error = th2;
        this.done = true;
        drain();
    }

    @Override
    public void onNext(T t10) {
        UnicastProcessor unicastProcessorI;
        long j10 = this.index;
        if (j10 != 0 || this.cancelled) {
            unicastProcessorI = null;
        } else {
            getAndIncrement();
            unicastProcessorI = UnicastProcessor.i(this.bufferSize, this);
            this.windows.offer(unicastProcessorI);
        }
        long j11 = j10 + 1;
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onNext(t10);
        }
        if (unicastProcessorI != null) {
            this.queue.offer(unicastProcessorI);
            drain();
        }
        long j12 = this.produced + 1;
        if (j12 == this.size) {
            this.produced = j12 - this.skip;
            UnicastProcessor unicastProcessorPoll = this.windows.poll();
            if (unicastProcessorPoll != null) {
                unicastProcessorPoll.onComplete();
            }
        } else {
            this.produced = j12;
        }
        if (j11 == this.skip) {
            this.index = 0L;
        } else {
            this.index = j11;
        }
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
            if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                this.upstream.request(io.reactivex.rxjava3.internal.util.a.c(this.skip, j10));
            } else {
                this.upstream.request(io.reactivex.rxjava3.internal.util.a.b(this.size, io.reactivex.rxjava3.internal.util.a.c(this.skip, j10 - 1)));
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
