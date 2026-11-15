package io.reactivex.rxjava3.internal.subscribers;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements io.reactivex.rxjava3.core.f, i00.d {
    static final long COMPLETE_MASK = Long.MIN_VALUE;
    static final long REQUEST_MASK = Long.MAX_VALUE;
    private static final long serialVersionUID = 7917814472626990048L;
    protected final i00.c downstream;
    protected long produced;
    protected i00.d upstream;
    protected R value;

    public SinglePostCompleteSubscriber(i00.c cVar) {
        this.downstream = cVar;
    }

    @Override
    public void cancel() {
        this.upstream.cancel();
    }

    protected final void complete(R r10) {
        long j10 = this.produced;
        if (j10 != 0) {
            io.reactivex.rxjava3.internal.util.a.d(this, j10);
        }
        while (true) {
            long j11 = get();
            if ((j11 & Long.MIN_VALUE) != 0) {
                onDrop(r10);
                return;
            }
            if ((j11 & Long.MAX_VALUE) != 0) {
                lazySet(C.TIME_UNSET);
                this.downstream.onNext(r10);
                this.downstream.onComplete();
                return;
            } else {
                this.value = r10;
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

    protected void onDrop(R r10) {
    }

    @Override
    public abstract void onError(Throwable th2);

    @Override
    public abstract void onNext(Object obj);

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public final void request(long j10) {
        long j11;
        if (SubscriptionHelper.validate(j10)) {
            do {
                j11 = get();
                if ((j11 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, C.TIME_UNSET)) {
                        this.downstream.onNext(this.value);
                        this.downstream.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j11, io.reactivex.rxjava3.internal.util.a.b(j11, j10)));
            this.upstream.request(j10);
        }
    }
}
