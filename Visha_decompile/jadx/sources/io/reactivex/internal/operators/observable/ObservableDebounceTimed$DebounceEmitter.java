package io.reactivex.internal.operators.observable;

import defpackage.nc7;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableDebounceTimed$DebounceEmitter<T> extends AtomicReference<rc2> implements Runnable, rc2 {
    private static final long serialVersionUID = 6812032969491025141L;
    final long idx;
    final AtomicBoolean once = new AtomicBoolean();
    final nc7 parent;
    final T value;

    public ObservableDebounceTimed$DebounceEmitter(T t, long j, nc7 nc7Var) {
        this.value = t;
        this.idx = j;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void run() {
        if (this.once.compareAndSet(false, true)) {
            throw null;
        }
    }

    public void setResource(rc2 rc2Var) {
        DisposableHelper.replace(this, rc2Var);
    }
}
