package io.reactivex.rxjava3.core;

import java.util.Objects;

public abstract class a implements c {
    private static NullPointerException c(Throwable th2) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th2);
        return nullPointerException;
    }

    @Override
    public final void a(b bVar) {
        Objects.requireNonNull(bVar, "observer is null");
        try {
            b bVarW = dy.a.w(this, bVar);
            Objects.requireNonNull(bVarW, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            b(bVarW);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dy.a.r(th2);
            throw c(th2);
        }
    }

    protected abstract void b(b bVar);
}
