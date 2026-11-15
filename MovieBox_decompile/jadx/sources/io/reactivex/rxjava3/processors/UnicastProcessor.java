package io.reactivex.rxjava3.processors;

import i00.c;
import i00.d;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.h;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class UnicastProcessor extends a {

    final h f62567b;

    final AtomicReference f62568c;

    final boolean f62569d;

    volatile boolean f62570e;

    Throwable f62571f;

    volatile boolean f62573h;

    boolean f62577l;

    final AtomicReference f62572g = new AtomicReference();

    final AtomicBoolean f62574i = new AtomicBoolean();

    final BasicIntQueueSubscription f62575j = new UnicastQueueSubscription();

    final AtomicLong f62576k = new AtomicLong();

    final class UnicastQueueSubscription extends BasicIntQueueSubscription<Object> {
        private static final long serialVersionUID = -4896760517184205454L;

        UnicastQueueSubscription() {
        }

        @Override
        public void cancel() {
            if (UnicastProcessor.this.f62573h) {
                return;
            }
            UnicastProcessor.this.f62573h = true;
            UnicastProcessor.this.k();
            UnicastProcessor.this.f62572g.lazySet(null);
            if (UnicastProcessor.this.f62575j.getAndIncrement() == 0) {
                UnicastProcessor.this.f62572g.lazySet(null);
                UnicastProcessor unicastProcessor = UnicastProcessor.this;
                if (unicastProcessor.f62577l) {
                    return;
                }
                unicastProcessor.f62567b.clear();
            }
        }

        @Override
        public void clear() {
            UnicastProcessor.this.f62567b.clear();
        }

        @Override
        public boolean isEmpty() {
            return UnicastProcessor.this.f62567b.isEmpty();
        }

        @Override
        public Object poll() {
            return UnicastProcessor.this.f62567b.poll();
        }

        @Override
        public void request(long j10) {
            if (SubscriptionHelper.validate(j10)) {
                io.reactivex.rxjava3.internal.util.a.a(UnicastProcessor.this.f62576k, j10);
                UnicastProcessor.this.l();
            }
        }

        @Override
        public int requestFusion(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            UnicastProcessor.this.f62577l = true;
            return 2;
        }
    }

    UnicastProcessor(int i10, Runnable runnable, boolean z10) {
        this.f62567b = new h(i10);
        this.f62568c = new AtomicReference(runnable);
        this.f62569d = z10;
    }

    public static UnicastProcessor i(int i10, Runnable runnable) {
        return j(i10, runnable, true);
    }

    public static UnicastProcessor j(int i10, Runnable runnable, boolean z10) {
        Objects.requireNonNull(runnable, "onTerminate");
        io.reactivex.rxjava3.internal.functions.a.a(i10, "capacityHint");
        return new UnicastProcessor(i10, runnable, z10);
    }

    @Override
    protected void g(c cVar) {
        if (this.f62574i.get() || !this.f62574i.compareAndSet(false, true)) {
            EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), cVar);
            return;
        }
        cVar.onSubscribe(this.f62575j);
        this.f62572g.set(cVar);
        if (this.f62573h) {
            this.f62572g.lazySet(null);
        } else {
            l();
        }
    }

    boolean h(boolean z10, boolean z11, boolean z12, c cVar, h hVar) {
        if (this.f62573h) {
            hVar.clear();
            this.f62572g.lazySet(null);
            return true;
        }
        if (!z11) {
            return false;
        }
        if (z10 && this.f62571f != null) {
            hVar.clear();
            this.f62572g.lazySet(null);
            cVar.onError(this.f62571f);
            return true;
        }
        if (!z12) {
            return false;
        }
        Throwable th2 = this.f62571f;
        this.f62572g.lazySet(null);
        if (th2 != null) {
            cVar.onError(th2);
        } else {
            cVar.onComplete();
        }
        return true;
    }

    void k() {
        Runnable runnable = (Runnable) this.f62568c.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }

    void l() {
        if (this.f62575j.getAndIncrement() != 0) {
            return;
        }
        c cVar = (c) this.f62572g.get();
        int iAddAndGet = 1;
        while (cVar == null) {
            iAddAndGet = this.f62575j.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                cVar = (c) this.f62572g.get();
            }
        }
        if (this.f62577l) {
            m(cVar);
        } else {
            n(cVar);
        }
    }

    void m(c cVar) {
        h hVar = this.f62567b;
        boolean z10 = this.f62569d;
        int iAddAndGet = 1;
        while (!this.f62573h) {
            boolean z11 = this.f62570e;
            if (!z10 && z11 && this.f62571f != null) {
                hVar.clear();
                this.f62572g.lazySet(null);
                cVar.onError(this.f62571f);
                return;
            }
            cVar.onNext(null);
            if (z11) {
                this.f62572g.lazySet(null);
                Throwable th2 = this.f62571f;
                if (th2 != null) {
                    cVar.onError(th2);
                    return;
                } else {
                    cVar.onComplete();
                    return;
                }
            }
            iAddAndGet = this.f62575j.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
        this.f62572g.lazySet(null);
    }

    void n(c cVar) {
        long j10;
        h hVar = this.f62567b;
        boolean z10 = true;
        boolean z11 = !this.f62569d;
        int iAddAndGet = 1;
        while (true) {
            long j11 = this.f62576k.get();
            long j12 = 0;
            while (true) {
                if (j11 == j12) {
                    j10 = j12;
                    break;
                }
                boolean z12 = this.f62570e;
                Object objPoll = hVar.poll();
                boolean z13 = objPoll == null ? z10 : false;
                j10 = j12;
                if (h(z11, z12, z13, cVar, hVar)) {
                    return;
                }
                if (z13) {
                    break;
                }
                cVar.onNext(objPoll);
                j12 = 1 + j10;
                z10 = true;
            }
            if (j11 == j12 && h(z11, this.f62570e, hVar.isEmpty(), cVar, hVar)) {
                return;
            }
            if (j10 != 0 && j11 != Long.MAX_VALUE) {
                this.f62576k.addAndGet(-j10);
            }
            iAddAndGet = this.f62575j.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                z10 = true;
            }
        }
    }

    @Override
    public void onComplete() {
        if (this.f62570e || this.f62573h) {
            return;
        }
        this.f62570e = true;
        k();
        l();
    }

    @Override
    public void onError(Throwable th2) {
        ExceptionHelper.c(th2, "onError called with a null Throwable.");
        if (this.f62570e || this.f62573h) {
            dy.a.r(th2);
            return;
        }
        this.f62571f = th2;
        this.f62570e = true;
        k();
        l();
    }

    @Override
    public void onNext(Object obj) {
        ExceptionHelper.c(obj, "onNext called with a null value.");
        if (this.f62570e || this.f62573h) {
            return;
        }
        this.f62567b.offer(obj);
        l();
    }

    @Override
    public void onSubscribe(d dVar) {
        if (this.f62570e || this.f62573h) {
            dVar.cancel();
        } else {
            dVar.request(Long.MAX_VALUE);
        }
    }
}
