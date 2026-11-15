package io.reactivex.internal.operators.completable;

import defpackage.hb1;
import defpackage.qb1;
import defpackage.rc2;
import defpackage.sb1;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

public final class CompletableSubscribeOn extends hb1 {
    public final sb1 a;
    public final Scheduler b;

    public static final class SubscribeOnObserver extends AtomicReference<rc2> implements qb1, rc2, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;
        final qb1 downstream;
        final sb1 source;
        final SequentialDisposable task = new SequentialDisposable();

        public SubscribeOnObserver(qb1 qb1Var, sb1 sb1Var) {
            this.downstream = qb1Var;
            this.source = sb1Var;
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
        public void onComplete() {
            this.downstream.onComplete();
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
        public void run() {
            this.source.a(this);
        }
    }

    public CompletableSubscribeOn(sb1 sb1Var, Scheduler scheduler) {
        this.a = sb1Var;
        this.b = scheduler;
    }

    @Override
    public void i(qb1 qb1Var) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(qb1Var, this.a);
        qb1Var.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.task.replace(this.b.c(subscribeOnObserver));
    }
}
