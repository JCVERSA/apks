package io.reactivex.rxjava3.core;

import java.util.Objects;

public abstract class p implements r {
    @Override
    public final void a(q qVar) {
        Objects.requireNonNull(qVar, "observer is null");
        q qVarZ = dy.a.z(this, qVar);
        Objects.requireNonNull(qVarZ, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            b(qVarZ);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    protected abstract void b(q qVar);
}
