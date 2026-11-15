package io.reactivex.internal.operators.maybe;

import defpackage.d2a;
import defpackage.k96;
import defpackage.l96;
import defpackage.r14;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;

public final class MaybeToFlowable extends r14 {
    public final l96 c;

    public static final class MaybeToFlowableSubscriber<T> extends DeferredScalarSubscription<T> implements k96 {
        private static final long serialVersionUID = 7603343402964826922L;
        rc2 upstream;

        public MaybeToFlowableSubscriber(d2a d2aVar) {
            super(d2aVar);
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
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.upstream, rc2Var)) {
                this.upstream = rc2Var;
                this.downstream.onSubscribe(this);
            }
        }

        @Override
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public MaybeToFlowable(l96 l96Var) {
        this.c = l96Var;
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.a(new MaybeToFlowableSubscriber(d2aVar));
    }
}
