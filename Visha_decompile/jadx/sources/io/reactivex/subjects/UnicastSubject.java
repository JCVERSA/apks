package io.reactivex.subjects;

import defpackage.ac7;
import defpackage.mv9;
import defpackage.om9;
import defpackage.pd7;
import defpackage.r1a;
import defpackage.rc2;
import defpackage.wk5;
import defpackage.yw8;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class UnicastSubject extends r1a {
    public final mv9 b;
    public final AtomicReference c;
    public final AtomicReference d;
    public final boolean e;
    public volatile boolean f;
    public volatile boolean g;
    public Throwable h;
    public final AtomicBoolean i;
    public final BasicIntQueueDisposable j;
    public boolean k;

    public final class UnicastQueueDisposable extends BasicIntQueueDisposable<Object> {
        private static final long serialVersionUID = 7926949470189395511L;

        public UnicastQueueDisposable() {
        }

        @Override
        public void clear() {
            UnicastSubject.this.b.clear();
        }

        @Override
        public void dispose() {
            if (UnicastSubject.this.f) {
                return;
            }
            UnicastSubject.this.f = true;
            UnicastSubject.this.p0();
            UnicastSubject.this.c.lazySet(null);
            if (UnicastSubject.this.j.getAndIncrement() == 0) {
                UnicastSubject.this.c.lazySet(null);
                UnicastSubject unicastSubject = UnicastSubject.this;
                if (unicastSubject.k) {
                    return;
                }
                unicastSubject.b.clear();
            }
        }

        @Override
        public boolean isDisposed() {
            return UnicastSubject.this.f;
        }

        @Override
        public boolean isEmpty() {
            return UnicastSubject.this.b.isEmpty();
        }

        @Override
        public Object poll() throws Exception {
            return UnicastSubject.this.b.poll();
        }

        @Override
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            UnicastSubject.this.k = true;
            return 2;
        }
    }

    public UnicastSubject(int i, boolean z) {
        this.b = new mv9(ac7.e(i, "capacityHint"));
        this.d = new AtomicReference();
        this.e = z;
        this.c = new AtomicReference();
        this.i = new AtomicBoolean();
        this.j = new UnicastQueueDisposable();
    }

    public static UnicastSubject n0(int i) {
        return new UnicastSubject(i, true);
    }

    public static UnicastSubject o0(int i, Runnable runnable) {
        return new UnicastSubject(i, runnable, true);
    }

    @Override
    public void c0(pd7 pd7Var) {
        if (this.i.get() || !this.i.compareAndSet(false, true)) {
            EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), pd7Var);
            return;
        }
        pd7Var.onSubscribe(this.j);
        this.c.lazySet(pd7Var);
        if (this.f) {
            this.c.lazySet(null);
        } else {
            q0();
        }
    }

    @Override
    public void onComplete() {
        if (this.g || this.f) {
            return;
        }
        this.g = true;
        p0();
        q0();
    }

    @Override
    public void onError(Throwable th) {
        ac7.d(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.g || this.f) {
            yw8.s(th);
            return;
        }
        this.h = th;
        this.g = true;
        p0();
        q0();
    }

    @Override
    public void onNext(Object obj) {
        ac7.d(obj, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.g || this.f) {
            return;
        }
        this.b.offer(obj);
        q0();
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (this.g || this.f) {
            rc2Var.dispose();
        }
    }

    public void p0() {
        Runnable runnable = (Runnable) this.d.get();
        if (runnable == null || !wk5.a(this.d, runnable, null)) {
            return;
        }
        runnable.run();
    }

    public void q0() {
        if (this.j.getAndIncrement() != 0) {
            return;
        }
        pd7 pd7Var = (pd7) this.c.get();
        int iAddAndGet = 1;
        while (pd7Var == null) {
            iAddAndGet = this.j.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                pd7Var = (pd7) this.c.get();
            }
        }
        if (this.k) {
            r0(pd7Var);
        } else {
            s0(pd7Var);
        }
    }

    public void r0(pd7 pd7Var) {
        mv9 mv9Var = this.b;
        boolean z = this.e;
        int iAddAndGet = 1;
        while (!this.f) {
            boolean z2 = this.g;
            if (!z && z2 && u0(mv9Var, pd7Var)) {
                return;
            }
            pd7Var.onNext(null);
            if (z2) {
                t0(pd7Var);
                return;
            } else {
                iAddAndGet = this.j.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }
        this.c.lazySet(null);
    }

    public void s0(pd7 pd7Var) {
        mv9 mv9Var = this.b;
        boolean z = this.e;
        boolean z2 = true;
        int iAddAndGet = 1;
        while (!this.f) {
            boolean z3 = this.g;
            Object objPoll = this.b.poll();
            boolean z4 = objPoll == null;
            if (z3) {
                if (!z && z2) {
                    if (u0(mv9Var, pd7Var)) {
                        return;
                    } else {
                        z2 = false;
                    }
                }
                if (z4) {
                    t0(pd7Var);
                    return;
                }
            }
            if (z4) {
                iAddAndGet = this.j.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                pd7Var.onNext(objPoll);
            }
        }
        this.c.lazySet(null);
        mv9Var.clear();
    }

    public void t0(pd7 pd7Var) {
        this.c.lazySet(null);
        Throwable th = this.h;
        if (th != null) {
            pd7Var.onError(th);
        } else {
            pd7Var.onComplete();
        }
    }

    public boolean u0(om9 om9Var, pd7 pd7Var) {
        Throwable th = this.h;
        if (th == null) {
            return false;
        }
        this.c.lazySet(null);
        om9Var.clear();
        pd7Var.onError(th);
        return true;
    }

    public UnicastSubject(int i, Runnable runnable, boolean z) {
        this.b = new mv9(ac7.e(i, "capacityHint"));
        this.d = new AtomicReference(ac7.d(runnable, "onTerminate"));
        this.e = z;
        this.c = new AtomicReference();
        this.i = new AtomicBoolean();
        this.j = new UnicastQueueDisposable();
    }
}
