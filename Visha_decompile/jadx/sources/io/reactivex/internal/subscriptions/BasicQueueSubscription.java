package io.reactivex.internal.subscriptions;

import defpackage.tm8;
import java.util.concurrent.atomic.AtomicLong;

public abstract class BasicQueueSubscription<T> extends AtomicLong implements tm8 {
    private static final long serialVersionUID = -6671519529404341862L;

    @Override
    public abstract void cancel();

    @Override
    public abstract void clear();

    @Override
    public abstract boolean isEmpty();

    @Override
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public abstract Object poll() throws Exception;

    @Override
    public abstract void request(long j);

    @Override
    public abstract int requestFusion(int i);

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
