package io.reactivex.rxjava3.internal.operators.flowable;

final class d extends xx.a {

    final FlowableGroupBy$State f62376c;

    protected d(Object obj, FlowableGroupBy$State flowableGroupBy$State) {
        super(obj);
        this.f62376c = flowableGroupBy$State;
    }

    public static d h(Object obj, int i10, FlowableGroupBy$GroupBySubscriber flowableGroupBy$GroupBySubscriber, boolean z10) {
        return new d(obj, new FlowableGroupBy$State(i10, flowableGroupBy$GroupBySubscriber, obj, z10));
    }

    @Override
    protected void g(i00.c cVar) {
        this.f62376c.subscribe(cVar);
    }

    public void onComplete() {
        this.f62376c.onComplete();
    }

    public void onError(Throwable th2) {
        this.f62376c.onError(th2);
    }

    public void onNext(Object obj) {
        this.f62376c.onNext(obj);
    }
}
