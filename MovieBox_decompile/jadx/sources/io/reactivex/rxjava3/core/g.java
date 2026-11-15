package io.reactivex.rxjava3.core;

import java.util.Objects;

public abstract class g implements i {
    @Override
    public final void a(h hVar) {
        Objects.requireNonNull(hVar, "observer is null");
        h hVarX = dy.a.x(this, hVar);
        Objects.requireNonNull(hVarX, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            b(hVarX);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    protected abstract void b(h hVar);
}
