package io.reactivex.rxjava3.internal.operators.single;

import dy.a;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

final class SingleTimeout$TimeoutMainObserver<T> extends AtomicReference<c> implements q, Runnable, c {
    private static final long serialVersionUID = 37497744973048446L;
    final q downstream;
    final TimeoutFallbackObserver<T> fallback;
    r other;
    final AtomicReference<c> task = new AtomicReference<>();
    final long timeout;
    final TimeUnit unit;

    static final class TimeoutFallbackObserver<T> extends AtomicReference<c> implements q {
        private static final long serialVersionUID = 2071387740092105509L;
        final q downstream;

        TimeoutFallbackObserver(q qVar) {
            this.downstream = qVar;
        }

        @Override
        public void onError(Throwable th2) {
            this.downstream.onError(th2);
        }

        @Override
        public void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override
        public void onSuccess(T t10) {
            this.downstream.onSuccess(t10);
        }
    }

    SingleTimeout$TimeoutMainObserver(q qVar, r rVar, long j10, TimeUnit timeUnit) {
        this.downstream = qVar;
        this.other = rVar;
        this.timeout = j10;
        this.unit = timeUnit;
        if (rVar != null) {
            this.fallback = new TimeoutFallbackObserver<>(qVar);
        } else {
            this.fallback = null;
        }
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this);
        DisposableHelper.dispose(this.task);
        TimeoutFallbackObserver<T> timeoutFallbackObserver = this.fallback;
        if (timeoutFallbackObserver != null) {
            DisposableHelper.dispose(timeoutFallbackObserver);
        }
    }

    @Override
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override
    public void onError(Throwable th2) {
        c cVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar == disposableHelper || !compareAndSet(cVar, disposableHelper)) {
            a.r(th2);
        } else {
            DisposableHelper.dispose(this.task);
            this.downstream.onError(th2);
        }
    }

    @Override
    public void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override
    public void onSuccess(T t10) {
        c cVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar == disposableHelper || !compareAndSet(cVar, disposableHelper)) {
            return;
        }
        DisposableHelper.dispose(this.task);
        this.downstream.onSuccess(t10);
    }

    @Override
    public void run() {
        if (DisposableHelper.dispose(this)) {
            r rVar = this.other;
            if (rVar == null) {
                this.downstream.onError(new TimeoutException(ExceptionHelper.f(this.timeout, this.unit)));
            } else {
                this.other = null;
                rVar.a(this.fallback);
            }
        }
    }
}
