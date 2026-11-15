package io.reactivex.internal.operators.observable;

import defpackage.ld7;
import defpackage.mc7;
import defpackage.n3;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableTimeoutTimed extends n3 {
    public final long c;
    public final TimeUnit d;
    public final Scheduler e;
    public final ld7 f;

    public static final class TimeoutFallbackObserver<T> extends AtomicReference<rc2> implements pd7, rc2, b {
        private static final long serialVersionUID = 3764492702657003550L;
        final pd7 downstream;
        ld7 fallback;
        final long timeout;
        final TimeUnit unit;
        final Scheduler.Worker worker;
        final SequentialDisposable task = new SequentialDisposable();
        final AtomicLong index = new AtomicLong();
        final AtomicReference<rc2> upstream = new AtomicReference<>();

        public TimeoutFallbackObserver(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler.Worker worker, ld7 ld7Var) {
            this.downstream = pd7Var;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = worker;
            this.fallback = ld7Var;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this.upstream);
            DisposableHelper.dispose(this);
            this.worker.dispose();
        }

        @Override
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override
        public void onComplete() {
            if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
                this.worker.dispose();
            }
        }

        @Override
        public void onError(Throwable th) {
            if (this.index.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                yw8.s(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override
        public void onNext(T t) {
            long j = this.index.get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (this.index.compareAndSet(j, j2)) {
                    this.task.get().dispose();
                    this.downstream.onNext(t);
                    startTimeout(j2);
                }
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this.upstream, rc2Var);
        }

        @Override
        public void onTimeout(long j) {
            if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.upstream);
                ld7 ld7Var = this.fallback;
                this.fallback = null;
                ld7Var.subscribe(new a(this.downstream, this));
                this.worker.dispose();
            }
        }

        public void startTimeout(long j) {
            this.task.replace(this.worker.schedule(new TimeoutTask(j, this), this.timeout, this.unit));
        }
    }

    public static final class TimeoutObserver<T> extends AtomicLong implements pd7, rc2, b {
        private static final long serialVersionUID = 3764492702657003550L;
        final pd7 downstream;
        final long timeout;
        final TimeUnit unit;
        final Scheduler.Worker worker;
        final SequentialDisposable task = new SequentialDisposable();
        final AtomicReference<rc2> upstream = new AtomicReference<>();

        public TimeoutObserver(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.downstream = pd7Var;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = worker;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this.upstream);
            this.worker.dispose();
        }

        @Override
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.upstream.get());
        }

        @Override
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
                this.worker.dispose();
            }
        }

        @Override
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                yw8.s(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override
        public void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    this.task.get().dispose();
                    this.downstream.onNext(t);
                    startTimeout(j2);
                }
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this.upstream, rc2Var);
        }

        @Override
        public void onTimeout(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.upstream);
                this.downstream.onError(new TimeoutException(ExceptionHelper.c(this.timeout, this.unit)));
                this.worker.dispose();
            }
        }

        public void startTimeout(long j) {
            this.task.replace(this.worker.schedule(new TimeoutTask(j, this), this.timeout, this.unit));
        }
    }

    public static final class TimeoutTask implements Runnable {
        final long idx;
        final b parent;

        public TimeoutTask(long j, b bVar) {
            this.idx = j;
            this.parent = bVar;
        }

        @Override
        public void run() {
            this.parent.onTimeout(this.idx);
        }
    }

    public static final class a implements pd7 {
        public final pd7 b;
        public final AtomicReference c;

        public a(pd7 pd7Var, AtomicReference atomicReference) {
            this.b = pd7Var;
            this.c = atomicReference;
        }

        @Override
        public void onComplete() {
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override
        public void onNext(Object obj) {
            this.b.onNext(obj);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.replace(this.c, rc2Var);
        }
    }

    public interface b {
        void onTimeout(long j);
    }

    public ObservableTimeoutTimed(mc7 mc7Var, long j, TimeUnit timeUnit, Scheduler scheduler, ld7 ld7Var) {
        super(mc7Var);
        this.c = j;
        this.d = timeUnit;
        this.e = scheduler;
        this.f = ld7Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        if (this.f == null) {
            TimeoutObserver timeoutObserver = new TimeoutObserver(pd7Var, this.c, this.d, this.e.b());
            pd7Var.onSubscribe(timeoutObserver);
            timeoutObserver.startTimeout(0L);
            this.b.subscribe(timeoutObserver);
            return;
        }
        TimeoutFallbackObserver timeoutFallbackObserver = new TimeoutFallbackObserver(pd7Var, this.c, this.d, this.e.b(), this.f);
        pd7Var.onSubscribe(timeoutFallbackObserver);
        timeoutFallbackObserver.startTimeout(0L);
        this.b.subscribe(timeoutFallbackObserver);
    }
}
