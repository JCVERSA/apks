package io.reactivex.internal.operators.single;

import defpackage.in9;
import defpackage.mn9;
import defpackage.rc2;
import defpackage.xm9;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleObserveOn extends xm9 {
    public final mn9 a;
    public final Scheduler b;

    public static final class ObserveOnSingleObserver<T> extends AtomicReference<rc2> implements in9, rc2, Runnable {
        private static final long serialVersionUID = 3528003840217436037L;
        final in9 downstream;
        Throwable error;
        final Scheduler scheduler;
        T value;

        public ObserveOnSingleObserver(in9 in9Var, Scheduler scheduler) {
            this.downstream = in9Var;
            this.scheduler = scheduler;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override
        public void onError(Throwable th) {
            this.error = th;
            DisposableHelper.replace(this, this.scheduler.c(this));
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.setOnce(this, rc2Var)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override
        public void onSuccess(T t) {
            this.value = t;
            DisposableHelper.replace(this, this.scheduler.c(this));
        }

        @Override
        public void run() {
            Throwable th = this.error;
            if (th != null) {
                this.downstream.onError(th);
            } else {
                this.downstream.onSuccess(this.value);
            }
        }
    }

    public SingleObserveOn(mn9 mn9Var, Scheduler scheduler) {
        this.a = mn9Var;
        this.b = scheduler;
    }

    @Override
    public void q(in9 in9Var) {
        this.a.a(new ObserveOnSingleObserver(in9Var, this.b));
    }
}
