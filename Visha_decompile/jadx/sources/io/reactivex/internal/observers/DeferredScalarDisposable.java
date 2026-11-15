package io.reactivex.internal.observers;

import defpackage.pd7;
import defpackage.yw8;

public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {
    static final int DISPOSED = 4;
    static final int FUSED_CONSUMED = 32;
    static final int FUSED_EMPTY = 8;
    static final int FUSED_READY = 16;
    static final int TERMINATED = 2;
    private static final long serialVersionUID = -5502432239815349361L;
    protected final pd7 downstream;
    protected T value;

    public DeferredScalarDisposable(pd7 pd7Var) {
        this.downstream = pd7Var;
    }

    @Override
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    public final void complete(T t) {
        int i = get();
        if ((i & 54) != 0) {
            return;
        }
        pd7 pd7Var = this.downstream;
        if (i == 8) {
            this.value = t;
            lazySet(16);
            pd7Var.onNext(null);
        } else {
            lazySet(2);
            pd7Var.onNext(t);
        }
        if (get() != 4) {
            pd7Var.onComplete();
        }
    }

    @Override
    public void dispose() {
        set(4);
        this.value = null;
    }

    public final void error(Throwable th) {
        if ((get() & 54) != 0) {
            yw8.s(th);
        } else {
            lazySet(2);
            this.downstream.onError(th);
        }
    }

    @Override
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override
    public final T poll() throws Exception {
        if (get() != 16) {
            return null;
        }
        T t = this.value;
        this.value = null;
        lazySet(32);
        return t;
    }

    @Override
    public final int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final boolean tryDispose() {
        return getAndSet(4) != 4;
    }

    public final void complete() {
        if ((get() & 54) != 0) {
            return;
        }
        lazySet(2);
        this.downstream.onComplete();
    }
}
