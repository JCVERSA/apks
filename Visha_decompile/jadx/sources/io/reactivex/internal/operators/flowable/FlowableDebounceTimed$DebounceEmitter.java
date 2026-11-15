package io.reactivex.internal.operators.flowable;

import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableDebounceTimed$DebounceEmitter<T> extends AtomicReference<rc2> implements Runnable, rc2 {
    private static final long serialVersionUID = 6812032969491025141L;
    final long idx;
    final AtomicBoolean once = new AtomicBoolean();
    final FlowableDebounceTimed$DebounceTimedSubscriber<T> parent;
    final T value;

    public FlowableDebounceTimed$DebounceEmitter(T t, long j, FlowableDebounceTimed$DebounceTimedSubscriber<T> flowableDebounceTimed$DebounceTimedSubscriber) {
        this.value = t;
        this.idx = j;
        this.parent = flowableDebounceTimed$DebounceTimedSubscriber;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public void emit() {
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

    public void setResource(rc2 rc2Var) {
        DisposableHelper.replace(this, rc2Var);
    }
}
