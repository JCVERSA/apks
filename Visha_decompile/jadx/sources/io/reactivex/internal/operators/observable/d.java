package io.reactivex.internal.operators.observable;

import defpackage.vc2;
import defpackage.yw8;

public final class d extends vc2 {
    public final ObservableWindowBoundarySupplier$WindowBoundaryMainObserver c;
    public boolean d;

    public d(ObservableWindowBoundarySupplier$WindowBoundaryMainObserver observableWindowBoundarySupplier$WindowBoundaryMainObserver) {
        this.c = observableWindowBoundarySupplier$WindowBoundaryMainObserver;
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
        this.d = true;
        dispose();
        this.c.innerNext(this);
    }
}
