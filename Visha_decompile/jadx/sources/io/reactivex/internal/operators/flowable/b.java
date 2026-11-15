package io.reactivex.internal.operators.flowable;

import defpackage.wc2;
import defpackage.yw8;

public final class b extends wc2 {
    public final FlowableWindowBoundary$WindowBoundaryMainSubscriber c;
    public boolean d;

    public b(FlowableWindowBoundary$WindowBoundaryMainSubscriber flowableWindowBoundary$WindowBoundaryMainSubscriber) {
        this.c = flowableWindowBoundary$WindowBoundaryMainSubscriber;
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
