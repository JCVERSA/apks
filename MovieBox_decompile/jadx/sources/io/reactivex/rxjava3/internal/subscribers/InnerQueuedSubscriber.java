package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.concurrent.atomic.AtomicReference;

public final class InnerQueuedSubscriber<T> extends AtomicReference<i00.d> implements io.reactivex.rxjava3.core.f, i00.d {
    private static final long serialVersionUID = 22876611072430776L;
    volatile boolean done;
    int fusionMode;
    final int limit;
    final a parent;
    final int prefetch;
    long produced;
    volatile io.reactivex.rxjava3.operators.g queue;

    public InnerQueuedSubscriber(a aVar, int i10) {
        this.prefetch = i10;
        this.limit = i10 - (i10 >> 2);
    }

    @Override
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public boolean isDone() {
        return this.done;
    }

    @Override
    public void onComplete() {
        throw null;
    }

    @Override
    public void onError(Throwable th2) {
        throw null;
    }

    @Override
    public void onNext(T t10) {
        if (this.fusionMode != 0) {
            throw null;
        }
        throw null;
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof io.reactivex.rxjava3.operators.d) {
                io.reactivex.rxjava3.operators.d dVar2 = (io.reactivex.rxjava3.operators.d) dVar;
                int iRequestFusion = dVar2.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = dVar2;
                    this.done = true;
                    throw null;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = dVar2;
                    i.f(dVar, this.prefetch);
                    return;
                }
            }
            this.queue = i.c(this.prefetch);
            i.f(dVar, this.prefetch);
        }
    }

    public io.reactivex.rxjava3.operators.g queue() {
        return this.queue;
    }

    @Override
    public void request(long j10) {
        if (this.fusionMode != 1) {
            long j11 = this.produced + j10;
            if (j11 < this.limit) {
                this.produced = j11;
            } else {
                this.produced = 0L;
                get().request(j11);
            }
        }
    }

    public void setDone() {
        this.done = true;
    }
}
