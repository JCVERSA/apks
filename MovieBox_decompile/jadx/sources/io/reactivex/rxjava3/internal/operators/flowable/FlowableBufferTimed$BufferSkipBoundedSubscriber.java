package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import yx.k;

final class FlowableBufferTimed$BufferSkipBoundedSubscriber<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.b implements i00.d, Runnable {
    final k bufferSupplier;
    final List<U> buffers;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;
    i00.d upstream;

    final Scheduler.Worker f62356w;

    final class RemoveFromBuffer implements Runnable {
        private final U buffer;

        RemoveFromBuffer(U u10) {
            this.buffer = u10;
        }

        @Override
        public void run() {
            synchronized (FlowableBufferTimed$BufferSkipBoundedSubscriber.this) {
                FlowableBufferTimed$BufferSkipBoundedSubscriber.this.buffers.remove(this.buffer);
            }
            FlowableBufferTimed$BufferSkipBoundedSubscriber flowableBufferTimed$BufferSkipBoundedSubscriber = FlowableBufferTimed$BufferSkipBoundedSubscriber.this;
            flowableBufferTimed$BufferSkipBoundedSubscriber.fastPathOrderedEmitMax(this.buffer, false, flowableBufferTimed$BufferSkipBoundedSubscriber.f62356w);
        }
    }

    FlowableBufferTimed$BufferSkipBoundedSubscriber(i00.c cVar, k kVar, long j10, long j11, TimeUnit timeUnit, Scheduler.Worker worker) {
        super(cVar, new MpscLinkedQueue());
        this.bufferSupplier = kVar;
        this.timespan = j10;
        this.timeskip = j11;
        this.unit = timeUnit;
        this.f62356w = worker;
        this.buffers = new LinkedList();
    }

    @Override
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        this.f62356w.dispose();
        clear();
    }

    void clear() {
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
            i.e(this.queue, this.downstream, false, this.f62356w, this);
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.done = true;
        this.f62356w.dispose();
        clear();
        this.downstream.onError(th2);
    }

    @Override
    public void onNext(T t10) {
        synchronized (this) {
            try {
                Iterator<U> it = this.buffers.iterator();
                while (it.hasNext()) {
                    it.next().add(t10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The supplied buffer is null");
                Collection collection = (Collection) obj;
                this.buffers.add((U) collection);
                this.downstream.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
                Scheduler.Worker worker = this.f62356w;
                long j10 = this.timeskip;
                worker.schedulePeriodically(this, j10, j10, this.unit);
                this.f62356w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f62356w.dispose();
                dVar.cancel();
                EmptySubscription.error(th2, this.downstream);
            }
        }
    }

    @Override
    public void request(long j10) {
        requested(j10);
    }

    @Override
    public void run() {
        if (this.cancelled) {
            return;
        }
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The supplied buffer is null");
            Collection collection = (Collection) obj;
            synchronized (this) {
                try {
                    if (this.cancelled) {
                        return;
                    }
                    this.buffers.add((U) collection);
                    this.f62356w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            cancel();
            this.downstream.onError(th3);
        }
    }

    @Override
    public boolean accept(i00.c cVar, U u10) {
        cVar.onNext(u10);
        return true;
    }
}
