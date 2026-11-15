package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableDebounceTimed$DebounceEmitter<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements Runnable, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 6812032969491025141L;
    final long idx;
    final AtomicBoolean once = new AtomicBoolean();
    final FlowableDebounceTimed$DebounceTimedSubscriber<T> parent;
    final T value;

    FlowableDebounceTimed$DebounceEmitter(T t10, long j10, FlowableDebounceTimed$DebounceTimedSubscriber<T> flowableDebounceTimed$DebounceTimedSubscriber) {
        this.value = t10;
        this.idx = j10;
        this.parent = flowableDebounceTimed$DebounceTimedSubscriber;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    void emit() {
        if (this.once.compareAndSet(false, true)) {
            this.parent.emit(this.idx, this.value, this);
        }
    }

    @Override
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void run() {
        emit();
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.replace(this, cVar);
    }
}
