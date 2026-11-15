package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;

public final class g extends io.reactivex.rxjava3.core.j implements yx.k {

    final Callable f62440a;

    public g(Callable callable) {
        this.f62440a = callable;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(oVar);
        oVar.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            deferredScalarDisposable.complete(ExceptionHelper.c(this.f62440a.call(), "Callable returned a null value."));
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            if (deferredScalarDisposable.isDisposed()) {
                dy.a.r(th2);
            } else {
                oVar.onError(th2);
            }
        }
    }

    @Override
    public Object get() {
        return ExceptionHelper.c(this.f62440a.call(), "The Callable returned a null value.");
    }
}
