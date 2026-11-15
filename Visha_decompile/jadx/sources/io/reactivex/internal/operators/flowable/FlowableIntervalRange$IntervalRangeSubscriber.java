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

final class FlowableIntervalRange$IntervalRangeSubscriber extends AtomicLong implements f2a, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    long count;
    final d2a downstream;
    final long end;
    final AtomicReference<rc2> resource = new AtomicReference<>();

    public FlowableIntervalRange$IntervalRangeSubscriber(d2a d2aVar, long j, long j2) {
        this.downstream = d2aVar;
        this.count = j;
        this.end = j2;
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
        rc2 rc2Var = this.resource.get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (rc2Var != disposableHelper) {
            long j = get();
            if (j == 0) {
                this.downstream.onError(new MissingBackpressureException("Can't deliver value " + this.count + " due to lack of requests"));
                DisposableHelper.dispose(this.resource);
                return;
            }
            long j2 = this.count;
            this.downstream.onNext(Long.valueOf(j2));
            if (j2 == this.end) {
                if (this.resource.get() != disposableHelper) {
                    this.downstream.onComplete();
                }
                DisposableHelper.dispose(this.resource);
            } else {
                this.count = j2 + 1;
                if (j != Long.MAX_VALUE) {
                    decrementAndGet();
                }
            }
        }
    }

    public void setResource(rc2 rc2Var) {
        DisposableHelper.setOnce(this.resource, rc2Var);
    }
}
