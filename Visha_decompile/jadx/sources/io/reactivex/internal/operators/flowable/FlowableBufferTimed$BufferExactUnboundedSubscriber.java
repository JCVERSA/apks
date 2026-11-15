package io.reactivex.internal.operators.flowable;

import defpackage.ac7;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.hm8;
import defpackage.jm8;
import defpackage.rc2;
import defpackage.re3;
import defpackage.wk5;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableBufferTimed$BufferExactUnboundedSubscriber<T, U extends Collection<? super T>> extends jm8 implements f2a, Runnable, rc2 {
    U buffer;
    final Callable<U> bufferSupplier;
    final Scheduler scheduler;
    final AtomicReference<rc2> timer;
    final long timespan;
    final TimeUnit unit;
    f2a upstream;

    public FlowableBufferTimed$BufferExactUnboundedSubscriber(d2a d2aVar, Callable<U> callable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        super(d2aVar, new MpscLinkedQueue());
        this.timer = new AtomicReference<>();
        this.bufferSupplier = callable;
        this.timespan = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        DisposableHelper.dispose(this.timer);
    }

    @Override
    public void dispose() {
        cancel();
    }

    @Override
    public boolean isDisposed() {
        return this.timer.get() == DisposableHelper.DISPOSED;
    }

    @Override
    public void onComplete() {
        DisposableHelper.dispose(this.timer);
        synchronized (this) {
            try {
                U u = this.buffer;
                if (u == null) {
                    return;
                }
                this.buffer = null;
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    hm8.e(this.queue, this.downstream, false, null, this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onError(Throwable th) {
        DisposableHelper.dispose(this.timer);
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        synchronized (this) {
            try {
                U u = this.buffer;
                if (u != null) {
                    u.add(t);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            try {
                this.buffer = (U) ac7.d(this.bufferSupplier.call(), "The supplied buffer is null");
                this.downstream.onSubscribe(this);
                if (this.cancelled) {
                    return;
                }
                f2aVar.request(Long.MAX_VALUE);
                Scheduler scheduler = this.scheduler;
                long j = this.timespan;
                rc2 rc2VarE = scheduler.e(this, j, j, this.unit);
                if (wk5.a(this.timer, null, rc2VarE)) {
                    return;
                }
                rc2VarE.dispose();
            } catch (Throwable th) {
                re3.b(th);
                cancel();
                EmptySubscription.error(th, this.downstream);
            }
        }
    }

    @Override
    public void request(long j) {
        requested(j);
    }

    @Override
    public void run() {
        try {
            U u = (U) ac7.d(this.bufferSupplier.call(), "The supplied buffer is null");
            synchronized (this) {
                try {
                    U u2 = this.buffer;
                    if (u2 == null) {
                        return;
                    }
                    this.buffer = u;
                    fastPathEmitMax(u2, false, this);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            re3.b(th2);
            cancel();
            this.downstream.onError(th2);
        }
    }

    @Override
    public boolean accept(d2a d2aVar, U u) {
        this.downstream.onNext(u);
        return true;
    }
}
