package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.h;
import java.util.concurrent.atomic.AtomicLong;

public final class FlowableOnBackpressureBuffer extends a {

    final int f62359c;

    final boolean f62360d;

    final boolean f62361e;

    final yx.a f62362f;

    final yx.f f62363g;

    static final class BackpressureBufferSubscriber<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.f {
        private static final long serialVersionUID = -2514538129242366402L;
        volatile boolean cancelled;
        final boolean delayError;
        volatile boolean done;
        final i00.c downstream;
        Throwable error;
        final yx.f onDropped;
        final yx.a onOverflow;
        boolean outputFused;
        final io.reactivex.rxjava3.operators.f queue;
        final AtomicLong requested = new AtomicLong();
        i00.d upstream;

        BackpressureBufferSubscriber(i00.c cVar, int i10, boolean z10, boolean z11, yx.a aVar, yx.f fVar) {
            this.downstream = cVar;
            this.onOverflow = aVar;
            this.delayError = z11;
            this.onDropped = fVar;
            this.queue = z10 ? new h(i10) : new SpscArrayQueue(i10);
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

        boolean checkTerminated(boolean z10, boolean z11, i00.c cVar) {
            if (this.cancelled) {
                this.queue.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (this.delayError) {
                if (!z11) {
                    return false;
                }
                Throwable th2 = this.error;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.onComplete();
                }
                return true;
            }
            Throwable th3 = this.error;
            if (th3 != null) {
                this.queue.clear();
                cVar.onError(th3);
                return true;
            }
            if (!z11) {
                return false;
            }
            cVar.onComplete();
            return true;
        }

        @Override
        public void clear() {
            this.queue.clear();
        }

        void drain() {
            if (getAndIncrement() == 0) {
                io.reactivex.rxjava3.operators.f fVar = this.queue;
                i00.c cVar = this.downstream;
                int iAddAndGet = 1;
                while (!checkTerminated(this.done, fVar.isEmpty(), cVar)) {
                    long j10 = this.requested.get();
                    long j11 = 0;
                    while (j11 != j10) {
                        boolean z10 = this.done;
                        Object objPoll = fVar.poll();
                        boolean z11 = objPoll == null;
                        if (checkTerminated(z10, z11, cVar)) {
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        cVar.onNext(objPoll);
                        j11++;
                    }
                    if (j11 == j10 && checkTerminated(this.done, fVar.isEmpty(), cVar)) {
                        return;
                    }
                    if (j11 != 0 && j10 != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j11);
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
        public void onError(Throwable th2) {
            this.error = th2;
            this.done = true;
            if (this.outputFused) {
                this.downstream.onError(th2);
            } else {
                drain();
            }
        }

        @Override
        public void onNext(T t10) {
            if (this.queue.offer(t10)) {
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
                this.onDropped.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                missingBackpressureException.initCause(th2);
            }
            onError(missingBackpressureException);
        }

        @Override
        public void onSubscribe(i00.d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override
        public T poll() {
            return (T) this.queue.poll();
        }

        @Override
        public void request(long j10) {
            if (this.outputFused || !SubscriptionHelper.validate(j10)) {
                return;
            }
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
            drain();
        }

        @Override
        public int requestFusion(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }
    }

    public FlowableOnBackpressureBuffer(io.reactivex.rxjava3.core.e eVar, int i10, boolean z10, boolean z11, yx.a aVar, yx.f fVar) {
        super(eVar);
        this.f62359c = i10;
        this.f62360d = z10;
        this.f62361e = z11;
        this.f62362f = aVar;
        this.f62363g = fVar;
    }

    @Override
    protected void g(i00.c cVar) {
        this.f62372b.f(new BackpressureBufferSubscriber(cVar, this.f62359c, this.f62360d, this.f62361e, this.f62362f, this.f62363g));
    }
}
