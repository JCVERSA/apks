package io.reactivex.internal.subscriptions;

import defpackage.ac7;
import defpackage.f2a;
import defpackage.i50;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public class SubscriptionArbiter extends AtomicInteger implements f2a {
    private static final long serialVersionUID = -2189523197179400958L;
    f2a actual;
    final boolean cancelOnReplace;
    volatile boolean cancelled;
    long requested;
    protected boolean unbounded;
    final AtomicReference<f2a> missedSubscription = new AtomicReference<>();
    final AtomicLong missedRequested = new AtomicLong();
    final AtomicLong missedProduced = new AtomicLong();

    public SubscriptionArbiter(boolean z) {
        this.cancelOnReplace = z;
    }

    @Override
    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        drain();
    }

    public final void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        drainLoop();
    }

    public final void drainLoop() {
        int iAddAndGet = 1;
        long jB = 0;
        f2a f2aVar = null;
        do {
            f2a andSet = this.missedSubscription.get();
            if (andSet != null) {
                andSet = this.missedSubscription.getAndSet(null);
            }
            long andSet2 = this.missedRequested.get();
            if (andSet2 != 0) {
                andSet2 = this.missedRequested.getAndSet(0L);
            }
            long andSet3 = this.missedProduced.get();
            if (andSet3 != 0) {
                andSet3 = this.missedProduced.getAndSet(0L);
            }
            f2a f2aVar2 = this.actual;
            if (this.cancelled) {
                if (f2aVar2 != null) {
                    f2aVar2.cancel();
                    this.actual = null;
                }
                if (andSet != null) {
                    andSet.cancel();
                }
            } else {
                long jB2 = this.requested;
                if (jB2 != Long.MAX_VALUE) {
                    jB2 = i50.b(jB2, andSet2);
                    if (jB2 != Long.MAX_VALUE) {
                        jB2 -= andSet3;
                        if (jB2 < 0) {
                            SubscriptionHelper.reportMoreProduced(jB2);
                            jB2 = 0;
                        }
                    }
                    this.requested = jB2;
                }
                if (andSet != null) {
                    if (f2aVar2 != null && this.cancelOnReplace) {
                        f2aVar2.cancel();
                    }
                    this.actual = andSet;
                    if (jB2 != 0) {
                        jB = i50.b(jB, jB2);
                        f2aVar = andSet;
                    }
                } else if (f2aVar2 != null && andSet2 != 0) {
                    jB = i50.b(jB, andSet2);
                    f2aVar = f2aVar2;
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
        if (jB != 0) {
            f2aVar.request(jB);
        }
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    public final boolean isUnbounded() {
        return this.unbounded;
    }

    public final void produced(long j) {
        if (this.unbounded) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            i50.a(this.missedProduced, j);
            drain();
            return;
        }
        long j2 = this.requested;
        if (j2 != Long.MAX_VALUE) {
            long j3 = j2 - j;
            if (j3 < 0) {
                SubscriptionHelper.reportMoreProduced(j3);
                j3 = 0;
            }
            this.requested = j3;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        drainLoop();
    }

    @Override
    public final void request(long j) {
        if (!SubscriptionHelper.validate(j) || this.unbounded) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            i50.a(this.missedRequested, j);
            drain();
            return;
        }
        long j2 = this.requested;
        if (j2 != Long.MAX_VALUE) {
            long jB = i50.b(j2, j);
            this.requested = jB;
            if (jB == Long.MAX_VALUE) {
                this.unbounded = true;
            }
        }
        f2a f2aVar = this.actual;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (f2aVar != null) {
            f2aVar.request(j);
        }
    }

    public final void setSubscription(f2a f2aVar) {
        if (this.cancelled) {
            f2aVar.cancel();
            return;
        }
        ac7.d(f2aVar, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            f2a andSet = this.missedSubscription.getAndSet(f2aVar);
            if (andSet != null && this.cancelOnReplace) {
                andSet.cancel();
            }
            drain();
            return;
        }
        f2a f2aVar2 = this.actual;
        if (f2aVar2 != null && this.cancelOnReplace) {
            f2aVar2.cancel();
        }
        this.actual = f2aVar;
        long j = this.requested;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (j != 0) {
            f2aVar.request(j);
        }
    }
}
