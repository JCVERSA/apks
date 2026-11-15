package io.reactivex.internal.operators.single;

import defpackage.f2a;
import defpackage.in9;
import defpackage.jk8;
import defpackage.mn9;
import defpackage.rc2;
import defpackage.xm9;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleTakeUntil extends xm9 {
    public final mn9 a;
    public final jk8 b;

    public static final class TakeUntilMainObserver<T> extends AtomicReference<rc2> implements in9, rc2 {
        private static final long serialVersionUID = -622603812305745221L;
        final in9 downstream;
        final TakeUntilOtherSubscriber other = new TakeUntilOtherSubscriber(this);

        public TakeUntilMainObserver(in9 in9Var) {
            this.downstream = in9Var;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this);
            this.other.dispose();
        }

        @Override
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override
        public void onError(Throwable th) {
            this.other.dispose();
            rc2 rc2Var = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (rc2Var == disposableHelper || getAndSet(disposableHelper) == disposableHelper) {
                yw8.s(th);
            } else {
                this.downstream.onError(th);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this, rc2Var);
        }

        @Override
        public void onSuccess(T t) {
            this.other.dispose();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.downstream.onSuccess(t);
            }
        }

        public void otherError(Throwable th) {
            rc2 andSet;
            rc2 rc2Var = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (rc2Var == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                yw8.s(th);
                return;
            }
            if (andSet != null) {
                andSet.dispose();
            }
            this.downstream.onError(th);
        }
    }

    public static final class TakeUntilOtherSubscriber extends AtomicReference<f2a> implements y14 {
        private static final long serialVersionUID = 5170026210238877381L;
        final TakeUntilMainObserver<?> parent;

        public TakeUntilOtherSubscriber(TakeUntilMainObserver<?> takeUntilMainObserver) {
            this.parent = takeUntilMainObserver;
        }

        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override
        public void onComplete() {
            f2a f2aVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (f2aVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.parent.otherError(new CancellationException());
            }
        }

        @Override
        public void onError(Throwable th) {
            this.parent.otherError(th);
        }

        @Override
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.parent.otherError(new CancellationException());
            }
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            SubscriptionHelper.setOnce(this, f2aVar, Long.MAX_VALUE);
        }
    }

    public SingleTakeUntil(mn9 mn9Var, jk8 jk8Var) {
        this.a = mn9Var;
        this.b = jk8Var;
    }

    @Override
    public void q(in9 in9Var) {
        TakeUntilMainObserver takeUntilMainObserver = new TakeUntilMainObserver(in9Var);
        in9Var.onSubscribe(takeUntilMainObserver);
        this.b.subscribe(takeUntilMainObserver.other);
        this.a.a(takeUntilMainObserver);
    }
}
