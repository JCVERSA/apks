package io.reactivex.internal.operators.single;

import defpackage.in9;
import defpackage.mn9;
import defpackage.rc2;
import defpackage.xm9;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleSubscribeOn extends xm9 {
    public final mn9 a;
    public final Scheduler b;

    public static final class SubscribeOnObserver<T> extends AtomicReference<rc2> implements in9, rc2, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;
        final in9 downstream;
        final mn9 source;
        final SequentialDisposable task = new SequentialDisposable();

        public SubscribeOnObserver(in9 in9Var, mn9 mn9Var) {
            this.downstream = in9Var;
            this.source = mn9Var;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this);
            this.task.dispose();
        }

        @Override
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this, rc2Var);
        }

        @Override
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }

        @Override
        public void run() {
            this.source.a(this);
        }
    }

    public SingleSubscribeOn(mn9 mn9Var, Scheduler scheduler) {
        this.a = mn9Var;
        this.b = scheduler;
    }

    @Override
    public void q(in9 in9Var) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(in9Var, this.a);
        in9Var.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.task.replace(this.b.c(subscribeOnObserver));
    }
}
