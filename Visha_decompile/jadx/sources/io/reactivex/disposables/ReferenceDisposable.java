package io.reactivex.disposables;

import defpackage.ac7;
import defpackage.rc2;
import java.util.concurrent.atomic.AtomicReference;

abstract class ReferenceDisposable<T> extends AtomicReference<T> implements rc2 {
    private static final long serialVersionUID = 6537757548749041217L;

    public ReferenceDisposable(T t) {
        super(ac7.d(t, "value is null"));
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

    public abstract void onDisposed(T t);
}
