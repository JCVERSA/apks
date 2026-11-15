package io.reactivex.internal.disposables;

import defpackage.fm8;
import defpackage.in9;
import defpackage.k96;
import defpackage.pd7;
import defpackage.qb1;

public enum EmptyDisposable implements fm8 {
    INSTANCE,
    NEVER;

    public static void complete(pd7 pd7Var) {
        pd7Var.onSubscribe(INSTANCE);
        pd7Var.onComplete();
    }

    public static void error(Throwable th, pd7 pd7Var) {
        pd7Var.onSubscribe(INSTANCE);
        pd7Var.onError(th);
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
    public Object poll() throws Exception {
        return null;
    }

    @Override
    public int requestFusion(int i) {
        return i & 2;
    }

    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public static void complete(k96 k96Var) {
        k96Var.onSubscribe(INSTANCE);
        k96Var.onComplete();
    }

    public static void error(Throwable th, qb1 qb1Var) {
        qb1Var.onSubscribe(INSTANCE);
        qb1Var.onError(th);
    }

    public static void complete(qb1 qb1Var) {
        qb1Var.onSubscribe(INSTANCE);
        qb1Var.onComplete();
    }

    public static void error(Throwable th, in9 in9Var) {
        in9Var.onSubscribe(INSTANCE);
        in9Var.onError(th);
    }

    public static void error(Throwable th, k96 k96Var) {
        k96Var.onSubscribe(INSTANCE);
        k96Var.onError(th);
    }
}
