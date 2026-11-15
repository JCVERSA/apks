package io.reactivex.rxjava3.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;

public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements io.reactivex.rxjava3.operators.b {
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
    public final boolean offer(T t10) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override
    public abstract Object poll() throws Throwable;

    @Override
    public abstract int requestFusion(int i10);

    public final boolean offer(T t10, T t11) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
