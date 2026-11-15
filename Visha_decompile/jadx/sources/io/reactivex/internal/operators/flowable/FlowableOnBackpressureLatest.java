package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.r14;
import defpackage.x2;
import defpackage.y14;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class FlowableOnBackpressureLatest extends x2 {

    public static final class BackpressureLatestSubscriber<T> extends AtomicInteger implements y14, f2a {
        private static final long serialVersionUID = 163080509307634843L;
        volatile boolean cancelled;
        volatile boolean done;
        final d2a downstream;
        Throwable error;
        f2a upstream;
        final AtomicLong requested = new AtomicLong();
        final AtomicReference<T> current = new AtomicReference<>();

        public BackpressureLatestSubscriber(d2a d2aVar) {
            this.downstream = d2aVar;
        }

        @Override
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            if (getAndIncrement() == 0) {
                this.current.lazySet(null);
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, d2a d2aVar, AtomicReference<T> atomicReference) {
            if (this.cancelled) {
                atomicReference.lazySet(null);
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                atomicReference.lazySet(null);
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
            if (getAndIncrement() != 0) {
                return;
            }
            d2a d2aVar = this.downstream;
            AtomicLong atomicLong = this.requested;
            AtomicReference<T> atomicReference = this.current;
            int iAddAndGet = 1;
            do {
                long j = 0;
                while (true) {
                    if (j == atomicLong.get()) {
                        break;
                    }
                    boolean z = this.done;
                    T andSet = atomicReference.getAndSet(null);
                    boolean z2 = andSet == null;
                    if (checkTerminated(z, z2, d2aVar, atomicReference)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    d2aVar.onNext(andSet);
                    j++;
                }
                if (j == atomicLong.get()) {
                    if (checkTerminated(this.done, atomicReference.get() == null, d2aVar, atomicReference)) {
                        return;
                    }
                }
                if (j != 0) {
                    i50.d(atomicLong, j);
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override
        public void onNext(T t) {
            this.current.lazySet(t);
            drain();
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
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                i50.a(this.requested, j);
                drain();
            }
        }
    }

    public FlowableOnBackpressureLatest(r14 r14Var) {
        super(r14Var);
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.p(new BackpressureLatestSubscriber(d2aVar));
    }
}
