package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.ne1;
import defpackage.om9;
import defpackage.r14;
import defpackage.re3;
import defpackage.tm8;
import defpackage.x2;
import defpackage.y14;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

public final class FlowableObserveOn extends x2 {
    public final Scheduler d;
    public final boolean e;
    public final int f;

    public static abstract class BaseObserveOnSubscriber<T> extends BasicIntQueueSubscription<T> implements y14, Runnable {
        private static final long serialVersionUID = -8241002408341274697L;
        volatile boolean cancelled;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        final int limit;
        boolean outputFused;
        final int prefetch;
        long produced;
        om9 queue;
        final AtomicLong requested = new AtomicLong();
        int sourceMode;
        f2a upstream;
        final Scheduler.Worker worker;

        public BaseObserveOnSubscriber(Scheduler.Worker worker, boolean z, int i) {
            this.worker = worker;
            this.delayError = z;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override
        public final void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        public final boolean checkTerminated(boolean z, boolean z2, d2a d2aVar) {
            if (this.cancelled) {
                clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.delayError) {
                if (!z2) {
                    return false;
                }
                this.cancelled = true;
                Throwable th = this.error;
                if (th != null) {
                    d2aVar.onError(th);
                } else {
                    d2aVar.onComplete();
                }
                this.worker.dispose();
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.cancelled = true;
                clear();
                d2aVar.onError(th2);
                this.worker.dispose();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.cancelled = true;
            d2aVar.onComplete();
            this.worker.dispose();
            return true;
        }

        @Override
        public final void clear() {
            this.queue.clear();
        }

        @Override
        public final boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            trySchedule();
        }

        @Override
        public final void onError(Throwable th) {
            if (this.done) {
                yw8.s(th);
                return;
            }
            this.error = th;
            this.done = true;
            trySchedule();
        }

        @Override
        public final void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode == 2) {
                trySchedule();
                return;
            }
            if (!this.queue.offer(t)) {
                this.upstream.cancel();
                this.error = new MissingBackpressureException("Queue is full?!");
                this.done = true;
            }
            trySchedule();
        }

        @Override
        public abstract void onSubscribe(f2a f2aVar);

        @Override
        public abstract Object poll() throws Exception;

        @Override
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                i50.a(this.requested, j);
                trySchedule();
            }
        }

        @Override
        public final int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        @Override
        public final void run() {
            if (this.outputFused) {
                runBackfused();
            } else if (this.sourceMode == 1) {
                runSync();
            } else {
                runAsync();
            }
        }

        public abstract void runAsync();

        public abstract void runBackfused();

        public abstract void runSync();

        public final void trySchedule() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.worker.schedule(this);
        }
    }

    public static final class ObserveOnConditionalSubscriber<T> extends BaseObserveOnSubscriber<T> {
        private static final long serialVersionUID = 644624475404284533L;
        long consumed;
        final ne1 downstream;

        public ObserveOnConditionalSubscriber(ne1 ne1Var, Scheduler.Worker worker, boolean z, int i) {
            super(worker, z, i);
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
                this.upstream = f2aVar;
                if (f2aVar instanceof tm8) {
                    tm8 tm8Var = (tm8) f2aVar;
                    int iRequestFusion = tm8Var.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = 1;
                        this.queue = tm8Var;
                        this.done = true;
                        throw null;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = 2;
                        this.queue = tm8Var;
                        throw null;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                throw null;
            }
        }

        @Override
        public T poll() throws Exception {
            T t = (T) this.queue.poll();
            if (t != null && this.sourceMode != 1) {
                long j = this.consumed + 1;
                if (j == this.limit) {
                    this.consumed = 0L;
                    this.upstream.request(j);
                } else {
                    this.consumed = j;
                }
            }
            return t;
        }

        @Override
        public void runAsync() {
            om9 om9Var = this.queue;
            long j = this.produced;
            long j2 = this.consumed;
            int iAddAndGet = 1;
            while (true) {
                long j3 = this.requested.get();
                if (j != j3) {
                    boolean z = this.done;
                    try {
                        boolean z2 = om9Var.poll() == null;
                        if (checkTerminated(z, z2, null)) {
                            return;
                        }
                        if (!z2) {
                            throw null;
                        }
                    } catch (Throwable th) {
                        re3.b(th);
                        this.cancelled = true;
                        this.upstream.cancel();
                        om9Var.clear();
                        throw null;
                    }
                }
                if (j == j3 && checkTerminated(this.done, om9Var.isEmpty(), null)) {
                    return;
                }
                int i = get();
                if (iAddAndGet == i) {
                    this.produced = j;
                    this.consumed = j2;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i;
                }
            }
        }

        @Override
        public void runBackfused() {
            if (!this.cancelled) {
                throw null;
            }
        }

        @Override
        public void runSync() {
            om9 om9Var = this.queue;
            long j = this.produced;
            int iAddAndGet = 1;
            while (j == this.requested.get()) {
                if (this.cancelled) {
                    return;
                }
                if (om9Var.isEmpty()) {
                    this.cancelled = true;
                    throw null;
                }
                int i = get();
                if (iAddAndGet == i) {
                    this.produced = j;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i;
                }
            }
            try {
                Object objPoll = om9Var.poll();
                if (this.cancelled) {
                    return;
                }
                if (objPoll != null) {
                    throw null;
                }
                this.cancelled = true;
                throw null;
            } catch (Throwable th) {
                re3.b(th);
                this.cancelled = true;
                this.upstream.cancel();
                throw null;
            }
        }
    }

    public static final class ObserveOnSubscriber<T> extends BaseObserveOnSubscriber<T> implements y14 {
        private static final long serialVersionUID = -4547113800637756442L;
        final d2a downstream;

        public ObserveOnSubscriber(d2a d2aVar, Scheduler.Worker worker, boolean z, int i) {
            super(worker, z, i);
            this.downstream = d2aVar;
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
                this.upstream = f2aVar;
                if (f2aVar instanceof tm8) {
                    tm8 tm8Var = (tm8) f2aVar;
                    int iRequestFusion = tm8Var.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = 1;
                        this.queue = tm8Var;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = 2;
                        this.queue = tm8Var;
                        this.downstream.onSubscribe(this);
                        f2aVar.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                this.downstream.onSubscribe(this);
                f2aVar.request(this.prefetch);
            }
        }

        @Override
        public T poll() throws Exception {
            T t = (T) this.queue.poll();
            if (t != null && this.sourceMode != 1) {
                long j = this.produced + 1;
                if (j == this.limit) {
                    this.produced = 0L;
                    this.upstream.request(j);
                } else {
                    this.produced = j;
                }
            }
            return t;
        }

        @Override
        public void runAsync() {
            d2a d2aVar = this.downstream;
            om9 om9Var = this.queue;
            long j = this.produced;
            int iAddAndGet = 1;
            while (true) {
                long jAddAndGet = this.requested.get();
                while (j != jAddAndGet) {
                    boolean z = this.done;
                    try {
                        Object objPoll = om9Var.poll();
                        boolean z2 = objPoll == null;
                        if (checkTerminated(z, z2, d2aVar)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        d2aVar.onNext(objPoll);
                        j++;
                        if (j == this.limit) {
                            if (jAddAndGet != Long.MAX_VALUE) {
                                jAddAndGet = this.requested.addAndGet(-j);
                            }
                            this.upstream.request(j);
                            j = 0;
                        }
                    } catch (Throwable th) {
                        re3.b(th);
                        this.cancelled = true;
                        this.upstream.cancel();
                        om9Var.clear();
                        d2aVar.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                if (j == jAddAndGet && checkTerminated(this.done, om9Var.isEmpty(), d2aVar)) {
                    return;
                }
                int i = get();
                if (iAddAndGet == i) {
                    this.produced = j;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i;
                }
            }
        }

        @Override
        public void runBackfused() {
            int iAddAndGet = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                this.downstream.onNext(null);
                if (z) {
                    this.cancelled = true;
                    Throwable th = this.error;
                    if (th != null) {
                        this.downstream.onError(th);
                    } else {
                        this.downstream.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override
        public void runSync() {
            d2a d2aVar = this.downstream;
            om9 om9Var = this.queue;
            long j = this.produced;
            int iAddAndGet = 1;
            while (true) {
                long j2 = this.requested.get();
                while (j != j2) {
                    try {
                        Object objPoll = om9Var.poll();
                        if (this.cancelled) {
                            return;
                        }
                        if (objPoll == null) {
                            this.cancelled = true;
                            d2aVar.onComplete();
                            this.worker.dispose();
                            return;
                        }
                        d2aVar.onNext(objPoll);
                        j++;
                    } catch (Throwable th) {
                        re3.b(th);
                        this.cancelled = true;
                        this.upstream.cancel();
                        d2aVar.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                if (this.cancelled) {
                    return;
                }
                if (om9Var.isEmpty()) {
                    this.cancelled = true;
                    d2aVar.onComplete();
                    this.worker.dispose();
                    return;
                } else {
                    int i = get();
                    if (iAddAndGet == i) {
                        this.produced = j;
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else {
                        iAddAndGet = i;
                    }
                }
            }
        }
    }

    public FlowableObserveOn(r14 r14Var, Scheduler scheduler, boolean z, int i) {
        super(r14Var);
        this.d = scheduler;
        this.e = z;
        this.f = i;
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.p(new ObserveOnSubscriber(d2aVar, this.d.b(), this.e, this.f));
    }
}
