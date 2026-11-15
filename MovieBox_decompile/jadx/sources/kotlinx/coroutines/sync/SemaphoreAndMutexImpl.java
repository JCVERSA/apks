package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.n;
import kotlinx.coroutines.q;
import kotlinx.coroutines.s2;

public class SemaphoreAndMutexImpl {

    private static final AtomicReferenceFieldUpdater f64998c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");

    private static final AtomicLongFieldUpdater f64999d = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");

    private static final AtomicReferenceFieldUpdater f65000e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");

    private static final AtomicLongFieldUpdater f65001f = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");

    private static final AtomicIntegerFieldUpdater f65002g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    private volatile int _availablePermits$volatile;

    private final int f65003a;

    private final Function3 f65004b;
    private volatile long deqIdx$volatile;
    private volatile long enqIdx$volatile;
    private volatile Object head$volatile;
    private volatile Object tail$volatile;

    public SemaphoreAndMutexImpl(int i10, int i11) {
        this.f65003a = i10;
        if (i10 <= 0) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i10).toString());
        }
        if (i11 < 0 || i11 > i10) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i10).toString());
        }
        l lVar = new l(0L, null, 2);
        this.head$volatile = lVar;
        this.tail$volatile = lVar;
        this._availablePermits$volatile = i10 - i11;
        this.f65004b = new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return SemaphoreAndMutexImpl.r(this.f65019a, (Throwable) obj, (Unit) obj2, (CoroutineContext) obj3);
            }
        };
    }

    private final Object i(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImplB = q.b(IntrinsicsKt.c(continuation));
        try {
            if (!j(cancellableContinuationImplB)) {
                h(cancellableContinuationImplB);
            }
            Object result = cancellableContinuationImplB.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f64096a;
        } catch (Throwable th2) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th2;
        }
    }

    public final boolean j(s2 s2Var) {
        Object objC;
        l lVar = (l) f65000e.get(this);
        long andIncrement = f65001f.getAndIncrement(this);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f65000e;
        long j10 = andIncrement / ((long) k.f65025f);
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(lVar, j10, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (!x.c(objC)) {
                w wVarB = x.b(objC);
                while (true) {
                    w wVar = (w) atomicReferenceFieldUpdater.get(this);
                    if (wVar.f64918c >= wVarB.f64918c) {
                        break loop0;
                    }
                    if (!wVarB.u()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, wVar, wVarB)) {
                        if (!wVar.p()) {
                            break loop0;
                        }
                        wVar.n();
                        break loop0;
                    }
                    if (wVarB.p()) {
                        wVarB.n();
                    }
                }
            } else {
                break;
            }
        }
        l lVar2 = (l) x.b(objC);
        int i10 = (int) (andIncrement % ((long) k.f65025f));
        if (kotlinx.coroutines.channels.i.a(lVar2.v(), i10, null, s2Var)) {
            s2Var.invokeOnCancellation(lVar2, i10);
            return true;
        }
        if (!kotlinx.coroutines.channels.i.a(lVar2.v(), i10, k.f65021b, k.f65022c)) {
            return false;
        }
        if (s2Var instanceof n) {
            Intrinsics.f(s2Var, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((n) s2Var).resume(Unit.f64096a, this.f65004b);
            return true;
        }
        throw new IllegalStateException(("unexpected: " + s2Var).toString());
    }

    private final void k() {
        int i10;
        do {
            i10 = f65002g.get(this);
            if (i10 <= this.f65003a) {
                return;
            }
        } while (!f65002g.compareAndSet(this, i10, this.f65003a));
    }

    private final int l() {
        int andDecrement;
        do {
            andDecrement = f65002g.getAndDecrement(this);
        } while (andDecrement > this.f65003a);
        return andDecrement;
    }

    public static final Unit r(SemaphoreAndMutexImpl semaphoreAndMutexImpl, Throwable th2, Unit unit, CoroutineContext coroutineContext) {
        semaphoreAndMutexImpl.release();
        return Unit.f64096a;
    }

    private final boolean t(Object obj) {
        if (!(obj instanceof n)) {
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        n nVar = (n) obj;
        Object objTryResume = nVar.tryResume(Unit.f64096a, null, this.f65004b);
        if (objTryResume == null) {
            return false;
        }
        nVar.completeResume(objTryResume);
        return true;
    }

    private final boolean u() {
        Object objC;
        l lVar = (l) f64998c.get(this);
        long andIncrement = f64999d.getAndIncrement(this);
        long j10 = andIncrement / ((long) k.f65025f);
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64998c;
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(lVar, j10, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (x.c(objC)) {
                break;
            }
            w wVarB = x.b(objC);
            while (true) {
                w wVar = (w) atomicReferenceFieldUpdater.get(this);
                if (wVar.f64918c >= wVarB.f64918c) {
                    break loop0;
                }
                if (!wVarB.u()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, wVar, wVarB)) {
                    if (!wVar.p()) {
                        break loop0;
                    }
                    wVar.n();
                    break loop0;
                }
                if (wVarB.p()) {
                    wVarB.n();
                }
            }
        }
        l lVar2 = (l) x.b(objC);
        lVar2.c();
        if (lVar2.f64918c > j10) {
            return false;
        }
        int i10 = (int) (andIncrement % ((long) k.f65025f));
        Object andSet = lVar2.v().getAndSet(i10, k.f65021b);
        if (andSet != null) {
            if (andSet == k.f65024e) {
                return false;
            }
            return t(andSet);
        }
        int i11 = k.f65020a;
        for (int i12 = 0; i12 < i11; i12++) {
            if (lVar2.v().get(i10) == k.f65022c) {
                return true;
            }
        }
        return !kotlinx.coroutines.channels.i.a(lVar2.v(), i10, k.f65021b, k.f65023d);
    }

    public final int a() {
        return Math.max(f65002g.get(this), 0);
    }

    public final Object c(Continuation continuation) {
        if (l() > 0) {
            return Unit.f64096a;
        }
        Object objI = i(continuation);
        return objI == IntrinsicsKt.f() ? objI : Unit.f64096a;
    }

    protected final void h(n nVar) {
        while (l() <= 0) {
            Intrinsics.f(nVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (j((s2) nVar)) {
                return;
            }
        }
        nVar.resume(Unit.f64096a, this.f65004b);
    }

    public final void release() {
        do {
            int andIncrement = f65002g.getAndIncrement(this);
            if (andIncrement >= this.f65003a) {
                k();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f65003a).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!u());
    }

    public final boolean s() {
        while (true) {
            int i10 = f65002g.get(this);
            if (i10 > this.f65003a) {
                k();
            } else {
                if (i10 <= 0) {
                    return false;
                }
                if (f65002g.compareAndSet(this, i10, i10 - 1)) {
                    return true;
                }
            }
        }
    }
}
