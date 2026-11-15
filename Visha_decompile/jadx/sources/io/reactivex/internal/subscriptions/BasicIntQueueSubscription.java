package io.reactivex.internal.subscriptions;

import defpackage.tm8;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class BasicIntQueueSubscription<T> extends AtomicInteger implements tm8 {
    private static final long serialVersionUID = -6671519529404341862L;

    public abstract void cancel();

    public abstract void clear();

    public abstract boolean isEmpty();

    @Override
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public abstract Object poll() throws Exception;

    public abstract void request(long j);

    public abstract int requestFusion(int i);

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
