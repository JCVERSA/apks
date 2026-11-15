package io.reactivex.processors;

import defpackage.ac7;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.mv9;
import defpackage.x14;
import defpackage.yw8;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class UnicastProcessor extends x14 {
    public final mv9 c;
    public final AtomicReference d;
    public final boolean e;
    public volatile boolean f;
    public Throwable g;
    public final AtomicReference h;
    public volatile boolean i;
    public final AtomicBoolean j;
    public final BasicIntQueueSubscription k;
    public final AtomicLong l;
    public boolean m;

    public final class UnicastQueueSubscription extends BasicIntQueueSubscription<Object> {
        private static final long serialVersionUID = -4896760517184205454L;

        public UnicastQueueSubscription() {
        }

        @Override
        public void cancel() {
            if (UnicastProcessor.this.i) {
                return;
            }
            UnicastProcessor.this.i = true;
            UnicastProcessor.this.x();
            UnicastProcessor.this.h.lazySet(null);
            if (UnicastProcessor.this.k.getAndIncrement() == 0) {
                UnicastProcessor.this.h.lazySet(null);
                UnicastProcessor unicastProcessor = UnicastProcessor.this;
                if (unicastProcessor.m) {
                    return;
                }
                unicastProcessor.c.clear();
            }
        }

        @Override
        public void clear() {
            UnicastProcessor.this.c.clear();
        }

        @Override
        public boolean isEmpty() {
            return UnicastProcessor.this.c.isEmpty();
        }

        @Override
        public Object poll() {
            return UnicastProcessor.this.c.poll();
        }

        @Override
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                i50.a(UnicastProcessor.this.l, j);
                UnicastProcessor.this.y();
            }
        }

        @Override
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            UnicastProcessor.this.m = true;
            return 2;
        }
    }

    public UnicastProcessor(int i) {
        this(i, null, true);
    }

    public static UnicastProcessor v(int i) {
        return new UnicastProcessor(i);
    }

    public static UnicastProcessor w(int i, Runnable runnable) {
        ac7.d(runnable, "onTerminate");
        return new UnicastProcessor(i, runnable);
    }

    public void A(d2a d2aVar) {
        long j;
        mv9 mv9Var = this.c;
        boolean z = true;
        boolean z2 = !this.e;
        int iAddAndGet = 1;
        while (true) {
            long j2 = this.l.get();
            long j3 = 0;
            while (true) {
                if (j2 == j3) {
                    j = j3;
                    break;
                }
                boolean z3 = this.f;
                Object objPoll = mv9Var.poll();
                boolean z4 = objPoll == null ? z : false;
                j = j3;
                if (u(z2, z3, z4, d2aVar, mv9Var)) {
                    return;
                }
                if (z4) {
                    break;
                }
                d2aVar.onNext(objPoll);
                j3 = 1 + j;
                z = true;
            }
            if (j2 == j3 && u(z2, this.f, mv9Var.isEmpty(), d2aVar, mv9Var)) {
                return;
            }
            if (j != 0 && j2 != Long.MAX_VALUE) {
                this.l.addAndGet(-j);
            }
            iAddAndGet = this.k.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                z = true;
            }
        }
    }

    @Override
    public void onComplete() {
        if (this.f || this.i) {
            return;
        }
        this.f = true;
        x();
        y();
    }

    @Override
    public void onError(Throwable th) {
        ac7.d(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f || this.i) {
            yw8.s(th);
            return;
        }
        this.g = th;
        this.f = true;
        x();
        y();
    }

    @Override
    public void onNext(Object obj) {
        ac7.d(obj, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f || this.i) {
            return;
        }
        this.c.offer(obj);
        y();
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        if (this.f || this.i) {
            f2aVar.cancel();
        } else {
            f2aVar.request(Long.MAX_VALUE);
        }
    }

    @Override
    public void q(d2a d2aVar) {
        if (this.j.get() || !this.j.compareAndSet(false, true)) {
            EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), d2aVar);
            return;
        }
        d2aVar.onSubscribe(this.k);
        this.h.set(d2aVar);
        if (this.i) {
            this.h.lazySet(null);
        } else {
            y();
        }
    }

    public boolean u(boolean z, boolean z2, boolean z3, d2a d2aVar, mv9 mv9Var) {
        if (this.i) {
            mv9Var.clear();
            this.h.lazySet(null);
            return true;
        }
        if (!z2) {
            return false;
        }
        if (z && this.g != null) {
            mv9Var.clear();
            this.h.lazySet(null);
            d2aVar.onError(this.g);
            return true;
        }
        if (!z3) {
            return false;
        }
        Throwable th = this.g;
        this.h.lazySet(null);
        if (th != null) {
            d2aVar.onError(th);
        } else {
            d2aVar.onComplete();
        }
        return true;
    }

    public void x() {
        Runnable runnable = (Runnable) this.d.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }

    public void y() {
        if (this.k.getAndIncrement() != 0) {
            return;
        }
        d2a d2aVar = (d2a) this.h.get();
        int iAddAndGet = 1;
        while (d2aVar == null) {
            iAddAndGet = this.k.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                d2aVar = (d2a) this.h.get();
            }
        }
        if (this.m) {
            z(d2aVar);
        } else {
            A(d2aVar);
        }
    }

    public void z(d2a d2aVar) {
        mv9 mv9Var = this.c;
        boolean z = this.e;
        int iAddAndGet = 1;
        while (!this.i) {
            boolean z2 = this.f;
            if (!z && z2 && this.g != null) {
                mv9Var.clear();
                this.h.lazySet(null);
                d2aVar.onError(this.g);
                return;
            }
            d2aVar.onNext(null);
            if (z2) {
                this.h.lazySet(null);
                Throwable th = this.g;
                if (th != null) {
                    d2aVar.onError(th);
                    return;
                } else {
                    d2aVar.onComplete();
                    return;
                }
            }
            iAddAndGet = this.k.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
        this.h.lazySet(null);
    }

    public UnicastProcessor(int i, Runnable runnable) {
        this(i, runnable, true);
    }

    public UnicastProcessor(int i, Runnable runnable, boolean z) {
        this.c = new mv9(ac7.e(i, "capacityHint"));
        this.d = new AtomicReference(runnable);
        this.e = z;
        this.h = new AtomicReference();
        this.j = new AtomicBoolean();
        this.k = new UnicastQueueSubscription();
        this.l = new AtomicLong();
    }
}
