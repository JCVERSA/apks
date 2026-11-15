package io.reactivex.internal.util;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.in9;
import defpackage.k96;
import defpackage.pd7;
import defpackage.qb1;
import defpackage.rc2;
import defpackage.y14;
import defpackage.yw8;

public enum EmptyComponent implements y14, pd7, k96, in9, qb1, f2a, rc2 {
    INSTANCE;

    public static <T> pd7 asObserver() {
        return INSTANCE;
    }

    public static <T> d2a asSubscriber() {
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
    public void onError(Throwable th) {
        yw8.s(th);
    }

    @Override
    public void onNext(Object obj) {
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        rc2Var.dispose();
    }

    @Override
    public void onSuccess(Object obj) {
    }

    @Override
    public void request(long j) {
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        f2aVar.cancel();
    }
}
