package kotlinx.coroutines.sync;

import defpackage.cr0;
import defpackage.du0;
import defpackage.ie1;
import defpackage.jgc;
import defpackage.oa9;
import defpackage.pa9;
import defpackage.u3;
import defpackage.u74;
import defpackage.wb9;
import defpackage.xa9;
import defpackage.xb9;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.d;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;

public class SemaphoreAndMutexImpl {
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");
    public static final AtomicLongFieldUpdater d = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");
    public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");
    public static final AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    private volatile int _availablePermits$volatile;
    public final int a;
    public final u74 b;
    private volatile long deqIdx$volatile;
    private volatile long enqIdx$volatile;
    private volatile Object head$volatile;
    private volatile Object tail$volatile;

    public SemaphoreAndMutexImpl(int i, int i2) {
        this.a = i;
        if (i <= 0) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i).toString());
        }
        if (i2 < 0 || i2 > i) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i).toString());
        }
        xb9 xb9Var = new xb9(0L, null, 2);
        this.head$volatile = xb9Var;
        this.tail$volatile = xb9Var;
        this._availablePermits$volatile = i - i2;
        this.b = new u74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return SemaphoreAndMutexImpl.o(this.b, (Throwable) obj, (zfb) obj2, (d) obj3);
            }
        };
    }

    public static final zfb o(SemaphoreAndMutexImpl semaphoreAndMutexImpl, Throwable th, zfb zfbVar, d dVar) {
        semaphoreAndMutexImpl.p();
        return zfb.a;
    }

    public final void e(cr0 cr0Var) {
        while (h() <= 0) {
            y45.h(cr0Var, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (f((jgc) cr0Var)) {
                return;
            }
        }
        cr0Var.resume(zfb.a, this.b);
    }

    public final boolean f(jgc jgcVar) {
        Object objC;
        xb9 xb9Var = (xb9) e.get(this);
        long andIncrement = f.getAndIncrement(this);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
        long j = andIncrement / ((long) wb9.f);
        loop0: while (true) {
            objC = ie1.c(xb9Var, j, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (!pa9.c(objC)) {
                oa9 oa9VarB = pa9.b(objC);
                while (true) {
                    oa9 oa9Var = (oa9) atomicReferenceFieldUpdater.get(this);
                    if (oa9Var.d >= oa9VarB.d) {
                        break loop0;
                    }
                    if (!oa9VarB.u()) {
                        break;
                    }
                    if (u3.a(atomicReferenceFieldUpdater, this, oa9Var, oa9VarB)) {
                        if (!oa9Var.p()) {
                            break loop0;
                        }
                        oa9Var.n();
                        break loop0;
                    }
                    if (oa9VarB.p()) {
                        oa9VarB.n();
                    }
                }
            } else {
                break;
            }
        }
        xb9 xb9Var2 = (xb9) pa9.b(objC);
        int i = (int) (andIncrement % ((long) wb9.f));
        if (du0.a(xb9Var2.v(), i, null, jgcVar)) {
            jgcVar.invokeOnCancellation(xb9Var2, i);
            return true;
        }
        if (!du0.a(xb9Var2.v(), i, wb9.b, wb9.c)) {
            return false;
        }
        if (jgcVar instanceof cr0) {
            y45.h(jgcVar, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((cr0) jgcVar).resume(zfb.a, this.b);
        } else {
            if (!(jgcVar instanceof xa9)) {
                throw new IllegalStateException(("unexpected: " + jgcVar).toString());
            }
            ((xa9) jgcVar).c(zfb.a);
        }
        return true;
    }

    public final void g() {
        int i;
        do {
            i = g.get(this);
            if (i <= this.a) {
                return;
            }
        } while (!g.compareAndSet(this, i, this.a));
    }

    public final int h() {
        int andDecrement;
        do {
            andDecrement = g.getAndDecrement(this);
        } while (andDecrement > this.a);
        return andDecrement;
    }

    public final int i() {
        return Math.max(g.get(this), 0);
    }

    public final void p() {
        do {
            int andIncrement = g.getAndIncrement(this);
            if (andIncrement >= this.a) {
                g();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.a).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!s());
    }

    public final boolean q() {
        while (true) {
            int i = g.get(this);
            if (i > this.a) {
                g();
            } else {
                if (i <= 0) {
                    return false;
                }
                if (g.compareAndSet(this, i, i - 1)) {
                    return true;
                }
            }
        }
    }

    public final boolean r(Object obj) {
        if (!(obj instanceof cr0)) {
            if (obj instanceof xa9) {
                return ((xa9) obj).d(this, zfb.a);
            }
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        cr0 cr0Var = (cr0) obj;
        Object objTryResume = cr0Var.tryResume(zfb.a, null, this.b);
        if (objTryResume == null) {
            return false;
        }
        cr0Var.completeResume(objTryResume);
        return true;
    }

    public final boolean s() {
        Object objC;
        xb9 xb9Var = (xb9) c.get(this);
        long andIncrement = d.getAndIncrement(this);
        long j = andIncrement / ((long) wb9.f);
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
        loop0: while (true) {
            objC = ie1.c(xb9Var, j, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (pa9.c(objC)) {
                break;
            }
            oa9 oa9VarB = pa9.b(objC);
            while (true) {
                oa9 oa9Var = (oa9) atomicReferenceFieldUpdater.get(this);
                if (oa9Var.d >= oa9VarB.d) {
                    break loop0;
                }
                if (!oa9VarB.u()) {
                    break;
                }
                if (u3.a(atomicReferenceFieldUpdater, this, oa9Var, oa9VarB)) {
                    if (!oa9Var.p()) {
                        break loop0;
                    }
                    oa9Var.n();
                    break loop0;
                }
                if (oa9VarB.p()) {
                    oa9VarB.n();
                }
            }
        }
        xb9 xb9Var2 = (xb9) pa9.b(objC);
        xb9Var2.c();
        if (xb9Var2.d > j) {
            return false;
        }
        int i = (int) (andIncrement % ((long) wb9.f));
        Object andSet = xb9Var2.v().getAndSet(i, wb9.b);
        if (andSet != null) {
            if (andSet == wb9.e) {
                return false;
            }
            return r(andSet);
        }
        int i2 = wb9.a;
        for (int i3 = 0; i3 < i2; i3++) {
            if (xb9Var2.v().get(i) == wb9.c) {
                return true;
            }
        }
        return !du0.a(xb9Var2.v(), i, wb9.b, wb9.d);
    }
}
