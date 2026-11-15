package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

abstract class AbstractBackpressureThrottlingSubscriber<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.f, i00.d {
    private static final long serialVersionUID = -5050301752721603566L;
    volatile boolean cancelled;
    volatile boolean done;
    final i00.c downstream;
    Throwable error;
    i00.d upstream;
    final AtomicLong requested = new AtomicLong();
    final AtomicReference<R> current = new AtomicReference<>();

    AbstractBackpressureThrottlingSubscriber(i00.c cVar) {
        this.downstream = cVar;
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

    boolean checkTerminated(boolean z10, boolean z11, i00.c cVar, AtomicReference<R> atomicReference) {
        if (this.cancelled) {
            atomicReference.lazySet(null);
            return true;
        }
        if (!z10) {
            return false;
        }
        Throwable th2 = this.error;
        if (th2 != null) {
            atomicReference.lazySet(null);
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
        if (getAndIncrement() != 0) {
            return;
        }
        i00.c cVar = this.downstream;
        AtomicLong atomicLong = this.requested;
        AtomicReference<R> atomicReference = this.current;
        int iAddAndGet = 1;
        do {
            long j10 = 0;
            while (true) {
                if (j10 == atomicLong.get()) {
                    break;
                }
                boolean z10 = this.done;
                R andSet = atomicReference.getAndSet(null);
                boolean z11 = andSet == null;
                if (checkTerminated(z10, z11, cVar, atomicReference)) {
                    return;
                }
                if (z11) {
                    break;
                }
                cVar.onNext(andSet);
                j10++;
            }
            if (j10 == atomicLong.get()) {
                if (checkTerminated(this.done, atomicReference.get() == null, cVar, atomicReference)) {
                    return;
                }
            }
            if (j10 != 0) {
                io.reactivex.rxjava3.internal.util.a.d(atomicLong, j10);
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
    public void onError(Throwable th2) {
        this.error = th2;
        this.done = true;
        drain();
    }

    @Override
    public abstract void onNext(T t10);

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
            drain();
        }
    }
}
