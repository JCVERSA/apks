package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.hm8;
import defpackage.im8;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.wk5;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableBufferTimed$BufferExactUnboundedObserver<T, U extends Collection<? super T>> extends im8 implements Runnable, rc2 {
    U buffer;
    final Callable<U> bufferSupplier;
    final Scheduler scheduler;
    final AtomicReference<rc2> timer;
    final long timespan;
    final TimeUnit unit;
    rc2 upstream;

    public ObservableBufferTimed$BufferExactUnboundedObserver(pd7 pd7Var, Callable<U> callable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        super(pd7Var, new MpscLinkedQueue());
        this.timer = new AtomicReference<>();
        this.bufferSupplier = callable;
        this.timespan = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override
    public void dispose() {
        DisposableHelper.dispose(this.timer);
        this.upstream.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.timer.get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void onComplete() {
        U u;
        synchronized (this) {
            u = this.buffer;
            this.buffer = null;
        }
        if (u != null) {
            this.queue.offer(u);
            this.done = true;
            if (enter()) {
                hm8.d(this.queue, this.downstream, false, null, this);
            }
        }
        DisposableHelper.dispose(this.timer);
    }

    @Override
    public void onError(Throwable th) {
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th);
        DisposableHelper.dispose(this.timer);
    }

    @Override
    public void onNext(T t) {
        synchronized (this) {
            try {
                U u = this.buffer;
                if (u == null) {
                    return;
                }
                u.add(t);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            try {
                this.buffer = (U) ac7.d(this.bufferSupplier.call(), "The buffer supplied is null");
                this.downstream.onSubscribe(this);
                if (this.cancelled) {
                    return;
                }
                Scheduler scheduler = this.scheduler;
                long j = this.timespan;
                rc2 rc2VarE = scheduler.e(this, j, j, this.unit);
                if (wk5.a(this.timer, null, rc2VarE)) {
                    return;
                }
                rc2VarE.dispose();
            } catch (Throwable th) {
                re3.b(th);
                dispose();
                EmptyDisposable.error(th, this.downstream);
            }
        }
    }

    @Override
    public void run() {
        U u;
        try {
            U u2 = (U) ac7.d(this.bufferSupplier.call(), "The bufferSupplier returned a null buffer");
            synchronized (this) {
                try {
                    u = this.buffer;
                    if (u != null) {
                        this.buffer = u2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (u == null) {
                DisposableHelper.dispose(this.timer);
            } else {
                fastPathEmit(u, false, this);
            }
        } catch (Throwable th2) {
            re3.b(th2);
            this.downstream.onError(th2);
            dispose();
        }
    }

    @Override
    public void accept(pd7 pd7Var, U u) {
        this.downstream.onNext(u);
    }
}
