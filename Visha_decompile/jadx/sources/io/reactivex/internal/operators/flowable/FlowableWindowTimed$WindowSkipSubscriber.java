package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.jm8;
import defpackage.nm9;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

final class FlowableWindowTimed$WindowSkipSubscriber<T> extends jm8 implements f2a, Runnable {
    final int bufferSize;
    volatile boolean terminated;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;
    f2a upstream;
    final List<UnicastProcessor> windows;
    final Scheduler.Worker worker;

    public final class Completion implements Runnable {
        private final UnicastProcessor processor;

        public Completion(UnicastProcessor unicastProcessor) {
            this.processor = unicastProcessor;
        }

        @Override
        public void run() {
            FlowableWindowTimed$WindowSkipSubscriber.this.complete(this.processor);
        }
    }

    public static final class a {
        public final UnicastProcessor a;
        public final boolean b;

        public a(UnicastProcessor unicastProcessor, boolean z) {
            this.a = unicastProcessor;
            this.b = z;
        }
    }

    public FlowableWindowTimed$WindowSkipSubscriber(d2a d2aVar, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker, int i) {
        super(d2aVar, new MpscLinkedQueue());
        this.timespan = j;
        this.timeskip = j2;
        this.unit = timeUnit;
        this.worker = worker;
        this.bufferSize = i;
        this.windows = new LinkedList();
    }

    @Override
    public void cancel() {
        this.cancelled = true;
    }

    public void complete(UnicastProcessor unicastProcessor) {
        this.queue.offer(new a(unicastProcessor, false));
        if (enter()) {
            drainLoop();
        }
    }

    public void drainLoop() {
        nm9 nm9Var = this.queue;
        d2a d2aVar = this.downstream;
        List<UnicastProcessor> list = this.windows;
        int iLeave = 1;
        while (!this.terminated) {
            boolean z = this.done;
            Object objPoll = nm9Var.poll();
            boolean z2 = objPoll == null;
            boolean z3 = objPoll instanceof a;
            if (z && (z2 || z3)) {
                nm9Var.clear();
                Throwable th = this.error;
                if (th != null) {
                    Iterator<UnicastProcessor> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().onError(th);
                    }
                } else {
                    Iterator<UnicastProcessor> it2 = list.iterator();
                    while (it2.hasNext()) {
                        it2.next().onComplete();
                    }
                }
                list.clear();
                this.worker.dispose();
                return;
            }
            if (z2) {
                iLeave = leave(-iLeave);
                if (iLeave == 0) {
                    return;
                }
            } else if (z3) {
                a aVar = (a) objPoll;
                if (!aVar.b) {
                    list.remove(aVar.a);
                    aVar.a.onComplete();
                    if (list.isEmpty() && this.cancelled) {
                        this.terminated = true;
                    }
                } else if (!this.cancelled) {
                    long jRequested = requested();
                    if (jRequested != 0) {
                        UnicastProcessor unicastProcessorV = UnicastProcessor.v(this.bufferSize);
                        list.add(unicastProcessorV);
                        d2aVar.onNext(unicastProcessorV);
                        if (jRequested != Long.MAX_VALUE) {
                            produced(1L);
                        }
                        this.worker.schedule(new Completion(unicastProcessorV), this.timespan, this.unit);
                    } else {
                        d2aVar.onError(new MissingBackpressureException("Can't emit window due to lack of requests"));
                    }
                }
            } else {
                Iterator<UnicastProcessor> it3 = list.iterator();
                while (it3.hasNext()) {
                    it3.next().onNext(objPoll);
                }
            }
        }
        this.upstream.cancel();
        nm9Var.clear();
        list.clear();
        this.worker.dispose();
    }

    @Override
    public void onComplete() {
        this.done = true;
        if (enter()) {
            drainLoop();
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        if (enter()) {
            drainLoop();
        }
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        if (fastEnter()) {
            Iterator<UnicastProcessor> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onNext(t);
            }
            if (leave(-1) == 0) {
                return;
            }
        } else {
            this.queue.offer(t);
            if (!enter()) {
                return;
            }
        }
        drainLoop();
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
            if (this.cancelled) {
                return;
            }
            long jRequested = requested();
            if (jRequested == 0) {
                f2aVar.cancel();
                this.downstream.onError(new MissingBackpressureException("Could not emit the first window due to lack of requests"));
                return;
            }
            UnicastProcessor unicastProcessorV = UnicastProcessor.v(this.bufferSize);
            this.windows.add(unicastProcessorV);
            this.downstream.onNext(unicastProcessorV);
            if (jRequested != Long.MAX_VALUE) {
                produced(1L);
            }
            this.worker.schedule(new Completion(unicastProcessorV), this.timespan, this.unit);
            Scheduler.Worker worker = this.worker;
            long j = this.timeskip;
            worker.schedulePeriodically(this, j, j, this.unit);
            f2aVar.request(Long.MAX_VALUE);
        }
    }

    @Override
    public void request(long j) {
        requested(j);
    }

    @Override
    public void run() {
        a aVar = new a(UnicastProcessor.v(this.bufferSize), true);
        if (!this.cancelled) {
            this.queue.offer(aVar);
        }
        if (enter()) {
            drainLoop();
        }
    }
}
