package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.vj4;

public final class a extends vj4 {
    public final FlowableGroupBy$State d;

    public a(Object obj, FlowableGroupBy$State flowableGroupBy$State) {
        super(obj);
        this.d = flowableGroupBy$State;
    }

    public static a u(Object obj, int i, FlowableGroupBy$GroupBySubscriber flowableGroupBy$GroupBySubscriber, boolean z) {
        return new a(obj, new FlowableGroupBy$State(i, flowableGroupBy$GroupBySubscriber, obj, z));
    }

    public void onComplete() {
        this.d.onComplete();
    }

    public void onError(Throwable th) {
        this.d.onError(th);
    }

    public void onNext(Object obj) {
        this.d.onNext(obj);
    }

    @Override
    public void q(d2a d2aVar) {
        this.d.subscribe(d2aVar);
    }
}
