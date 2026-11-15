package io.reactivex.rxjava3.internal.operators.observable;

final class i extends ay.a {

    final ObservableGroupBy$State f62442b;

    protected i(Object obj, ObservableGroupBy$State observableGroupBy$State) {
        super(obj);
        this.f62442b = observableGroupBy$State;
    }

    public static i J(Object obj, int i10, ObservableGroupBy$GroupByObserver observableGroupBy$GroupByObserver, boolean z10) {
        return new i(obj, new ObservableGroupBy$State(i10, observableGroupBy$GroupByObserver, obj, z10));
    }

    @Override
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        this.f62442b.subscribe(oVar);
    }

    public void onComplete() {
        this.f62442b.onComplete();
    }

    public void onError(Throwable th2) {
        this.f62442b.onError(th2);
    }

    public void onNext(Object obj) {
        this.f62442b.onNext(obj);
    }
}
