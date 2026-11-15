package io.reactivex.internal.subscriptions;

import defpackage.d2a;
import defpackage.tm8;
import java.util.concurrent.atomic.AtomicInteger;

public final class ScalarSubscription<T> extends AtomicInteger implements tm8 {
    static final int CANCELLED = 2;
    static final int NO_REQUEST = 0;
    static final int REQUESTED = 1;
    private static final long serialVersionUID = -3830916580126663321L;
    final d2a subscriber;
    final T value;

    public ScalarSubscription(d2a d2aVar, T t) {
        this.subscriber = d2aVar;
        this.value = t;
    }

    @Override
    public void cancel() {
        lazySet(2);
    }

    @Override
    public void clear() {
        lazySet(1);
    }

    public boolean isCancelled() {
        return get() == 2;
    }

    @Override
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override
    public boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public T poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.value;
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j) && compareAndSet(0, 1)) {
            d2a d2aVar = this.subscriber;
            d2aVar.onNext(this.value);
            if (get() != 2) {
                d2aVar.onComplete();
            }
        }
    }

    @Override
    public int requestFusion(int i) {
        return i & 1;
    }

    public boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
