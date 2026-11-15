package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.wj4;

public final class a extends wj4 {
    public final ObservableGroupBy$State c;

    public a(Object obj, ObservableGroupBy$State observableGroupBy$State) {
        super(obj);
        this.c = observableGroupBy$State;
    }

    public static a n0(Object obj, int i, ObservableGroupBy$GroupByObserver observableGroupBy$GroupByObserver, boolean z) {
        return new a(obj, new ObservableGroupBy$State(i, observableGroupBy$GroupByObserver, obj, z));
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.c.subscribe(pd7Var);
    }

    public void onComplete() {
        this.c.onComplete();
    }

    public void onError(Throwable th) {
        this.c.onError(th);
    }

    public void onNext(Object obj) {
        this.c.onNext(obj);
    }
}
