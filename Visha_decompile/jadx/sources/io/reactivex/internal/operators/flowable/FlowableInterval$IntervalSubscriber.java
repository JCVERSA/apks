package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.rc2;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableInterval$IntervalSubscriber extends AtomicLong implements f2a, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    long count;
    final d2a downstream;
    final AtomicReference<rc2> resource = new AtomicReference<>();

    public FlowableInterval$IntervalSubscriber(d2a d2aVar) {
        this.downstream = d2aVar;
    }

    @Override
    public void cancel() {
        DisposableHelper.dispose(this.resource);
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            i50.a(this, j);
        }
    }

    @Override
    public void run() {
        if (this.resource.get() != DisposableHelper.DISPOSED) {
            if (get() != 0) {
                d2a d2aVar = this.downstream;
                long j = this.count;
                this.count = j + 1;
                d2aVar.onNext(Long.valueOf(j));
                i50.d(this, 1L);
                return;
            }
            this.downstream.onError(new MissingBackpressureException("Can't deliver value " + this.count + " due to lack of requests"));
            DisposableHelper.dispose(this.resource);
        }
    }

    public void setResource(rc2 rc2Var) {
        DisposableHelper.setOnce(this.resource, rc2Var);
    }
}
