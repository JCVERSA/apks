package io.reactivex.rxjava3.internal.operators.observable;

public final class k extends io.reactivex.rxjava3.core.j implements io.reactivex.rxjava3.operators.e {

    private final Object f62446a;

    public k(Object obj) {
        this.f62446a = obj;
    }

    @Override
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(oVar, this.f62446a);
        oVar.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }

    @Override
    public Object get() {
        return this.f62446a;
    }
}
