package io.reactivex.internal.operators.flowable;

import defpackage.ac7;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.hm8;
import defpackage.jm8;
import defpackage.re3;
import io.reactivex.Scheduler;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

final class FlowableBufferTimed$BufferSkipBoundedSubscriber<T, U extends Collection<? super T>> extends jm8 implements f2a, Runnable {
    final Callable<U> bufferSupplier;
    final List<U> buffers;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;
    f2a upstream;
    final Scheduler.Worker w;

    public final class RemoveFromBuffer implements Runnable {
        private final U buffer;

        public RemoveFromBuffer(U u) {
            this.buffer = u;
        }

        @Override
        public void run() {
            synchronized (FlowableBufferTimed$BufferSkipBoundedSubscriber.this) {
                FlowableBufferTimed$BufferSkipBoundedSubscriber.this.buffers.remove(this.buffer);
            }
            FlowableBufferTimed$BufferSkipBoundedSubscriber flowableBufferTimed$BufferSkipBoundedSubscriber = FlowableBufferTimed$BufferSkipBoundedSubscriber.this;
            flowableBufferTimed$BufferSkipBoundedSubscriber.fastPathOrderedEmitMax(this.buffer, false, flowableBufferTimed$BufferSkipBoundedSubscriber.w);
        }
    }

    public FlowableBufferTimed$BufferSkipBoundedSubscriber(d2a d2aVar, Callable<U> callable, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker) {
        super(d2aVar, new MpscLinkedQueue());
        this.bufferSupplier = callable;
        this.timespan = j;
        this.timeskip = j2;
        this.unit = timeUnit;
        this.w = worker;
        this.buffers = new LinkedList();
    }

    @Override
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        this.w.dispose();
        clear();
    }

    public void clear() {
        synchronized (this) {
            this.buffers.clear();
        }
    }

    @Override
    public void onComplete() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.buffers);
            this.buffers.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.queue.offer((Collection) it.next());
        }
        this.done = true;
        if (enter()) {
            hm8.e(this.queue, this.downstream, false, this.w, this);
        }
    }

    @Override
    public void onError(Throwable th) {
        this.done = true;
        this.w.dispose();
        clear();
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        synchronized (this) {
            try {
                Iterator<U> it = this.buffers.iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            try {
                Collection collection = (Collection) ac7.d(this.bufferSupplier.call(), "The supplied buffer is null");
                this.buffers.add((U) collection);
                this.downstream.onSubscribe(this);
                f2aVar.request(Long.MAX_VALUE);
                Scheduler.Worker worker = this.w;
                long j = this.timeskip;
                worker.schedulePeriodically(this, j, j, this.unit);
                this.w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
            } catch (Throwable th) {
                re3.b(th);
                this.w.dispose();
                f2aVar.cancel();
                EmptySubscription.error(th, this.downstream);
            }
        }
    }

    @Override
    public void request(long j) {
        requested(j);
    }

    @Override
    public void run() {
        if (this.cancelled) {
            return;
        }
        try {
            Collection collection = (Collection) ac7.d(this.bufferSupplier.call(), "The supplied buffer is null");
            synchronized (this) {
                try {
                    if (this.cancelled) {
                        return;
                    }
                    this.buffers.add((U) collection);
                    this.w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            re3.b(th2);
            cancel();
            this.downstream.onError(th2);
        }
    }

    @Override
    public boolean accept(d2a d2aVar, U u) {
        d2aVar.onNext(u);
        return true;
    }
}
