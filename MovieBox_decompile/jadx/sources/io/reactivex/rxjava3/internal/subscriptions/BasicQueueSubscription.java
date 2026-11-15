package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.operators.d;
import java.util.concurrent.atomic.AtomicLong;

public abstract class BasicQueueSubscription<T> extends AtomicLong implements d {
    private static final long serialVersionUID = -6671519529404341862L;

    @Override
    public abstract void cancel();

    @Override
    public abstract void clear();

    @Override
    public abstract boolean isEmpty();

    @Override
    public final boolean offer(T t10) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public abstract Object poll() throws Throwable;

    @Override
    public abstract void request(long j10);

    @Override
    public abstract int requestFusion(int i10);

    public final boolean offer(T t10, T t11) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
