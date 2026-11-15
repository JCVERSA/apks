package io.reactivex.rxjava3.disposables;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

abstract class ReferenceDisposable<T> extends AtomicReference<T> implements c {
    private static final long serialVersionUID = 6537757548749041217L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReferenceDisposable(T t10) {
        super(t10);
        Objects.requireNonNull(t10, "value is null");
    }

    @Override
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        onDisposed(andSet);
    }

    @Override
    public final boolean isDisposed() {
        return get() == null;
    }

    protected abstract void onDisposed(T t10);
}
