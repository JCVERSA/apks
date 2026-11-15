package io.reactivex.internal.operators.observable;

import defpackage.ld7;
import defpackage.n3;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ObservableUnsubscribeOn extends n3 {
    public final Scheduler c;

    public static final class UnsubscribeObserver<T> extends AtomicBoolean implements pd7, rc2 {
        private static final long serialVersionUID = 1015244841293359600L;
        final pd7 downstream;
        final Scheduler scheduler;
        rc2 upstream;

        public final class DisposeTask implements Runnable {
            public DisposeTask() {
            }

            @Override
            public void run() {
                UnsubscribeObserver.this.upstream.dispose();
            }
        }

        public UnsubscribeObserver(pd7 pd7Var, Scheduler scheduler) {
            this.downstream = pd7Var;
            this.scheduler = scheduler;
        }

        @Override
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.scheduler.c(new DisposeTask());
            }
        }

        @Override
        public boolean isDisposed() {
            return get();
        }

        @Override
        public void onComplete() {
            if (get()) {
                return;
            }
            this.downstream.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            if (get()) {
                yw8.s(th);
            } else {
                this.downstream.onError(th);
            }
        }

        @Override
        public void onNext(T t) {
            if (get()) {
                return;
            }
            this.downstream.onNext(t);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.upstream, rc2Var)) {
                this.upstream = rc2Var;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public ObservableUnsubscribeOn(ld7 ld7Var, Scheduler scheduler) {
        super(ld7Var);
        this.c = scheduler;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new UnsubscribeObserver(pd7Var, this.c));
    }
}
