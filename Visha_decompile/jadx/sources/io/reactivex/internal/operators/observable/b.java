package io.reactivex.internal.operators.observable;

import defpackage.m19;
import defpackage.mc7;
import defpackage.pd7;

public final class b extends mc7 implements m19 {
    public final Object b;

    public b(Object obj) {
        this.b = obj;
    }

    @Override
    public void c0(pd7 pd7Var) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(pd7Var, this.b);
        pd7Var.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }

    @Override
    public Object call() {
        return this.b;
    }
}
