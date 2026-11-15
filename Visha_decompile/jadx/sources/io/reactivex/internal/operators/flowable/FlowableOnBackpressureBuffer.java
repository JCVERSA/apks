package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.d5;
import defpackage.f2a;
import defpackage.i50;
import defpackage.mv9;
import defpackage.nm9;
import defpackage.r14;
import defpackage.re3;
import defpackage.x2;
import defpackage.y14;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

public final class FlowableOnBackpressureBuffer extends x2 {
    public final int d;
    public final boolean e;
    public final boolean f;
    public final d5 g;

    public static final class BackpressureBufferSubscriber<T> extends BasicIntQueueSubscription<T> implements y14 {
        private static final long serialVersionUID = -2514538129242366402L;
        volatile boolean cancelled;
        final boolean delayError;
        volatile boolean done;
        final d2a downstream;
        Throwable error;
        final d5 onOverflow;
        boolean outputFused;
        final nm9 queue;
        final AtomicLong requested = new AtomicLong();
        f2a upstream;

        public BackpressureBufferSubscriber(d2a d2aVar, int i, boolean z, boolean z2, d5 d5Var) {
            this.downstream = d2aVar;
            this.onOverflow = d5Var;
            this.delayError = z2;
            this.queue = z ? new mv9(i) : new SpscArrayQueue(i);
        }

        @Override
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        public boolean checkTerminated(boolean z, boolean z2, d2a d2aVar) {
            if (this.cancelled) {
                this.queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.delayError) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    d2aVar.onError(th);
                } else {
                    d2aVar.onComplete();
                }
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.queue.clear();
                d2aVar.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            d2aVar.onComplete();
            return true;
        }

        @Override
        public void clear() {
            this.queue.clear();
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                nm9 nm9Var = this.queue;
                d2a d2aVar = this.downstream;
                int iAddAndGet = 1;
                while (!checkTerminated(this.done, nm9Var.isEmpty(), d2aVar)) {
                    long j = this.requested.get();
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z = this.done;
                        Object objPoll = nm9Var.poll();
                        boolean z2 = objPoll == null;
                        if (checkTerminated(z, z2, d2aVar)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        d2aVar.onNext(objPoll);
                        j2++;
                    }
                    if (j2 == j && checkTerminated(this.done, nm9Var.isEmpty(), d2aVar)) {
                        return;
                    }
                    if (j2 != 0 && j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override
        public void onComplete() {
            this.done = true;
            if (this.outputFused) {
                this.downstream.onComplete();
            } else {
                drain();
            }
        }

        @Override
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            if (this.outputFused) {
                this.downstream.onError(th);
            } else {
                drain();
            }
        }

        @Override
        public void onNext(T t) {
            if (this.queue.offer(t)) {
                if (this.outputFused) {
                    this.downstream.onNext(null);
                    return;
                } else {
                    drain();
                    return;
                }
            }
            this.upstream.cancel();
            MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
            try {
                this.onOverflow.run();
            } catch (Throwable th) {
                re3.b(th);
                missingBackpressureException.initCause(th);
            }
            onError(missingBackpressureException);
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
                this.upstream = f2aVar;
                this.downstream.onSubscribe(this);
                f2aVar.request(Long.MAX_VALUE);
            }
        }

        @Override
        public T poll() throws Exception {
            return (T) this.queue.poll();
        }

        @Override
        public void request(long j) {
            if (this.outputFused || !SubscriptionHelper.validate(j)) {
                return;
            }
            i50.a(this.requested, j);
            drain();
        }

        @Override
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }
    }

    public FlowableOnBackpressureBuffer(r14 r14Var, int i, boolean z, boolean z2, d5 d5Var) {
        super(r14Var);
        this.d = i;
        this.e = z;
        this.f = z2;
        this.g = d5Var;
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.p(new BackpressureBufferSubscriber(d2aVar, this.d, this.e, this.f, this.g));
    }
}
