package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;

public final class f extends io.reactivex.rxjava3.core.j {

    final yx.k f62439a;

    public f(yx.k kVar) {
        this.f62439a = kVar;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        try {
            th = (Throwable) ExceptionHelper.c(this.f62439a.get(), "Supplier returned a null Throwable.");
        } catch (Throwable th2) {
            th = th2;
            io.reactivex.rxjava3.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, oVar);
    }
}
