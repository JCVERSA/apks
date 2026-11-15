package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.i50;
import defpackage.jk8;
import defpackage.mv9;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class FlowableGroupBy$State<T, K> extends BasicIntQueueSubscription<T> implements jk8 {
    private static final long serialVersionUID = -3852313036005250360L;
    final boolean delayError;
    volatile boolean done;
    Throwable error;
    final K key;
    boolean outputFused;
    final FlowableGroupBy$GroupBySubscriber<?, K, T> parent;
    int produced;
    final mv9 queue;
    final AtomicLong requested = new AtomicLong();
    final AtomicBoolean cancelled = new AtomicBoolean();
    final AtomicReference<d2a> actual = new AtomicReference<>();
    final AtomicBoolean once = new AtomicBoolean();

    public FlowableGroupBy$State(int i, FlowableGroupBy$GroupBySubscriber<?, K, T> flowableGroupBy$GroupBySubscriber, K k, boolean z) {
        this.queue = new mv9(i);
        this.parent = flowableGroupBy$GroupBySubscriber;
        this.key = k;
        this.delayError = z;
    }

    @Override
    public void cancel() {
        if (this.cancelled.compareAndSet(false, true)) {
            this.parent.cancel(this.key);
            drain();
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, d2a d2aVar, boolean z3, long j) {
        if (this.cancelled.get()) {
            while (this.queue.poll() != null) {
                j++;
            }
            if (j != 0) {
                this.parent.upstream.request(j);
            }
            return true;
        }
        if (!z) {
            return false;
        }
        if (z3) {
            if (!z2) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                d2aVar.onError(th);
            } else {
                d2aVar.onComplete();
            }
            return true;
        }
        Throwable th2 = this.error;
        if (th2 != null) {
            this.queue.clear();
            d2aVar.onError(th2);
            return true;
        }
        if (!z2) {
            return false;
        }
        d2aVar.onComplete();
        return true;
    }

    @Override
    public void clear() {
        mv9 mv9Var = this.queue;
        while (mv9Var.poll() != null) {
            this.produced++;
        }
        tryReplenish();
    }

    public void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        if (this.outputFused) {
            drainFused();
        } else {
            drainNormal();
        }
    }

    public void drainFused() {
        Throwable th;
        mv9 mv9Var = this.queue;
        d2a d2aVar = this.actual.get();
        int iAddAndGet = 1;
        while (true) {
            if (d2aVar != null) {
                if (this.cancelled.get()) {
                    return;
                }
                boolean z = this.done;
                if (z && !this.delayError && (th = this.error) != null) {
                    mv9Var.clear();
                    d2aVar.onError(th);
                    return;
                }
                d2aVar.onNext(null);
                if (z) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        d2aVar.onError(th2);
                        return;
                    } else {
                        d2aVar.onComplete();
                        return;
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            if (d2aVar == null) {
                d2aVar = this.actual.get();
            }
        }
    }

    public void drainNormal() {
        mv9 mv9Var = this.queue;
        boolean z = this.delayError;
        d2a d2aVar = this.actual.get();
        int iAddAndGet = 1;
        while (true) {
            if (d2aVar != null) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z2 = this.done;
                    Object objPoll = mv9Var.poll();
                    boolean z3 = objPoll == null;
                    long j3 = j2;
                    if (checkTerminated(z2, z3, d2aVar, z, j2)) {
                        return;
                    }
                    if (z3) {
                        j2 = j3;
                        break;
                    } else {
                        d2aVar.onNext(objPoll);
                        j2 = j3 + 1;
                    }
                }
                if (j2 == j) {
                    long j4 = j2;
                    if (checkTerminated(this.done, mv9Var.isEmpty(), d2aVar, z, j2)) {
                        return;
                    } else {
                        j2 = j4;
                    }
                }
                if (j2 != 0) {
                    if (j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                    this.parent.upstream.request(j2);
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            if (d2aVar == null) {
                d2aVar = this.actual.get();
            }
        }
    }

    @Override
    public boolean isEmpty() {
        if (!this.queue.isEmpty()) {
            return false;
        }
        tryReplenish();
        return true;
    }

    public void onComplete() {
        this.done = true;
        drain();
    }

    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    public void onNext(T t) {
        this.queue.offer(t);
        drain();
    }

    @Override
    public T poll() {
        T t = (T) this.queue.poll();
        if (t != null) {
            this.produced++;
            return t;
        }
        tryReplenish();
        return null;
    }

    @Override
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            i50.a(this.requested, j);
            drain();
        }
    }

    @Override
    public int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        this.outputFused = true;
        return 2;
    }

    @Override
    public void subscribe(d2a d2aVar) {
        if (!this.once.compareAndSet(false, true)) {
            EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), d2aVar);
            return;
        }
        d2aVar.onSubscribe(this);
        this.actual.lazySet(d2aVar);
        drain();
    }

    public void tryReplenish() {
        int i = this.produced;
        if (i != 0) {
            this.produced = 0;
            this.parent.upstream.request(i);
        }
    }
}
