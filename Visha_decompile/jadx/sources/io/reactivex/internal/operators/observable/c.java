package io.reactivex.internal.operators.observable;

import defpackage.vc2;
import defpackage.yw8;

public final class c extends vc2 {
    public final ObservableWindowBoundary$WindowBoundaryMainObserver c;
    public boolean d;

    public c(ObservableWindowBoundary$WindowBoundaryMainObserver observableWindowBoundary$WindowBoundaryMainObserver) {
        this.c = observableWindowBoundary$WindowBoundaryMainObserver;
    }

    @Override
    public void onComplete() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.c.innerComplete();
    }

    @Override
    public void onError(Throwable th) {
        if (this.d) {
            yw8.s(th);
        } else {
            this.d = true;
            this.c.innerError(th);
        }
    }

    @Override
    public void onNext(Object obj) {
        if (this.d) {
            return;
        }
        this.c.innerNext();
    }
}
