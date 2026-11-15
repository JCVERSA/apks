package io.reactivex.internal.operators.observable;

import defpackage.ld7;
import defpackage.n3;
import defpackage.pd7;
import defpackage.pn4;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableTakeUntil extends n3 {
    public final ld7 c;

    public static final class TakeUntilMainObserver<T, U> extends AtomicInteger implements pd7, rc2 {
        private static final long serialVersionUID = 1418547743690811973L;
        final pd7 downstream;
        final AtomicReference<rc2> upstream = new AtomicReference<>();
        final TakeUntilMainObserver<T, U>.OtherObserver otherObserver = new OtherObserver();
        final AtomicThrowable error = new AtomicThrowable();

        public final class OtherObserver extends AtomicReference<rc2> implements pd7 {
            private static final long serialVersionUID = -8693423678067375039L;

            public OtherObserver() {
            }

            @Override
            public void onComplete() {
                TakeUntilMainObserver.this.otherComplete();
            }

            @Override
            public void onError(Throwable th) {
                TakeUntilMainObserver.this.otherError(th);
            }

            @Override
            public void onNext(U u) {
                DisposableHelper.dispose(this);
                TakeUntilMainObserver.this.otherComplete();
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
                DisposableHelper.setOnce(this, rc2Var);
            }
        }

        public TakeUntilMainObserver(pd7 pd7Var) {
            this.downstream = pd7Var;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this.upstream);
            DisposableHelper.dispose(this.otherObserver);
        }

        @Override
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.upstream.get());
        }

        @Override
        public void onComplete() {
            DisposableHelper.dispose(this.otherObserver);
            pn4.a(this.downstream, this, this.error);
        }

        @Override
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.otherObserver);
            pn4.c(this.downstream, th, this, this.error);
        }

        @Override
        public void onNext(T t) {
            pn4.e(this.downstream, t, this, this.error);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this.upstream, rc2Var);
        }

        public void otherComplete() {
            DisposableHelper.dispose(this.upstream);
            pn4.a(this.downstream, this, this.error);
        }

        public void otherError(Throwable th) {
            DisposableHelper.dispose(this.upstream);
            pn4.c(this.downstream, th, this, this.error);
        }
    }

    public ObservableTakeUntil(ld7 ld7Var, ld7 ld7Var2) {
        super(ld7Var);
        this.c = ld7Var2;
    }

    @Override
    public void c0(pd7 pd7Var) {
        TakeUntilMainObserver takeUntilMainObserver = new TakeUntilMainObserver(pd7Var);
        pd7Var.onSubscribe(takeUntilMainObserver);
        this.c.subscribe(takeUntilMainObserver.otherObserver);
        this.b.subscribe(takeUntilMainObserver);
    }
}
