package io.reactivex.internal.observers;

import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;

public abstract class DeferredScalarObserver<T, R> extends DeferredScalarDisposable<R> implements pd7 {
    private static final long serialVersionUID = -266195175408988651L;
    protected rc2 upstream;

    public DeferredScalarObserver(pd7 pd7Var) {
        super(pd7Var);
    }

    @Override
    public void dispose() {
        super.dispose();
        this.upstream.dispose();
    }

    @Override
    public void onComplete() {
        T t = this.value;
        if (t == null) {
            complete();
        } else {
            this.value = null;
            complete(t);
        }
    }

    @Override
    public void onError(Throwable th) {
        this.value = null;
        error(th);
    }

    @Override
    public abstract void onNext(Object obj);

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            this.downstream.onSubscribe(this);
        }
    }
}
