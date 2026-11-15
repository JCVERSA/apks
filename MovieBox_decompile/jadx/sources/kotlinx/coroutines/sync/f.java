package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.n;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.q;
import kotlinx.coroutines.s2;

public class f extends SemaphoreAndMutexImpl implements kotlinx.coroutines.sync.a {

    private static final AtomicReferenceFieldUpdater f65012i = AtomicReferenceFieldUpdater.newUpdater(f.class, Object.class, "owner$volatile");

    private final Function3 f65013h;
    private volatile Object owner$volatile;

    final class a implements n, s2 {

        public final CancellableContinuationImpl f65014a;

        public final Object f65015b;

        public a(CancellableContinuationImpl cancellableContinuationImpl, Object obj) {
            this.f65014a = cancellableContinuationImpl;
            this.f65015b = obj;
        }

        public static final Unit e(f fVar, a aVar, Throwable th2) {
            fVar.unlock(aVar.f65015b);
            return Unit.f64096a;
        }

        public static final Unit h(f fVar, a aVar, Throwable th2, Unit unit, CoroutineContext coroutineContext) {
            f.y().set(fVar, aVar.f65015b);
            fVar.unlock(aVar.f65015b);
            return Unit.f64096a;
        }

        @Override
        public void resume(Unit unit, Function1 function1) {
            this.f65014a.resume(unit, (Function1<? super Throwable, Unit>) function1);
        }

        @Override
        public boolean cancel(Throwable th2) {
            return this.f65014a.cancel(th2);
        }

        @Override
        public void completeResume(Object obj) {
            this.f65014a.completeResume(obj);
        }

        @Override
        public void resume(Unit unit, Function3 function3) {
            f.y().set(f.this, this.f65015b);
            CancellableContinuationImpl cancellableContinuationImpl = this.f65014a;
            final f fVar = f.this;
            cancellableContinuationImpl.resume(unit, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return f.a.e(fVar, this, (Throwable) obj);
                }
            });
        }

        @Override
        public void resumeUndispatched(i0 i0Var, Unit unit) {
            this.f65014a.resumeUndispatched(i0Var, unit);
        }

        @Override
        public Object tryResume(Unit unit, Object obj, Function3 function3) {
            final f fVar = f.this;
            Object objTryResume = this.f65014a.tryResume(unit, obj, new Function3() {
                @Override
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return f.a.h(fVar, this, (Throwable) obj2, (Unit) obj3, (CoroutineContext) obj4);
                }
            });
            if (objTryResume != null) {
                f.y().set(f.this, this.f65015b);
            }
            return objTryResume;
        }

        @Override
        public CoroutineContext getContext() {
            return this.f65014a.getContext();
        }

        @Override
        public void invokeOnCancellation(Function1 function1) {
            this.f65014a.invokeOnCancellation(function1);
        }

        @Override
        public boolean isActive() {
            return this.f65014a.isActive();
        }

        @Override
        public boolean isCompleted() {
            return this.f65014a.isCompleted();
        }

        @Override
        public void resumeWith(Object obj) {
            this.f65014a.resumeWith(obj);
        }

        @Override
        public Object tryResumeWithException(Throwable th2) {
            return this.f65014a.tryResumeWithException(th2);
        }

        @Override
        public void invokeOnCancellation(w wVar, int i10) {
            this.f65014a.invokeOnCancellation(wVar, i10);
        }
    }

    public f(boolean z10) {
        super(1, z10 ? 1 : 0);
        this.owner$volatile = z10 ? null : g.f65017a;
        this.f65013h = new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                f fVar = this.f65005a;
                android.support.v4.media.session.c.a(obj);
                return f.C(fVar, null, obj2, obj3);
            }
        };
    }

    static Object A(f fVar, Object obj, Continuation continuation) {
        if (fVar.b(obj)) {
            return Unit.f64096a;
        }
        Object objB = fVar.B(obj, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f64096a;
    }

    private final Object B(Object obj, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImplB = q.b(IntrinsicsKt.c(continuation));
        try {
            h(new a(cancellableContinuationImplB, obj));
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

    public static final Function3 C(final f fVar, kotlinx.coroutines.selects.f fVar2, final Object obj, Object obj2) {
        return new Function3() {
            @Override
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return f.D(this.f65006a, obj, (Throwable) obj3, obj4, (CoroutineContext) obj5);
            }
        };
    }

    public static final Unit D(f fVar, Object obj, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        fVar.unlock(obj);
        return Unit.f64096a;
    }

    private final int E(Object obj) {
        while (!s()) {
            if (obj == null) {
                return 1;
            }
            int iZ = z(obj);
            if (iZ == 1) {
                return 2;
            }
            if (iZ == 2) {
                return 1;
            }
        }
        f65012i.set(this, obj);
        return 0;
    }

    public static final AtomicReferenceFieldUpdater y() {
        return f65012i;
    }

    private final int z(Object obj) {
        while (d()) {
            Object obj2 = f65012i.get(this);
            if (obj2 != g.f65017a) {
                return obj2 == obj ? 1 : 2;
            }
        }
        return 0;
    }

    @Override
    public boolean b(Object obj) {
        int iE = E(obj);
        if (iE == 0) {
            return true;
        }
        if (iE == 1) {
            return false;
        }
        if (iE != 2) {
            throw new IllegalStateException("unexpected");
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    @Override
    public boolean d() {
        return a() == 0;
    }

    @Override
    public Object f(Object obj, Continuation continuation) {
        return A(this, obj, continuation);
    }

    public String toString() {
        return "Mutex@" + p0.b(this) + "[isLocked=" + d() + ",owner=" + f65012i.get(this) + ']';
    }

    @Override
    public void unlock(Object obj) {
        while (d()) {
            Object obj2 = f65012i.get(this);
            if (obj2 != g.f65017a) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                if (androidx.concurrent.futures.a.a(f65012i, this, obj2, g.f65017a)) {
                    release();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }
}
