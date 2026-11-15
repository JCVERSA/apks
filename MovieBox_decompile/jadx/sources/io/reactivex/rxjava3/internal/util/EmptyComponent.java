package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.core.q;

public enum EmptyComponent implements io.reactivex.rxjava3.core.f, o, io.reactivex.rxjava3.core.h, q, io.reactivex.rxjava3.core.b, i00.d, io.reactivex.rxjava3.disposables.c {
    INSTANCE;

    public static <T> o asObserver() {
        return INSTANCE;
    }

    public static <T> i00.c asSubscriber() {
        return INSTANCE;
    }

    @Override
    public void cancel() {
    }

    @Override
    public void dispose() {
    }

    @Override
    public boolean isDisposed() {
        return true;
    }

    @Override
    public void onComplete() {
    }

    @Override
    public void onError(Throwable th2) {
        dy.a.r(th2);
    }

    @Override
    public void onNext(Object obj) {
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        cVar.dispose();
    }

    @Override
    public void onSuccess(Object obj) {
    }

    @Override
    public void request(long j10) {
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        dVar.cancel();
    }
}
