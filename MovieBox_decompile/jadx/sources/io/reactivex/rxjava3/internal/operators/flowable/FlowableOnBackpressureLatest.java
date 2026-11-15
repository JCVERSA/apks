package io.reactivex.rxjava3.internal.operators.flowable;

public final class FlowableOnBackpressureLatest extends a {

    final yx.f f62365c;

    static final class BackpressureLatestSubscriber<T> extends AbstractBackpressureThrottlingSubscriber<T, T> {
        private static final long serialVersionUID = 163080509307634843L;
        final yx.f onDropped;

        BackpressureLatestSubscriber(i00.c cVar, yx.f fVar) {
            super(cVar);
            this.onDropped = fVar;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override
        public void onNext(T t10) {
            Object andSet = this.current.getAndSet((R) t10);
            yx.f fVar = this.onDropped;
            if (fVar != null && andSet != null) {
                try {
                    fVar.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.upstream.cancel();
                    this.downstream.onError(th2);
                }
            }
            drain();
        }
    }

    public FlowableOnBackpressureLatest(io.reactivex.rxjava3.core.e eVar, yx.f fVar) {
        super(eVar);
        this.f62365c = fVar;
    }

    @Override
    protected void g(i00.c cVar) {
        this.f62372b.f(new BackpressureLatestSubscriber(cVar, this.f62365c));
    }
}
