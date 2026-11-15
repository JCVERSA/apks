package io.reactivex.internal.subscribers;

import defpackage.f2a;
import defpackage.hm8;
import defpackage.m05;
import defpackage.om9;
import defpackage.tm8;
import defpackage.y14;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class InnerQueuedSubscriber<T> extends AtomicReference<f2a> implements y14, f2a {
    private static final long serialVersionUID = 22876611072430776L;
    volatile boolean done;
    int fusionMode;
    final int limit;
    final m05 parent;
    final int prefetch;
    long produced;
    volatile om9 queue;

    public InnerQueuedSubscriber(m05 m05Var, int i) {
        this.prefetch = i;
        this.limit = i - (i >> 2);
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
    public void onError(Throwable th) {
        throw null;
    }

    @Override
    public void onNext(T t) {
        if (this.fusionMode != 0) {
            throw null;
        }
        throw null;
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.setOnce(this, f2aVar)) {
            if (f2aVar instanceof tm8) {
                tm8 tm8Var = (tm8) f2aVar;
                int iRequestFusion = tm8Var.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = tm8Var;
                    this.done = true;
                    throw null;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = tm8Var;
                    hm8.f(f2aVar, this.prefetch);
                    return;
                }
            }
            this.queue = hm8.c(this.prefetch);
            hm8.f(f2aVar, this.prefetch);
        }
    }

    public om9 queue() {
        return this.queue;
    }

    @Override
    public void request(long j) {
        if (this.fusionMode != 1) {
            long j2 = this.produced + j;
            if (j2 < this.limit) {
                this.produced = j2;
            } else {
                this.produced = 0L;
                get().request(j2);
            }
        }
    }

    public void requestOne() {
        if (this.fusionMode != 1) {
            long j = this.produced + 1;
            if (j != this.limit) {
                this.produced = j;
            } else {
                this.produced = 0L;
                get().request(j);
            }
        }
    }

    public void setDone() {
        this.done = true;
    }
}
