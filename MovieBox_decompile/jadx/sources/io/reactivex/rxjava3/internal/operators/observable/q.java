package io.reactivex.rxjava3.internal.operators.observable;

final class q extends cy.a {

    final ObservableWindowBoundary$WindowBoundaryMainObserver f62467b;

    boolean f62468c;

    q(ObservableWindowBoundary$WindowBoundaryMainObserver observableWindowBoundary$WindowBoundaryMainObserver) {
        this.f62467b = observableWindowBoundary$WindowBoundaryMainObserver;
    }

    @Override
    public void onComplete() {
        if (this.f62468c) {
            return;
        }
        this.f62468c = true;
        this.f62467b.innerComplete();
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f62468c) {
            dy.a.r(th2);
        } else {
            this.f62468c = true;
            this.f62467b.innerError(th2);
        }
    }

    @Override
    public void onNext(Object obj) {
        if (this.f62468c) {
            return;
        }
        this.f62467b.innerNext();
    }
}
