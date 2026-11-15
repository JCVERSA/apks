package io.reactivex.rxjava3.internal.operators.completable;

import dy.a;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.b;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

final class CompletableDisposeOn$DisposeOnObserver implements b, c, Runnable {
    volatile boolean disposed;
    final b downstream;
    final Scheduler scheduler;
    c upstream;

    CompletableDisposeOn$DisposeOnObserver(b bVar, Scheduler scheduler) {
        this.downstream = bVar;
        this.scheduler = scheduler;
    }

    @Override
    public void dispose() {
        this.disposed = true;
        this.scheduler.d(this);
    }

    @Override
    public boolean isDisposed() {
        return this.disposed;
    }

    @Override
    public void onComplete() {
        if (this.disposed) {
            return;
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th2) {
        if (this.disposed) {
            a.r(th2);
        } else {
            this.downstream.onError(th2);
        }
    }

    @Override
    public void onSubscribe(c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void run() {
        this.upstream.dispose();
        this.upstream = DisposableHelper.DISPOSED;
    }
}
