package io.reactivex.internal.operators.flowable;

import defpackage.ac7;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.gd1;
import defpackage.i50;
import defpackage.k96;
import defpackage.l96;
import defpackage.mv9;
import defpackage.r14;
import defpackage.rc2;
import defpackage.re3;
import defpackage.t74;
import defpackage.wk5;
import defpackage.x2;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class FlowableFlatMapMaybe extends x2 {
    public final t74 d;
    public final boolean e;
    public final int f;

    public static final class FlatMapMaybeSubscriber<T, R> extends AtomicInteger implements y14, f2a {
        private static final long serialVersionUID = 8600231336733376951L;
        volatile boolean cancelled;
        final boolean delayErrors;
        final d2a downstream;
        final t74 mapper;
        final int maxConcurrency;
        f2a upstream;
        final AtomicLong requested = new AtomicLong();
        final gd1 set = new gd1();
        final AtomicThrowable errors = new AtomicThrowable();
        final AtomicInteger active = new AtomicInteger(1);
        final AtomicReference<mv9> queue = new AtomicReference<>();

        public final class InnerObserver extends AtomicReference<rc2> implements k96, rc2 {
            private static final long serialVersionUID = -502562646270949838L;

            public InnerObserver() {
            }

            @Override
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override
            public void onComplete() {
                FlatMapMaybeSubscriber.this.innerComplete(this);
            }

            @Override
            public void onError(Throwable th) {
                FlatMapMaybeSubscriber.this.innerError(this, th);
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
                DisposableHelper.setOnce(this, rc2Var);
            }

            @Override
            public void onSuccess(R r) {
                FlatMapMaybeSubscriber.this.innerSuccess(this, r);
            }
        }

        public FlatMapMaybeSubscriber(d2a d2aVar, t74 t74Var, boolean z, int i) {
            this.downstream = d2aVar;
            this.mapper = t74Var;
            this.delayErrors = z;
            this.maxConcurrency = i;
        }

        @Override
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            this.set.dispose();
        }

        public void clear() {
            mv9 mv9Var = this.queue.get();
            if (mv9Var != null) {
                mv9Var.clear();
            }
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            d2a d2aVar = this.downstream;
            AtomicInteger atomicInteger = this.active;
            AtomicReference<mv9> atomicReference = this.queue;
            int iAddAndGet = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        break;
                    }
                    if (this.cancelled) {
                        clear();
                        return;
                    }
                    if (!this.delayErrors && this.errors.get() != null) {
                        Throwable thTerminate = this.errors.terminate();
                        clear();
                        d2aVar.onError(thTerminate);
                        return;
                    }
                    boolean z = atomicInteger.get() == 0;
                    mv9 mv9Var = atomicReference.get();
                    Object objPoll = mv9Var != null ? mv9Var.poll() : null;
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable thTerminate2 = this.errors.terminate();
                        if (thTerminate2 != null) {
                            d2aVar.onError(thTerminate2);
                            return;
                        } else {
                            d2aVar.onComplete();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    d2aVar.onNext(objPoll);
                    j2++;
                }
                if (j2 == j) {
                    if (this.cancelled) {
                        clear();
                        return;
                    }
                    if (!this.delayErrors && this.errors.get() != null) {
                        Throwable thTerminate3 = this.errors.terminate();
                        clear();
                        d2aVar.onError(thTerminate3);
                        return;
                    }
                    boolean z3 = atomicInteger.get() == 0;
                    mv9 mv9Var2 = atomicReference.get();
                    boolean z4 = mv9Var2 == null || mv9Var2.isEmpty();
                    if (z3 && z4) {
                        Throwable thTerminate4 = this.errors.terminate();
                        if (thTerminate4 != null) {
                            d2aVar.onError(thTerminate4);
                            return;
                        } else {
                            d2aVar.onComplete();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    i50.d(this.requested, j2);
                    if (this.maxConcurrency != Integer.MAX_VALUE) {
                        this.upstream.request(j2);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        public mv9 getOrCreateQueue() {
            mv9 mv9Var;
            do {
                mv9 mv9Var2 = this.queue.get();
                if (mv9Var2 != null) {
                    return mv9Var2;
                }
                mv9Var = new mv9(r14.a());
            } while (!wk5.a(this.queue, null, mv9Var));
            return mv9Var;
        }

        public void innerComplete(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver) {
            this.set.a(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z = this.active.decrementAndGet() == 0;
                    mv9 mv9Var = this.queue.get();
                    if (z && (mv9Var == null || mv9Var.isEmpty())) {
                        Throwable thTerminate = this.errors.terminate();
                        if (thTerminate != null) {
                            this.downstream.onError(thTerminate);
                            return;
                        } else {
                            this.downstream.onComplete();
                            return;
                        }
                    }
                    if (this.maxConcurrency != Integer.MAX_VALUE) {
                        this.upstream.request(1L);
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    drainLoop();
                    return;
                }
            }
            this.active.decrementAndGet();
            if (this.maxConcurrency != Integer.MAX_VALUE) {
                this.upstream.request(1L);
            }
            drain();
        }

        public void innerError(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver, Throwable th) {
            this.set.a(innerObserver);
            if (!this.errors.addThrowable(th)) {
                yw8.s(th);
                return;
            }
            if (!this.delayErrors) {
                this.upstream.cancel();
                this.set.dispose();
            } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                this.upstream.request(1L);
            }
            this.active.decrementAndGet();
            drain();
        }

        /* JADX WARN: Code duplicated, block: B:34:0x007a  */
        /* JADX WARN: Code duplicated, block: B:40:0x008e A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public void innerSuccess(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver, R r) {
            mv9 orCreateQueue;
            this.set.a(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z = this.active.decrementAndGet() == 0;
                    if (this.requested.get() != 0) {
                        this.downstream.onNext(r);
                        mv9 mv9Var = this.queue.get();
                        if (z && (mv9Var == null || mv9Var.isEmpty())) {
                            Throwable thTerminate = this.errors.terminate();
                            if (thTerminate != null) {
                                this.downstream.onError(thTerminate);
                                return;
                            } else {
                                this.downstream.onComplete();
                                return;
                            }
                        }
                        i50.d(this.requested, 1L);
                        if (this.maxConcurrency != Integer.MAX_VALUE) {
                            this.upstream.request(1L);
                        }
                    } else {
                        mv9 orCreateQueue2 = getOrCreateQueue();
                        synchronized (orCreateQueue2) {
                            orCreateQueue2.offer(r);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                } else {
                    orCreateQueue = getOrCreateQueue();
                    synchronized (orCreateQueue) {
                        orCreateQueue.offer(r);
                    }
                    this.active.decrementAndGet();
                    if (getAndIncrement() != 0) {
                        return;
                    }
                }
            } else {
                orCreateQueue = getOrCreateQueue();
                synchronized (orCreateQueue) {
                    orCreateQueue.offer(r);
                    this.active.decrementAndGet();
                    if (getAndIncrement() != 0) {
                        return;
                    }
                }
            }
            drainLoop();
        }

        @Override
        public void onComplete() {
            this.active.decrementAndGet();
            drain();
        }

        @Override
        public void onError(Throwable th) {
            this.active.decrementAndGet();
            if (!this.errors.addThrowable(th)) {
                yw8.s(th);
                return;
            }
            if (!this.delayErrors) {
                this.set.dispose();
            }
            drain();
        }

        @Override
        public void onNext(T t) {
            try {
                l96 l96Var = (l96) ac7.d(this.mapper.apply(t), "The mapper returned a null MaybeSource");
                this.active.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.cancelled || !this.set.b(innerObserver)) {
                    return;
                }
                l96Var.a(innerObserver);
            } catch (Throwable th) {
                re3.b(th);
                this.upstream.cancel();
                onError(th);
            }
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
                this.upstream = f2aVar;
                this.downstream.onSubscribe(this);
                int i = this.maxConcurrency;
                if (i == Integer.MAX_VALUE) {
                    f2aVar.request(Long.MAX_VALUE);
                } else {
                    f2aVar.request(i);
                }
            }
        }

        @Override
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                i50.a(this.requested, j);
                drain();
            }
        }
    }

    public FlowableFlatMapMaybe(r14 r14Var, t74 t74Var, boolean z, int i) {
        super(r14Var);
        this.d = t74Var;
        this.e = z;
        this.f = i;
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.p(new FlatMapMaybeSubscriber(d2aVar, this.d, this.e, this.f));
    }
}
