package io.reactivex.rxjava3.subjects;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.g;
import io.reactivex.rxjava3.operators.h;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class UnicastSubject extends a {

    final h f62578a;

    final AtomicReference f62580c;

    final boolean f62581d;

    volatile boolean f62582e;

    volatile boolean f62583f;

    Throwable f62584g;

    boolean f62587j;

    final AtomicReference f62579b = new AtomicReference();

    final AtomicBoolean f62585h = new AtomicBoolean();

    final BasicIntQueueDisposable f62586i = new UnicastQueueDisposable();

    final class UnicastQueueDisposable extends BasicIntQueueDisposable<Object> {
        private static final long serialVersionUID = 7926949470189395511L;

        UnicastQueueDisposable() {
        }

        @Override
        public void clear() {
            UnicastSubject.this.f62578a.clear();
        }

        @Override
        public void dispose() {
            if (UnicastSubject.this.f62582e) {
                return;
            }
            UnicastSubject.this.f62582e = true;
            UnicastSubject.this.K();
            UnicastSubject.this.f62579b.lazySet(null);
            if (UnicastSubject.this.f62586i.getAndIncrement() == 0) {
                UnicastSubject.this.f62579b.lazySet(null);
                UnicastSubject unicastSubject = UnicastSubject.this;
                if (unicastSubject.f62587j) {
                    return;
                }
                unicastSubject.f62578a.clear();
            }
        }

        @Override
        public boolean isDisposed() {
            return UnicastSubject.this.f62582e;
        }

        @Override
        public boolean isEmpty() {
            return UnicastSubject.this.f62578a.isEmpty();
        }

        @Override
        public Object poll() {
            return UnicastSubject.this.f62578a.poll();
        }

        @Override
        public int requestFusion(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            UnicastSubject.this.f62587j = true;
            return 2;
        }
    }

    UnicastSubject(int i10, Runnable runnable, boolean z10) {
        this.f62578a = new h(i10);
        this.f62580c = new AtomicReference(runnable);
        this.f62581d = z10;
    }

    public static UnicastSubject J(int i10, Runnable runnable) {
        io.reactivex.rxjava3.internal.functions.a.a(i10, "capacityHint");
        Objects.requireNonNull(runnable, "onTerminate");
        return new UnicastSubject(i10, runnable, true);
    }

    @Override
    protected void D(o oVar) {
        if (this.f62585h.get() || !this.f62585h.compareAndSet(false, true)) {
            EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), oVar);
            return;
        }
        oVar.onSubscribe(this.f62586i);
        this.f62579b.lazySet(oVar);
        if (this.f62582e) {
            this.f62579b.lazySet(null);
        } else {
            L();
        }
    }

    void K() {
        Runnable runnable = (Runnable) this.f62580c.get();
        if (runnable == null || !j0.a(this.f62580c, runnable, null)) {
            return;
        }
        runnable.run();
    }

    void L() {
        if (this.f62586i.getAndIncrement() != 0) {
            return;
        }
        o oVar = (o) this.f62579b.get();
        int iAddAndGet = 1;
        while (oVar == null) {
            iAddAndGet = this.f62586i.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                oVar = (o) this.f62579b.get();
            }
        }
        if (this.f62587j) {
            M(oVar);
        } else {
            N(oVar);
        }
    }

    void M(o oVar) {
        h hVar = this.f62578a;
        boolean z10 = this.f62581d;
        int iAddAndGet = 1;
        while (!this.f62582e) {
            boolean z11 = this.f62583f;
            if (!z10 && z11 && P(hVar, oVar)) {
                return;
            }
            oVar.onNext(null);
            if (z11) {
                O(oVar);
                return;
            } else {
                iAddAndGet = this.f62586i.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }
        this.f62579b.lazySet(null);
    }

    void N(o oVar) {
        h hVar = this.f62578a;
        boolean z10 = this.f62581d;
        boolean z11 = true;
        int iAddAndGet = 1;
        while (!this.f62582e) {
            boolean z12 = this.f62583f;
            Object objPoll = this.f62578a.poll();
            boolean z13 = objPoll == null;
            if (z12) {
                if (!z10 && z11) {
                    if (P(hVar, oVar)) {
                        return;
                    } else {
                        z11 = false;
                    }
                }
                if (z13) {
                    O(oVar);
                    return;
                }
            }
            if (z13) {
                iAddAndGet = this.f62586i.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                oVar.onNext(objPoll);
            }
        }
        this.f62579b.lazySet(null);
        hVar.clear();
    }

    void O(o oVar) {
        this.f62579b.lazySet(null);
        Throwable th2 = this.f62584g;
        if (th2 != null) {
            oVar.onError(th2);
        } else {
            oVar.onComplete();
        }
    }

    boolean P(g gVar, o oVar) {
        Throwable th2 = this.f62584g;
        if (th2 == null) {
            return false;
        }
        this.f62579b.lazySet(null);
        gVar.clear();
        oVar.onError(th2);
        return true;
    }

    @Override
    public void onComplete() {
        if (this.f62583f || this.f62582e) {
            return;
        }
        this.f62583f = true;
        K();
        L();
    }

    @Override
    public void onError(Throwable th2) {
        ExceptionHelper.c(th2, "onError called with a null Throwable.");
        if (this.f62583f || this.f62582e) {
            dy.a.r(th2);
            return;
        }
        this.f62584g = th2;
        this.f62583f = true;
        K();
        L();
    }

    @Override
    public void onNext(Object obj) {
        ExceptionHelper.c(obj, "onNext called with a null value.");
        if (this.f62583f || this.f62582e) {
            return;
        }
        this.f62578a.offer(obj);
        L();
    }

    @Override
    public void onSubscribe(c cVar) {
        if (this.f62583f || this.f62582e) {
            cVar.dispose();
        }
    }
}
