package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class MaybeDelay$DelayMaybeObserver<T> extends AtomicReference<c> implements h, c, Runnable {
    private static final long serialVersionUID = 5566860102500855068L;
    final long delay;
    final boolean delayError;
    final h downstream;
    Throwable error;
    final Scheduler scheduler;
    final TimeUnit unit;
    T value;

    MaybeDelay$DelayMaybeObserver(h hVar, long j10, TimeUnit timeUnit, Scheduler scheduler, boolean z10) {
        this.downstream = hVar;
        this.delay = j10;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.delayError = z10;
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
    public void onComplete() {
        schedule(this.delay);
    }

    @Override
    public void onError(Throwable th2) {
        this.error = th2;
        schedule(this.delayError ? this.delay : 0L);
    }

    @Override
    public void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void onSuccess(T t10) {
        this.value = t10;
        schedule(this.delay);
    }

    @Override
    public void run() {
        Throwable th2 = this.error;
        if (th2 != null) {
            this.downstream.onError(th2);
            return;
        }
        T t10 = this.value;
        if (t10 != null) {
            this.downstream.onSuccess(t10);
        } else {
            this.downstream.onComplete();
        }
    }

    void schedule(long j10) {
        DisposableHelper.replace(this, this.scheduler.e(this, j10, this.unit));
    }
}
