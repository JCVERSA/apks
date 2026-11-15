package io.reactivex.internal.subscribers;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.pn4;
import defpackage.y14;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public class StrictSubscriber<T> extends AtomicInteger implements y14, f2a {
    private static final long serialVersionUID = -4945028590049415624L;
    volatile boolean done;
    final d2a downstream;
    final AtomicThrowable error = new AtomicThrowable();
    final AtomicLong requested = new AtomicLong();
    final AtomicReference<f2a> upstream = new AtomicReference<>();
    final AtomicBoolean once = new AtomicBoolean();

    public StrictSubscriber(d2a d2aVar) {
        this.downstream = d2aVar;
    }

    @Override
    public void cancel() {
        if (this.done) {
            return;
        }
        SubscriptionHelper.cancel(this.upstream);
    }

    @Override
    public void onComplete() {
        this.done = true;
        pn4.b(this.downstream, this, this.error);
    }

    @Override
    public void onError(Throwable th) {
        this.done = true;
        pn4.d(this.downstream, th, this, this.error);
    }

    @Override
    public void onNext(T t) {
        pn4.f(this.downstream, t, this, this.error);
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (this.once.compareAndSet(false, true)) {
            this.downstream.onSubscribe(this);
            SubscriptionHelper.deferredSetOnce(this.upstream, this.requested, f2aVar);
        } else {
            f2aVar.cancel();
            cancel();
            onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
        }
    }

    @Override
    public void request(long j) {
        if (j > 0) {
            SubscriptionHelper.deferredRequest(this.upstream, this.requested, j);
            return;
        }
        cancel();
        onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was " + j));
    }
}
