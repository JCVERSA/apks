package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.operators.b;

public enum EmptyDisposable implements b {
    INSTANCE,
    NEVER;

    public static void complete(o oVar) {
        oVar.onSubscribe(INSTANCE);
        oVar.onComplete();
    }

    public static void error(Throwable th2, o oVar) {
        oVar.onSubscribe(INSTANCE);
        oVar.onError(th2);
    }

    @Override
    public void clear() {
    }

    @Override
    public void dispose() {
    }

    @Override
    public boolean isDisposed() {
        return this == INSTANCE;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public Object poll() {
        return null;
    }

    @Override
    public int requestFusion(int i10) {
        return i10 & 2;
    }

    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public static void complete(h hVar) {
        hVar.onSubscribe(INSTANCE);
        hVar.onComplete();
    }

    public static void error(Throwable th2, io.reactivex.rxjava3.core.b bVar) {
        bVar.onSubscribe(INSTANCE);
        bVar.onError(th2);
    }

    public static void complete(io.reactivex.rxjava3.core.b bVar) {
        bVar.onSubscribe(INSTANCE);
        bVar.onComplete();
    }

    public static void error(Throwable th2, q qVar) {
        qVar.onSubscribe(INSTANCE);
        qVar.onError(th2);
    }

    public static void error(Throwable th2, h hVar) {
        hVar.onSubscribe(INSTANCE);
        hVar.onError(th2);
    }
}
