package io.reactivex.rxjava3.internal.operators.flowable;

final class f extends fy.a {

    final FlowableWindowBoundary$WindowBoundaryMainSubscriber f62377b;

    boolean f62378c;

    f(FlowableWindowBoundary$WindowBoundaryMainSubscriber flowableWindowBoundary$WindowBoundaryMainSubscriber) {
        this.f62377b = flowableWindowBoundary$WindowBoundaryMainSubscriber;
    }

    @Override
    public void onComplete() {
        if (this.f62378c) {
            return;
        }
        this.f62378c = true;
        this.f62377b.innerComplete();
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f62378c) {
            dy.a.r(th2);
        } else {
            this.f62378c = true;
            this.f62377b.innerError(th2);
        }
    }

    @Override
    public void onNext(Object obj) {
        if (this.f62378c) {
            return;
        }
        this.f62377b.innerNext();
    }
}
