package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.operators.d;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class BasicIntQueueSubscription<T> extends AtomicInteger implements d {
    private static final long serialVersionUID = -6671519529404341862L;

    public abstract void cancel();

    public abstract void clear();

    public abstract boolean isEmpty();

    @Override
    public final boolean offer(T t10) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public abstract Object poll() throws Throwable;

    public abstract void request(long j10);

    public abstract int requestFusion(int i10);

    public final boolean offer(T t10, T t11) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
