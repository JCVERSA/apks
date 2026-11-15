package io.reactivex.internal.observers;

import defpackage.fm8;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements fm8 {
    private static final long serialVersionUID = -1001730202384742097L;

    @Override
    public abstract void clear();

    @Override
    public abstract void dispose();

    @Override
    public abstract boolean isDisposed();

    @Override
    public abstract boolean isEmpty();

    @Override
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override
    public abstract Object poll() throws Exception;

    @Override
    public abstract int requestFusion(int i);

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
