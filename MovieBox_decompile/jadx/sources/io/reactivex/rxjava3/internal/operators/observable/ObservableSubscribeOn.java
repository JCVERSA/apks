package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableSubscribeOn extends a {

    final Scheduler f62408b;

    static final class SubscribeOnObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {
        private static final long serialVersionUID = 8094547886072529208L;
        final io.reactivex.rxjava3.core.o downstream;
        final AtomicReference<io.reactivex.rxjava3.disposables.c> upstream = new AtomicReference<>();

        SubscribeOnObserver(io.reactivex.rxjava3.core.o oVar) {
            this.downstream = oVar;
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
        public void onError(Throwable th2) {
            this.downstream.onError(th2);
        }

        @Override
        public void onNext(T t10) {
            this.downstream.onNext(t10);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.setOnce(this.upstream, cVar);
        }

        void setDisposable(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    final class SubscribeTask implements Runnable {
        private final SubscribeOnObserver<Object> parent;

        SubscribeTask(SubscribeOnObserver<Object> subscribeOnObserver) {
            this.parent = subscribeOnObserver;
        }

        @Override
        public void run() {
            ObservableSubscribeOn.this.f62424a.subscribe(this.parent);
        }
    }

    public ObservableSubscribeOn(io.reactivex.rxjava3.core.m mVar, Scheduler scheduler) {
        super(mVar);
        this.f62408b = scheduler;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(oVar);
        oVar.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.setDisposable(this.f62408b.d(new SubscribeTask(subscribeOnObserver)));
    }
}
