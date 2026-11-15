package io.reactivex.internal.operators.flowable;

import defpackage.ac7;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.mv9;
import defpackage.re3;
import defpackage.t74;
import defpackage.vj4;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class FlowableGroupBy$GroupBySubscriber<T, K, V> extends BasicIntQueueSubscription<vj4> implements y14 {
    static final Object NULL_KEY = new Object();
    private static final long serialVersionUID = -3688291656102519502L;
    final int bufferSize;
    final boolean delayError;
    boolean done;
    final d2a downstream;
    Throwable error;
    final Queue<a> evictedGroups;
    volatile boolean finished;
    final Map<Object, a> groups;
    final t74 keySelector;
    boolean outputFused;
    final mv9 queue;
    f2a upstream;
    final t74 valueSelector;
    final AtomicBoolean cancelled = new AtomicBoolean();
    final AtomicLong requested = new AtomicLong();
    final AtomicInteger groupCount = new AtomicInteger(1);

    public FlowableGroupBy$GroupBySubscriber(d2a d2aVar, t74 t74Var, t74 t74Var2, int i, boolean z, Map<Object, a> map, Queue<a> queue) {
        this.downstream = d2aVar;
        this.keySelector = t74Var;
        this.valueSelector = t74Var2;
        this.bufferSize = i;
        this.delayError = z;
        this.groups = map;
        this.evictedGroups = queue;
        this.queue = new mv9(i);
    }

    private void completeEvictions() {
        if (this.evictedGroups != null) {
            int i = 0;
            while (true) {
                a aVarPoll = this.evictedGroups.poll();
                if (aVarPoll == null) {
                    break;
                }
                aVarPoll.onComplete();
                i++;
            }
            if (i != 0) {
                this.groupCount.addAndGet(-i);
            }
        }
    }

    @Override
    public void cancel() {
        if (this.cancelled.compareAndSet(false, true)) {
            completeEvictions();
            if (this.groupCount.decrementAndGet() == 0) {
                this.upstream.cancel();
            }
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, d2a d2aVar, mv9 mv9Var) {
        if (this.cancelled.get()) {
            mv9Var.clear();
            return true;
        }
        if (this.delayError) {
            if (!z || !z2) {
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
        if (!z) {
            return false;
        }
        Throwable th2 = this.error;
        if (th2 != null) {
            mv9Var.clear();
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
        this.queue.clear();
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
        d2a d2aVar = this.downstream;
        int iAddAndGet = 1;
        while (!this.cancelled.get()) {
            boolean z = this.finished;
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
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    public void drainNormal() {
        mv9 mv9Var = this.queue;
        d2a d2aVar = this.downstream;
        int iAddAndGet = 1;
        do {
            long j = this.requested.get();
            long j2 = 0;
            while (j2 != j) {
                boolean z = this.finished;
                vj4 vj4Var = (vj4) mv9Var.poll();
                boolean z2 = vj4Var == null;
                if (checkTerminated(z, z2, d2aVar, mv9Var)) {
                    return;
                }
                if (z2) {
                    break;
                }
                d2aVar.onNext(vj4Var);
                j2++;
            }
            if (j2 == j && checkTerminated(this.finished, mv9Var.isEmpty(), d2aVar, mv9Var)) {
                return;
            }
            if (j2 != 0) {
                if (j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                this.upstream.request(j2);
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    @Override
    public boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override
    public void onComplete() {
        if (this.done) {
            return;
        }
        Iterator<a> it = this.groups.values().iterator();
        while (it.hasNext()) {
            it.next().onComplete();
        }
        this.groups.clear();
        Queue<a> queue = this.evictedGroups;
        if (queue != null) {
            queue.clear();
        }
        this.done = true;
        this.finished = true;
        drain();
    }

    @Override
    public void onError(Throwable th) {
        if (this.done) {
            yw8.s(th);
            return;
        }
        this.done = true;
        Iterator<a> it = this.groups.values().iterator();
        while (it.hasNext()) {
            it.next().onError(th);
        }
        this.groups.clear();
        Queue<a> queue = this.evictedGroups;
        if (queue != null) {
            queue.clear();
        }
        this.error = th;
        this.finished = true;
        drain();
    }

    @Override
    public void onNext(T t) {
        boolean z;
        if (this.done) {
            return;
        }
        mv9 mv9Var = this.queue;
        try {
            Object objApply = this.keySelector.apply(t);
            Object obj = objApply != null ? objApply : NULL_KEY;
            a aVarU = this.groups.get(obj);
            if (aVarU != null) {
                z = false;
            } else {
                if (this.cancelled.get()) {
                    return;
                }
                aVarU = a.u(objApply, this.bufferSize, this, this.delayError);
                this.groups.put(obj, aVarU);
                this.groupCount.getAndIncrement();
                z = true;
            }
            try {
                aVarU.onNext(ac7.d(this.valueSelector.apply(t), "The valueSelector returned null"));
                completeEvictions();
                if (z) {
                    mv9Var.offer(aVarU);
                    drain();
                }
            } catch (Throwable th) {
                re3.b(th);
                this.upstream.cancel();
                onError(th);
            }
        } catch (Throwable th2) {
            re3.b(th2);
            this.upstream.cancel();
            onError(th2);
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
            this.upstream = f2aVar;
            this.downstream.onSubscribe(this);
            f2aVar.request(this.bufferSize);
        }
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
    public vj4 poll() {
        return (vj4) this.queue.poll();
    }

    public void cancel(K k) {
        if (k == null) {
            k = (K) NULL_KEY;
        }
        this.groups.remove(k);
        if (this.groupCount.decrementAndGet() == 0) {
            this.upstream.cancel();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }
    }
}
