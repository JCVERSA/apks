package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableDebounceTimed$DebounceEmitter<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements Runnable, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 6812032969491025141L;
    final long idx;
    final AtomicBoolean once = new AtomicBoolean();
    final b parent;
    final T value;

    ObservableDebounceTimed$DebounceEmitter(T t10, long j10, b bVar) {
        this.value = t10;
        this.idx = j10;
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

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.replace(this, cVar);
    }
}
