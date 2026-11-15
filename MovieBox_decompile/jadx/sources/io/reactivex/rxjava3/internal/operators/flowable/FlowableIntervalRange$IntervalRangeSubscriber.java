package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableIntervalRange$IntervalRangeSubscriber extends AtomicLong implements i00.d, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    long count;
    final i00.c downstream;
    final long end;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> resource = new AtomicReference<>();

    FlowableIntervalRange$IntervalRangeSubscriber(i00.c cVar, long j10, long j11) {
        this.downstream = cVar;
        this.count = j10;
        this.end = j11;
    }

    @Override
    public void cancel() {
        DisposableHelper.dispose(this.resource);
    }

    @Override
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.rxjava3.internal.util.a.a(this, j10);
        }
    }

    @Override
    public void run() {
        io.reactivex.rxjava3.disposables.c cVar = this.resource.get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            long j10 = get();
            if (j10 == 0) {
                this.downstream.onError(new MissingBackpressureException("Could not emit value " + this.count + " due to lack of requests"));
                DisposableHelper.dispose(this.resource);
                return;
            }
            long j11 = this.count;
            this.downstream.onNext(Long.valueOf(j11));
            if (j11 == this.end) {
                if (this.resource.get() != disposableHelper) {
                    this.downstream.onComplete();
                }
                DisposableHelper.dispose(this.resource);
            } else {
                this.count = j11 + 1;
                if (j10 != Long.MAX_VALUE) {
                    decrementAndGet();
                }
            }
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this.resource, cVar);
    }
}
