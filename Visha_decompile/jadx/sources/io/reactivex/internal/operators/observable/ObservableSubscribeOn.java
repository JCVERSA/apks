package io.reactivex.internal.operators.observable;

import defpackage.ld7;
import defpackage.n3;
import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableSubscribeOn extends n3 {
    public final Scheduler c;

    public static final class SubscribeOnObserver<T> extends AtomicReference<rc2> implements pd7, rc2 {
        private static final long serialVersionUID = 8094547886072529208L;
        final pd7 downstream;
        final AtomicReference<rc2> upstream = new AtomicReference<>();

        public SubscribeOnObserver(pd7 pd7Var) {
            this.downstream = pd7Var;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this.upstream);
            DisposableHelper.dispose(this);
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
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this.upstream, rc2Var);
        }

        public void setDisposable(rc2 rc2Var) {
            DisposableHelper.setOnce(this, rc2Var);
        }
    }

    public final class SubscribeTask implements Runnable {
        private final SubscribeOnObserver<Object> parent;

        public SubscribeTask(SubscribeOnObserver<Object> subscribeOnObserver) {
            this.parent = subscribeOnObserver;
        }

        @Override
        public void run() {
            ObservableSubscribeOn.this.b.subscribe(this.parent);
        }
    }

    public ObservableSubscribeOn(ld7 ld7Var, Scheduler scheduler) {
        super(ld7Var);
        this.c = scheduler;
    }

    @Override
    public void c0(pd7 pd7Var) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(pd7Var);
        pd7Var.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.setDisposable(this.c.c(new SubscribeTask(subscribeOnObserver)));
    }
}
