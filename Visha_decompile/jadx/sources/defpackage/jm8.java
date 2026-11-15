package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

public abstract class jm8 extends pm8 implements y14, gm8 {
    protected volatile boolean cancelled;
    protected volatile boolean done;
    protected final d2a downstream;
    protected Throwable error;
    protected final nm9 queue;

    public jm8(d2a d2aVar, nm9 nm9Var) {
        this.downstream = d2aVar;
        this.queue = nm9Var;
    }

    public boolean accept(d2a d2aVar, Object obj) {
        return false;
    }

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

    public final void fastPathEmitMax(Object obj, boolean z, rc2 rc2Var) {
        d2a d2aVar = this.downstream;
        nm9 nm9Var = this.queue;
        if (fastEnter()) {
            long j = this.requested.get();
            if (j == 0) {
                rc2Var.dispose();
                d2aVar.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            } else {
                if (accept(d2aVar, obj) && j != Long.MAX_VALUE) {
                    produced(1L);
                }
                if (leave(-1) == 0) {
                    return;
                }
            }
        } else {
            nm9Var.offer(obj);
            if (!enter()) {
                return;
            }
        }
        hm8.e(nm9Var, d2aVar, z, rc2Var, this);
    }

    public final void fastPathOrderedEmitMax(Object obj, boolean z, rc2 rc2Var) {
        d2a d2aVar = this.downstream;
        nm9 nm9Var = this.queue;
        if (fastEnter()) {
            long j = this.requested.get();
            if (j == 0) {
                this.cancelled = true;
                rc2Var.dispose();
                d2aVar.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            } else if (nm9Var.isEmpty()) {
                if (accept(d2aVar, obj) && j != Long.MAX_VALUE) {
                    produced(1L);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                nm9Var.offer(obj);
            }
        } else {
            nm9Var.offer(obj);
            if (!enter()) {
                return;
            }
        }
        hm8.e(nm9Var, d2aVar, z, rc2Var, this);
    }

    @Override
    public final int leave(int i) {
        return this.wip.addAndGet(i);
    }

    @Override
    public final long produced(long j) {
        return this.requested.addAndGet(-j);
    }

    @Override
    public final long requested() {
        return this.requested.get();
    }

    public final void requested(long j) {
        if (SubscriptionHelper.validate(j)) {
            i50.a(this.requested, j);
        }
    }
}
