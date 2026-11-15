package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicBoolean;

final class FlowableConcatMap$SimpleScalarSubscription<T> extends AtomicBoolean implements i00.d {
    private static final long serialVersionUID = -7606889335172043256L;
    final i00.c downstream;
    final T value;

    FlowableConcatMap$SimpleScalarSubscription(T t10, i00.c cVar) {
        this.value = t10;
        this.downstream = cVar;
    }

    @Override
    public void cancel() {
    }

    @Override
    public void request(long j10) {
        if (j10 <= 0 || !compareAndSet(false, true)) {
            return;
        }
        i00.c cVar = this.downstream;
        cVar.onNext(this.value);
        cVar.onComplete();
    }
}
