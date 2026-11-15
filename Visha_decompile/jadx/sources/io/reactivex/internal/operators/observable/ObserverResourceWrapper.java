package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ObserverResourceWrapper<T> extends AtomicReference<rc2> implements pd7, rc2 {
    private static final long serialVersionUID = -8612022020200669122L;
    final pd7 downstream;
    final AtomicReference<rc2> upstream = new AtomicReference<>();

    public ObserverResourceWrapper(pd7 pd7Var) {
        this.downstream = pd7Var;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this.upstream);
        DisposableHelper.dispose(this);
    }

    @Override
    public boolean isDisposed() {
        return this.upstream.get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void onComplete() {
        dispose();
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        dispose();
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        this.downstream.onNext(t);
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.setOnce(this.upstream, rc2Var)) {
            this.downstream.onSubscribe(this);
        }
    }

    public void setResource(rc2 rc2Var) {
        DisposableHelper.set(this, rc2Var);
    }
}
