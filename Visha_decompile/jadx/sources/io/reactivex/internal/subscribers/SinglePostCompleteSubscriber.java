package io.reactivex.internal.subscribers;

import androidx.media3.common.C;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.y14;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements y14, f2a {
    static final long COMPLETE_MASK = Long.MIN_VALUE;
    static final long REQUEST_MASK = Long.MAX_VALUE;
    private static final long serialVersionUID = 7917814472626990048L;
    protected final d2a downstream;
    protected long produced;
    protected f2a upstream;
    protected R value;

    public SinglePostCompleteSubscriber(d2a d2aVar) {
        this.downstream = d2aVar;
    }

    @Override
    public void cancel() {
        this.upstream.cancel();
    }

    public final void complete(R r) {
        long j = this.produced;
        if (j != 0) {
            i50.d(this, j);
        }
        while (true) {
            long j2 = get();
            if ((j2 & Long.MIN_VALUE) != 0) {
                onDrop(r);
                return;
            }
            if ((j2 & Long.MAX_VALUE) != 0) {
                lazySet(C.TIME_UNSET);
                this.downstream.onNext(r);
                this.downstream.onComplete();
                return;
            } else {
                this.value = r;
                if (compareAndSet(0L, Long.MIN_VALUE)) {
                    return;
                } else {
                    this.value = null;
                }
            }
        }
    }

    @Override
    public abstract void onComplete();

    public void onDrop(R r) {
    }

    @Override
    public abstract void onError(Throwable th);

    @Override
    public abstract void onNext(Object obj);

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public final void request(long j) {
        long j2;
        if (SubscriptionHelper.validate(j)) {
            do {
                j2 = get();
                if ((j2 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, C.TIME_UNSET)) {
                        this.downstream.onNext(this.value);
                        this.downstream.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j2, i50.b(j2, j)));
            this.upstream.request(j);
        }
    }
}
