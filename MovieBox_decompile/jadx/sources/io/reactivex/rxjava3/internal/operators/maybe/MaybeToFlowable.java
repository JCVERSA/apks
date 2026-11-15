package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.e;
import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.core.i;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;

public final class MaybeToFlowable extends e {

    final i f62381b;

    static final class MaybeToFlowableSubscriber<T> extends DeferredScalarSubscription<T> implements h {
        private static final long serialVersionUID = 7603343402964826922L;
        c upstream;

        MaybeToFlowableSubscriber(i00.c cVar) {
            super(cVar);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.upstream.dispose();
        }

        @Override
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            this.downstream.onError(th2);
        }

        @Override
        public void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.upstream, cVar)) {
                this.upstream = cVar;
                this.downstream.onSubscribe(this);
            }
        }

        @Override
        public void onSuccess(T t10) {
            complete(t10);
        }
    }

    public MaybeToFlowable(i iVar) {
        this.f62381b = iVar;
    }

    @Override
    protected void g(i00.c cVar) {
        this.f62381b.a(new MaybeToFlowableSubscriber(cVar));
    }
}
