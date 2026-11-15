package io.reactivex.internal.operators.single;

import defpackage.d2a;
import defpackage.in9;
import defpackage.mn9;
import defpackage.r14;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;

public final class SingleToFlowable extends r14 {
    public final mn9 c;

    public static final class SingleToFlowableObserver<T> extends DeferredScalarSubscription<T> implements in9 {
        private static final long serialVersionUID = 187782011903685568L;
        rc2 upstream;

        public SingleToFlowableObserver(d2a d2aVar) {
            super(d2aVar);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.upstream.dispose();
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

    public SingleToFlowable(mn9 mn9Var) {
        this.c = mn9Var;
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.a(new SingleToFlowableObserver(d2aVar));
    }
}
