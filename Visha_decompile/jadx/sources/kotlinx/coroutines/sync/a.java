package kotlinx.coroutines.sync;

import defpackage.cr0;
import defpackage.e74;
import defpackage.fr0;
import defpackage.jgc;
import defpackage.nw6;
import defpackage.oa9;
import defpackage.pt1;
import defpackage.qt1;
import defpackage.sw6;
import defpackage.u3;
import defpackage.u74;
import defpackage.wh1;
import defpackage.xa9;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.c;
import kotlinx.coroutines.sync.a;

public class a extends SemaphoreAndMutexImpl implements nw6 {
    public static final AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "owner$volatile");
    public final u74 h;
    private volatile Object owner$volatile;

    public final class C0416a implements cr0, jgc {
        public final CancellableContinuationImpl b;
        public final Object c;

        public C0416a(CancellableContinuationImpl cancellableContinuationImpl, Object obj) {
            this.b = cancellableContinuationImpl;
            this.c = obj;
        }

        public static final zfb d(a aVar, C0416a c0416a, Throwable th) {
            aVar.b(c0416a.c);
            return zfb.a;
        }

        public static final zfb g(a aVar, C0416a c0416a, Throwable th, zfb zfbVar, d dVar) {
            a.w().set(aVar, c0416a.c);
            aVar.b(c0416a.c);
            return zfb.a;
        }

        @Override
        public void resume(zfb zfbVar, u74 u74Var) {
            a.w().set(a.this, this.c);
            CancellableContinuationImpl cancellableContinuationImpl = this.b;
            final a aVar = a.this;
            cancellableContinuationImpl.resume(zfbVar, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return a.C0416a.d(aVar, this, (Throwable) obj);
                }
            });
        }

        @Override
        public boolean cancel(Throwable th) {
            return this.b.cancel(th);
        }

        @Override
        public void completeResume(Object obj) {
            this.b.completeResume(obj);
        }

        @Override
        public void resumeUndispatched(c cVar, zfb zfbVar) {
            this.b.resumeUndispatched(cVar, zfbVar);
        }

        @Override
        public Object tryResume(zfb zfbVar, Object obj, u74 u74Var) {
            final a aVar = a.this;
            Object objTryResume = this.b.tryResume(zfbVar, obj, new u74() {
                @Override
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return a.C0416a.g(aVar, this, (Throwable) obj2, (zfb) obj3, (d) obj4);
                }
            });
            if (objTryResume != null) {
                a.w().set(a.this, this.c);
            }
            return objTryResume;
        }

        @Override
        public d getContext() {
            return this.b.getContext();
        }

        @Override
        public void invokeOnCancellation(e74 e74Var) {
            this.b.invokeOnCancellation(e74Var);
        }

        @Override
        public boolean isActive() {
            return this.b.isActive();
        }

        @Override
        public boolean isCompleted() {
            return this.b.isCompleted();
        }

        @Override
        public void resumeWith(Object obj) {
            this.b.resumeWith(obj);
        }

        @Override
        public Object tryResumeWithException(Throwable th) {
            return this.b.tryResumeWithException(th);
        }

        @Override
        public void invokeOnCancellation(oa9 oa9Var, int i) {
            this.b.invokeOnCancellation(oa9Var, i);
        }
    }

    public a(boolean z) {
        super(1, z ? 1 : 0);
        this.owner$volatile = z ? null : sw6.a;
        this.h = new u74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return a.B(this.b, (xa9) obj, obj2, obj3);
            }
        };
    }

    public static final u74 B(final a aVar, xa9 xa9Var, final Object obj, Object obj2) {
        return new u74() {
            @Override
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return a.C(this.b, obj, (Throwable) obj3, obj4, (d) obj5);
            }
        };
    }

    public static final zfb C(a aVar, Object obj, Throwable th, Object obj2, d dVar) {
        aVar.b(obj);
        return zfb.a;
    }

    public static final AtomicReferenceFieldUpdater w() {
        return i;
    }

    public static Object z(a aVar, Object obj, wh1 wh1Var) {
        Object objA;
        return (!aVar.a(obj) && (objA = aVar.A(obj, wh1Var)) == z45.f()) ? objA : zfb.a;
    }

    public final Object A(Object obj, wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImplB = fr0.b(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var));
        try {
            e(new C0416a(cancellableContinuationImplB, obj));
            Object result = cancellableContinuationImplB.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        } catch (Throwable th) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    public final int D(Object obj) {
        while (!q()) {
            if (obj == null) {
                return 1;
            }
            int iX = x(obj);
            if (iX == 1) {
                return 2;
            }
            if (iX == 2) {
                return 1;
            }
        }
        i.set(this, obj);
        return 0;
    }

    @Override
    public boolean a(Object obj) {
        int iD = D(obj);
        if (iD == 0) {
            return true;
        }
        if (iD == 1) {
            return false;
        }
        if (iD != 2) {
            throw new IllegalStateException("unexpected");
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    @Override
    public void b(Object obj) {
        while (y()) {
            Object obj2 = i.get(this);
            if (obj2 != sw6.a) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                if (u3.a(i, this, obj2, sw6.a)) {
                    p();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }

    @Override
    public Object c(Object obj, wh1 wh1Var) {
        return z(this, obj, wh1Var);
    }

    public String toString() {
        return "Mutex@" + qt1.b(this) + "[isLocked=" + y() + ",owner=" + i.get(this) + ']';
    }

    public final int x(Object obj) {
        while (y()) {
            Object obj2 = i.get(this);
            if (obj2 != sw6.a) {
                return obj2 == obj ? 1 : 2;
            }
        }
        return 0;
    }

    public boolean y() {
        return i() == 0;
    }
}
