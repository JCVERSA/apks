package io.reactivex.internal.operators.single;

import defpackage.in9;
import defpackage.mn9;
import defpackage.rc2;
import defpackage.xm9;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleTimeout extends xm9 {
    public final mn9 a;
    public final long b;
    public final TimeUnit c;
    public final Scheduler d;
    public final mn9 e;

    public static final class TimeoutMainObserver<T> extends AtomicReference<rc2> implements in9, Runnable, rc2 {
        private static final long serialVersionUID = 37497744973048446L;
        final in9 downstream;
        final TimeoutFallbackObserver<T> fallback;
        mn9 other;
        final AtomicReference<rc2> task = new AtomicReference<>();
        final long timeout;
        final TimeUnit unit;

        public static final class TimeoutFallbackObserver<T> extends AtomicReference<rc2> implements in9 {
            private static final long serialVersionUID = 2071387740092105509L;
            final in9 downstream;

            public TimeoutFallbackObserver(in9 in9Var) {
                this.downstream = in9Var;
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
        }

        public TimeoutMainObserver(in9 in9Var, mn9 mn9Var, long j, TimeUnit timeUnit) {
            this.downstream = in9Var;
            this.other = mn9Var;
            this.timeout = j;
            this.unit = timeUnit;
            if (mn9Var != null) {
                this.fallback = new TimeoutFallbackObserver<>(in9Var);
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
        public void onError(Throwable th) {
            rc2 rc2Var = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (rc2Var == disposableHelper || !compareAndSet(rc2Var, disposableHelper)) {
                yw8.s(th);
            } else {
                DisposableHelper.dispose(this.task);
                this.downstream.onError(th);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this, rc2Var);
        }

        @Override
        public void onSuccess(T t) {
            rc2 rc2Var = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (rc2Var == disposableHelper || !compareAndSet(rc2Var, disposableHelper)) {
                return;
            }
            DisposableHelper.dispose(this.task);
            this.downstream.onSuccess(t);
        }

        @Override
        public void run() {
            rc2 rc2Var = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (rc2Var == disposableHelper || !compareAndSet(rc2Var, disposableHelper)) {
                return;
            }
            if (rc2Var != null) {
                rc2Var.dispose();
            }
            mn9 mn9Var = this.other;
            if (mn9Var == null) {
                this.downstream.onError(new TimeoutException(ExceptionHelper.c(this.timeout, this.unit)));
            } else {
                this.other = null;
                mn9Var.a(this.fallback);
            }
        }
    }

    public SingleTimeout(mn9 mn9Var, long j, TimeUnit timeUnit, Scheduler scheduler, mn9 mn9Var2) {
        this.a = mn9Var;
        this.b = j;
        this.c = timeUnit;
        this.d = scheduler;
        this.e = mn9Var2;
    }

    @Override
    public void q(in9 in9Var) {
        TimeoutMainObserver timeoutMainObserver = new TimeoutMainObserver(in9Var, this.e, this.b, this.c);
        in9Var.onSubscribe(timeoutMainObserver);
        DisposableHelper.replace(timeoutMainObserver.task, this.d.d(timeoutMainObserver, this.b, this.c));
        this.a.a(timeoutMainObserver);
    }
}
