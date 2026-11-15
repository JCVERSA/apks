package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

public abstract class DeferredScalarObserver<T, R> extends DeferredScalarDisposable<R> implements o {
    private static final long serialVersionUID = -266195175408988651L;
    protected io.reactivex.rxjava3.disposables.c upstream;

    public DeferredScalarObserver(o oVar) {
        super(oVar);
    }

    @Override
    public void dispose() {
        super.dispose();
        this.upstream.dispose();
    }

    @Override
    public void onComplete() {
        T t10 = this.value;
        if (t10 == null) {
            complete();
        } else {
            this.value = null;
            complete(t10);
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.value = null;
        error(th2);
    }

    @Override
    public abstract void onNext(Object obj);

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }
}
