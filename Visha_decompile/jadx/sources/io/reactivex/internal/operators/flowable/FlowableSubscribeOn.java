package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.jk8;
import defpackage.r14;
import defpackage.x2;
import defpackage.y14;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class FlowableSubscribeOn extends x2 {
    public final Scheduler d;
    public final boolean e;

    public static final class SubscribeOnSubscriber<T> extends AtomicReference<Thread> implements y14, f2a, Runnable {
        private static final long serialVersionUID = 8094547886072529208L;
        final d2a downstream;
        final boolean nonScheduledRequests;
        jk8 source;
        final Scheduler.Worker worker;
        final AtomicReference<f2a> upstream = new AtomicReference<>();
        final AtomicLong requested = new AtomicLong();

        public static final class Request implements Runnable {
            final long n;
            final f2a upstream;

            public Request(f2a f2aVar, long j) {
                this.upstream = f2aVar;
                this.n = j;
            }

            @Override
            public void run() {
                this.upstream.request(this.n);
            }
        }

        public SubscribeOnSubscriber(d2a d2aVar, Scheduler.Worker worker, jk8 jk8Var, boolean z) {
            this.downstream = d2aVar;
            this.worker = worker;
            this.source = jk8Var;
            this.nonScheduledRequests = !z;
        }

        @Override
        public void cancel() {
            SubscriptionHelper.cancel(this.upstream);
            this.worker.dispose();
        }

        @Override
        public void onComplete() {
            this.downstream.onComplete();
            this.worker.dispose();
        }

        @Override
        public void onError(Throwable th) {
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.setOnce(this.upstream, f2aVar)) {
                long andSet = this.requested.getAndSet(0L);
                if (andSet != 0) {
                    requestUpstream(andSet, f2aVar);
                }
            }
        }

        @Override
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                f2a f2aVar = this.upstream.get();
                if (f2aVar != null) {
                    requestUpstream(j, f2aVar);
                    return;
                }
                i50.a(this.requested, j);
                f2a f2aVar2 = this.upstream.get();
                if (f2aVar2 != null) {
                    long andSet = this.requested.getAndSet(0L);
                    if (andSet != 0) {
                        requestUpstream(andSet, f2aVar2);
                    }
                }
            }
        }

        public void requestUpstream(long j, f2a f2aVar) {
            if (this.nonScheduledRequests || Thread.currentThread() == get()) {
                f2aVar.request(j);
            } else {
                this.worker.schedule(new Request(f2aVar, j));
            }
        }

        @Override
        public void run() {
            lazySet(Thread.currentThread());
            jk8 jk8Var = this.source;
            this.source = null;
            jk8Var.subscribe(this);
        }
    }

    public FlowableSubscribeOn(r14 r14Var, Scheduler scheduler, boolean z) {
        super(r14Var);
        this.d = scheduler;
        this.e = z;
    }

    @Override
    public void q(d2a d2aVar) {
        Scheduler.Worker workerB = this.d.b();
        SubscribeOnSubscriber subscribeOnSubscriber = new SubscribeOnSubscriber(d2aVar, workerB, this.c, this.e);
        d2aVar.onSubscribe(subscribeOnSubscriber);
        workerB.schedule(subscribeOnSubscriber);
    }
}
