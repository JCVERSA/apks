package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableIntervalRange$IntervalRangeObserver extends AtomicReference<rc2> implements rc2, Runnable {
    private static final long serialVersionUID = 1891866368734007884L;
    long count;
    final pd7 downstream;
    final long end;

    public ObservableIntervalRange$IntervalRangeObserver(pd7 pd7Var, long j, long j2) {
        this.downstream = pd7Var;
        this.count = j;
        this.end = j2;
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
        if (isDisposed()) {
            return;
        }
        long j = this.count;
        this.downstream.onNext(Long.valueOf(j));
        if (j != this.end) {
            this.count = j + 1;
        } else {
            DisposableHelper.dispose(this);
            this.downstream.onComplete();
        }
    }

    public void setResource(rc2 rc2Var) {
        DisposableHelper.setOnce(this, rc2Var);
    }
}
