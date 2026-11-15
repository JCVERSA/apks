package io.reactivex.rxjava3.internal.operators.flowable;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import yx.k;

final class FlowableBufferTimed$BufferExactUnboundedSubscriber<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.b implements i00.d, Runnable, io.reactivex.rxjava3.disposables.c {
    U buffer;
    final k bufferSupplier;
    final Scheduler scheduler;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> timer;
    final long timespan;
    final TimeUnit unit;
    i00.d upstream;

    FlowableBufferTimed$BufferExactUnboundedSubscriber(i00.c cVar, k kVar, long j10, TimeUnit timeUnit, Scheduler scheduler) {
        super(cVar, new MpscLinkedQueue());
        this.timer = new AtomicReference<>();
        this.bufferSupplier = kVar;
        this.timespan = j10;
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
                U u10 = this.buffer;
                if (u10 == null) {
                    return;
                }
                this.buffer = null;
                this.queue.offer(u10);
                this.done = true;
                if (enter()) {
                    i.e(this.queue, this.downstream, false, null, this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onError(Throwable th2) {
        DisposableHelper.dispose(this.timer);
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th2);
    }

    @Override
    public void onNext(T t10) {
        synchronized (this) {
            try {
                U u10 = this.buffer;
                if (u10 != null) {
                    u10.add(t10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The supplied buffer is null");
                this.buffer = (U) obj;
                this.downstream.onSubscribe(this);
                if (this.cancelled) {
                    return;
                }
                dVar.request(Long.MAX_VALUE);
                Scheduler scheduler = this.scheduler;
                long j10 = this.timespan;
                io.reactivex.rxjava3.disposables.c cVarF = scheduler.f(this, j10, j10, this.unit);
                if (j0.a(this.timer, null, cVarF)) {
                    return;
                }
                cVarF.dispose();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cancel();
                EmptySubscription.error(th2, this.downstream);
            }
        }
    }

    @Override
    public void request(long j10) {
        requested(j10);
    }

    @Override
    public void run() {
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The supplied buffer is null");
            U u10 = (U) obj;
            synchronized (this) {
                try {
                    U u11 = this.buffer;
                    if (u11 == null) {
                        return;
                    }
                    this.buffer = u10;
                    fastPathEmitMax(u11, false, this);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            cancel();
            this.downstream.onError(th3);
        }
    }

    @Override
    public boolean accept(i00.c cVar, U u10) {
        this.downstream.onNext(u10);
        return true;
    }
}
