package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.h;
import io.reactivex.rxjava3.internal.util.i;

public abstract class b extends f implements io.reactivex.rxjava3.core.f, h {
    protected volatile boolean cancelled;
    protected volatile boolean done;
    protected final i00.c downstream;
    protected Throwable error;
    protected final io.reactivex.rxjava3.operators.f queue;

    public b(i00.c cVar, io.reactivex.rxjava3.operators.f fVar) {
        this.downstream = cVar;
        this.queue = fVar;
    }

    public abstract boolean accept(i00.c cVar, Object obj);

    @Override
    public final boolean cancelled() {
        return this.cancelled;
    }

    @Override
    public final boolean done() {
        return this.done;
    }

    public final boolean enter() {
        return this.wip.getAndIncrement() == 0;
    }

    @Override
    public final Throwable error() {
        return this.error;
    }

    public final boolean fastEnter() {
        return this.wip.get() == 0 && this.wip.compareAndSet(0, 1);
    }

    protected final void fastPathEmitMax(Object obj, boolean z10, io.reactivex.rxjava3.disposables.c cVar) {
        i00.c cVar2 = this.downstream;
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        if (fastEnter()) {
            long j10 = this.requested.get();
            if (j10 == 0) {
                cVar.dispose();
                cVar2.onError(MissingBackpressureException.createDefault());
                return;
            } else {
                if (accept(cVar2, obj) && j10 != Long.MAX_VALUE) {
                    produced(1L);
                }
                if (leave(-1) == 0) {
                    return;
                }
            }
        } else {
            fVar.offer(obj);
            if (!enter()) {
                return;
            }
        }
        i.e(fVar, cVar2, z10, cVar, this);
    }

    protected final void fastPathOrderedEmitMax(Object obj, boolean z10, io.reactivex.rxjava3.disposables.c cVar) {
        i00.c cVar2 = this.downstream;
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        if (fastEnter()) {
            long j10 = this.requested.get();
            if (j10 == 0) {
                this.cancelled = true;
                cVar.dispose();
                cVar2.onError(MissingBackpressureException.createDefault());
                return;
            } else if (fVar.isEmpty()) {
                if (accept(cVar2, obj) && j10 != Long.MAX_VALUE) {
                    produced(1L);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                fVar.offer(obj);
            }
        } else {
            fVar.offer(obj);
            if (!enter()) {
                return;
            }
        }
        i.e(fVar, cVar2, z10, cVar, this);
    }

    @Override
    public final int leave(int i10) {
        return this.wip.addAndGet(i10);
    }

    @Override
    public final long produced(long j10) {
        return this.requested.addAndGet(-j10);
    }

    @Override
    public final long requested() {
        return this.requested.get();
    }

    public final void requested(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
        }
    }
}
