package kotlinx.coroutines.channels;

import defpackage.bu0;
import defpackage.cr0;
import defpackage.e74;
import defpackage.eu0;
import defpackage.fr0;
import defpackage.i05;
import defpackage.ie1;
import defpackage.je1;
import defpackage.jgc;
import defpackage.kgc;
import defpackage.l1a;
import defpackage.le5;
import defpackage.mk0;
import defpackage.oa9;
import defpackage.pa9;
import defpackage.po8;
import defpackage.ps0;
import defpackage.pt1;
import defpackage.qf7;
import defpackage.s74;
import defpackage.u3;
import defpackage.u74;
import defpackage.ue3;
import defpackage.wh1;
import defpackage.xa9;
import defpackage.xv9;
import defpackage.y45;
import defpackage.y71;
import defpackage.z45;
import defpackage.zfb;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.TrySelectDetailedResult;

public class BufferedChannel implements ps0 {
    public static final AtomicLongFieldUpdater e = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    public static final AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    public static final AtomicLongFieldUpdater g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
    public static final AtomicLongFieldUpdater h = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");
    public static final AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");
    public static final AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
    public static final AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
    public static final AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
    public static final AtomicReferenceFieldUpdater m = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile Object _closeCause$volatile;
    public final int b;
    private volatile long bufferEnd$volatile;
    private volatile Object bufferEndSegment$volatile;
    public final e74 c;
    private volatile Object closeHandler$volatile;
    private volatile long completedExpandBuffersAndPauseFlag$volatile;
    public final u74 d;
    private volatile Object receiveSegment$volatile;
    private volatile long receivers$volatile;
    private volatile Object sendSegment$volatile;
    private volatile long sendersAndCloseStatus$volatile;

    public final class a implements bu0, jgc {
        public Object b = BufferedChannelKt.p;
        public CancellableContinuationImpl c;

        public a() {
        }

        @Override
        public Object a(wh1 wh1Var) throws Throwable {
            boolean zF = true;
            if (this.b == BufferedChannelKt.p || this.b == BufferedChannelKt.z()) {
                BufferedChannel bufferedChannel = BufferedChannel.this;
                eu0 eu0Var = (eu0) BufferedChannel.f0().get(bufferedChannel);
                while (!bufferedChannel.t0()) {
                    long andIncrement = BufferedChannel.g0().getAndIncrement(bufferedChannel);
                    int i = BufferedChannelKt.b;
                    long j = andIncrement / ((long) i);
                    int i2 = (int) (andIncrement % ((long) i));
                    if (eu0Var.d != j) {
                        eu0 eu0VarW = bufferedChannel.W(j, eu0Var);
                        if (eu0VarW == null) {
                            continue;
                        } else {
                            eu0Var = eu0VarW;
                        }
                    }
                    Object objG1 = bufferedChannel.g1(eu0Var, i2, andIncrement, null);
                    if (objG1 == BufferedChannelKt.m) {
                        throw new IllegalStateException("unreachable");
                    }
                    if (objG1 == BufferedChannelKt.o) {
                        if (andIncrement < bufferedChannel.l0()) {
                            eu0Var.c();
                        }
                    } else {
                        if (objG1 == BufferedChannelKt.n) {
                            return e(eu0Var, i2, andIncrement, wh1Var);
                        }
                        eu0Var.c();
                        this.b = objG1;
                    }
                }
                zF = f();
            }
            return mk0.a(zF);
        }

        public final Object e(eu0 eu0Var, int i, long j, wh1 wh1Var) {
            Boolean boolA;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            CancellableContinuationImpl cancellableContinuationImplB = fr0.b(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var));
            try {
                this.c = cancellableContinuationImplB;
                Object objG1 = bufferedChannel.g1(eu0Var, i, j, this);
                if (objG1 != BufferedChannelKt.m) {
                    u74 u74VarH = null;
                    if (objG1 == BufferedChannelKt.o) {
                        if (j < bufferedChannel.l0()) {
                            eu0Var.c();
                        }
                        eu0 eu0Var2 = (eu0) BufferedChannel.f0().get(bufferedChannel);
                        while (true) {
                            if (bufferedChannel.t0()) {
                                g();
                                break;
                            }
                            long andIncrement = BufferedChannel.g0().getAndIncrement(bufferedChannel);
                            int i2 = BufferedChannelKt.b;
                            long j2 = andIncrement / ((long) i2);
                            int i3 = (int) (andIncrement % ((long) i2));
                            if (eu0Var2.d != j2) {
                                eu0 eu0VarW = bufferedChannel.W(j2, eu0Var2);
                                if (eu0VarW != null) {
                                    eu0Var2 = eu0VarW;
                                }
                            }
                            Object objG2 = bufferedChannel.g1(eu0Var2, i3, andIncrement, this);
                            if (objG2 == BufferedChannelKt.m) {
                                bufferedChannel.O0(this, eu0Var2, i3);
                                break;
                            }
                            if (objG2 == BufferedChannelKt.o) {
                                if (andIncrement < bufferedChannel.l0()) {
                                    eu0Var2.c();
                                }
                            } else {
                                if (objG2 == BufferedChannelKt.n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                eu0Var2.c();
                                this.b = objG2;
                                this.c = null;
                                boolA = mk0.a(true);
                                e74 e74Var = bufferedChannel.c;
                                if (e74Var != null) {
                                    u74VarH = bufferedChannel.H(e74Var, objG2);
                                }
                            }
                        }
                    } else {
                        eu0Var.c();
                        this.b = objG1;
                        this.c = null;
                        boolA = mk0.a(true);
                        e74 e74Var2 = bufferedChannel.c;
                        if (e74Var2 != null) {
                            u74VarH = bufferedChannel.H(e74Var2, objG1);
                        }
                    }
                    cancellableContinuationImplB.resume(boolA, u74VarH);
                    break;
                }
                bufferedChannel.O0(this, eu0Var, i);
                Object result = cancellableContinuationImplB.getResult();
                if (result == z45.f()) {
                    pt1.c(wh1Var);
                }
                return result;
            } catch (Throwable th) {
                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th;
            }
        }

        public final boolean f() throws Throwable {
            this.b = BufferedChannelKt.z();
            Throwable thB0 = BufferedChannel.this.b0();
            if (thB0 == null) {
                return false;
            }
            throw xv9.a(thB0);
        }

        public final void g() {
            CancellableContinuationImpl cancellableContinuationImpl = this.c;
            y45.g(cancellableContinuationImpl);
            this.c = null;
            this.b = BufferedChannelKt.z();
            Throwable thB0 = BufferedChannel.this.b0();
            if (thB0 == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(c.a(thB0)));
            }
        }

        public final boolean h(Object obj) {
            CancellableContinuationImpl cancellableContinuationImpl = this.c;
            y45.g(cancellableContinuationImpl);
            this.c = null;
            this.b = obj;
            Boolean bool = Boolean.TRUE;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            e74 e74Var = bufferedChannel.c;
            return BufferedChannelKt.B(cancellableContinuationImpl, bool, e74Var != null ? bufferedChannel.H(e74Var, obj) : null);
        }

        public final void i() {
            CancellableContinuationImpl cancellableContinuationImpl = this.c;
            y45.g(cancellableContinuationImpl);
            this.c = null;
            this.b = BufferedChannelKt.z();
            Throwable thB0 = BufferedChannel.this.b0();
            if (thB0 == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(c.a(thB0)));
            }
        }

        @Override
        public void invokeOnCancellation(oa9 oa9Var, int i) {
            CancellableContinuationImpl cancellableContinuationImpl = this.c;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(oa9Var, i);
            }
        }

        @Override
        public Object next() throws Throwable {
            Object obj = this.b;
            if (obj == BufferedChannelKt.p) {
                throw new IllegalStateException("`hasNext()` has not been invoked");
            }
            this.b = BufferedChannelKt.p;
            if (obj != BufferedChannelKt.z()) {
                return obj;
            }
            throw xv9.a(BufferedChannel.this.e0());
        }
    }

    public BufferedChannel(int i2, e74 e74Var) {
        this.b = i2;
        this.c = e74Var;
        if (i2 < 0) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i2 + ", should be >=0").toString());
        }
        this.bufferEnd$volatile = BufferedChannelKt.A(i2);
        this.completedExpandBuffersAndPauseFlag$volatile = Z();
        eu0 eu0Var = new eu0(0L, null, this, 3);
        this.sendSegment$volatile = eu0Var;
        this.receiveSegment$volatile = eu0Var;
        if (x0()) {
            eu0Var = BufferedChannelKt.a;
            y45.h(eu0Var, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = eu0Var;
        this.d = e74Var != null ? new u74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return BufferedChannel.M0(this.b, (xa9) obj, obj2, obj3);
            }
        } : null;
        this._closeCause$volatile = BufferedChannelKt.s;
    }

    public static final zfb J(e74 e74Var, Object obj, Throwable th, Object obj2, d dVar) throws IllegalAccessException, InvocationTargetException {
        qf7.a(e74Var, obj, dVar);
        return zfb.a;
    }

    public static final u74 M0(final BufferedChannel bufferedChannel, final xa9 xa9Var, Object obj, final Object obj2) {
        return new u74() {
            @Override
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return BufferedChannel.N0(obj2, bufferedChannel, xa9Var, (Throwable) obj3, obj4, (d) obj5);
            }
        };
    }

    public static final zfb N0(Object obj, BufferedChannel bufferedChannel, xa9 xa9Var, Throwable th, Object obj2, d dVar) throws IllegalAccessException, InvocationTargetException {
        if (obj != BufferedChannelKt.z()) {
            qf7.a(bufferedChannel.c, obj, xa9Var.getContext());
        }
        return zfb.a;
    }

    public static Object Q0(BufferedChannel bufferedChannel, wh1 wh1Var) throws Throwable {
        eu0 eu0Var = (eu0) f0().get(bufferedChannel);
        while (!bufferedChannel.t0()) {
            long andIncrement = g0().getAndIncrement(bufferedChannel);
            int i2 = BufferedChannelKt.b;
            long j2 = andIncrement / ((long) i2);
            int i3 = (int) (andIncrement % ((long) i2));
            if (eu0Var.d != j2) {
                eu0 eu0VarW = bufferedChannel.W(j2, eu0Var);
                if (eu0VarW == null) {
                    continue;
                } else {
                    eu0Var = eu0VarW;
                }
            }
            Object objG1 = bufferedChannel.g1(eu0Var, i3, andIncrement, null);
            if (objG1 == BufferedChannelKt.m) {
                throw new IllegalStateException("unexpected");
            }
            if (objG1 != BufferedChannelKt.o) {
                if (objG1 == BufferedChannelKt.n) {
                    return bufferedChannel.T0(eu0Var, i3, andIncrement, wh1Var);
                }
                eu0Var.c();
                return objG1;
            }
            if (andIncrement < bufferedChannel.l0()) {
                eu0Var.c();
            }
        }
        throw xv9.a(bufferedChannel.e0());
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static Object R0(BufferedChannel bufferedChannel, wh1 wh1Var) {
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$1;
        if (wh1Var instanceof BufferedChannel$receiveCatching$1) {
            bufferedChannel$receiveCatching$1 = (BufferedChannel$receiveCatching$1) wh1Var;
            int i2 = bufferedChannel$receiveCatching$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatching$1.label = i2 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, wh1Var);
            }
        } else {
            bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, wh1Var);
        }
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$2 = bufferedChannel$receiveCatching$1;
        Object obj = bufferedChannel$receiveCatching$2.result;
        Object objF = z45.f();
        int i3 = bufferedChannel$receiveCatching$2.label;
        if (i3 != 0) {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            return ((kotlinx.coroutines.channels.a) obj).k();
        }
        c.b(obj);
        eu0 eu0Var = (eu0) f0().get(bufferedChannel);
        while (!bufferedChannel.t0()) {
            long andIncrement = g0().getAndIncrement(bufferedChannel);
            int i4 = BufferedChannelKt.b;
            long j2 = andIncrement / ((long) i4);
            int i5 = (int) (andIncrement % ((long) i4));
            if (eu0Var.d != j2) {
                eu0 eu0VarW = bufferedChannel.W(j2, eu0Var);
                if (eu0VarW == null) {
                    continue;
                } else {
                    eu0Var = eu0VarW;
                }
            }
            Object objG1 = bufferedChannel.g1(eu0Var, i5, andIncrement, null);
            if (objG1 == BufferedChannelKt.m) {
                throw new IllegalStateException("unexpected");
            }
            if (objG1 != BufferedChannelKt.o) {
                if (objG1 != BufferedChannelKt.n) {
                    eu0Var.c();
                    return kotlinx.coroutines.channels.a.b.c(objG1);
                }
                bufferedChannel$receiveCatching$2.label = 1;
                Object objS0 = bufferedChannel.S0(eu0Var, i5, andIncrement, bufferedChannel$receiveCatching$2);
                return objS0 == objF ? objF : objS0;
            }
            if (andIncrement < bufferedChannel.l0()) {
                eu0Var.c();
            }
        }
        return kotlinx.coroutines.channels.a.b.a(bufferedChannel.b0());
    }

    public static Object Y0(BufferedChannel bufferedChannel, Object obj, wh1 wh1Var) throws IllegalAccessException, InvocationTargetException {
        eu0 eu0Var = (eu0) j0().get(bufferedChannel);
        while (true) {
            long andIncrement = k0().getAndIncrement(bufferedChannel);
            long j2 = 1152921504606846975L & andIncrement;
            boolean zV0 = bufferedChannel.v0(andIncrement);
            int i2 = BufferedChannelKt.b;
            long j3 = j2 / ((long) i2);
            int i3 = (int) (j2 % ((long) i2));
            if (eu0Var.d != j3) {
                eu0 eu0VarX = bufferedChannel.X(j3, eu0Var);
                if (eu0VarX != null) {
                    eu0Var = eu0VarX;
                } else if (zV0) {
                    Object objI0 = bufferedChannel.I0(obj, wh1Var);
                    if (objI0 != z45.f()) {
                        break;
                    }
                    return objI0;
                }
            }
            int iI1 = bufferedChannel.i1(eu0Var, i3, obj, j2, null, zV0);
            if (iI1 == 0) {
                eu0Var.c();
                break;
            }
            if (iI1 != 1) {
                if (iI1 == 2) {
                    if (!zV0) {
                        break;
                    }
                    eu0Var.t();
                    Object objI1 = bufferedChannel.I0(obj, wh1Var);
                    if (objI1 != z45.f()) {
                        break;
                    }
                    return objI1;
                }
                if (iI1 == 3) {
                    Object objZ0 = bufferedChannel.Z0(eu0Var, i3, obj, j2, wh1Var);
                    if (objZ0 != z45.f()) {
                        break;
                    }
                    return objZ0;
                }
                if (iI1 == 4) {
                    if (j2 < bufferedChannel.h0()) {
                        eu0Var.c();
                    }
                    Object objI2 = bufferedChannel.I0(obj, wh1Var);
                    if (objI2 != z45.f()) {
                        break;
                    }
                    return objI2;
                }
                if (iI1 == 5) {
                    eu0Var.c();
                }
            } else {
                break;
            }
        }
        return zfb.a;
    }

    public static final AtomicReferenceFieldUpdater f0() {
        return j;
    }

    public static final AtomicLongFieldUpdater g0() {
        return f;
    }

    public static final AtomicReferenceFieldUpdater j0() {
        return i;
    }

    public static final AtomicLongFieldUpdater k0() {
        return e;
    }

    public static void p0(BufferedChannel bufferedChannel, long j2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i2 & 1) != 0) {
            j2 = 1;
        }
        bufferedChannel.o0(j2);
    }

    public final void A0() {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = e;
        do {
            j2 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, BufferedChannelKt.w(1152921504606846975L & j2, 3)));
    }

    public final void B0() {
        long j2;
        long jW;
        AtomicLongFieldUpdater atomicLongFieldUpdater = e;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            int i2 = (int) (j2 >> 60);
            if (i2 == 0) {
                jW = BufferedChannelKt.w(j2 & 1152921504606846975L, 2);
            } else if (i2 != 1) {
                return;
            } else {
                jW = BufferedChannelKt.w(j2 & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, jW));
    }

    public final void C0(long j2, eu0 eu0Var) {
        eu0 eu0Var2;
        eu0 eu0Var3;
        while (eu0Var.d < j2 && (eu0Var3 = (eu0) eu0Var.f()) != null) {
            eu0Var = eu0Var3;
        }
        while (true) {
            if (!eu0Var.k() || (eu0Var2 = (eu0) eu0Var.f()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
                while (true) {
                    oa9 oa9Var = (oa9) atomicReferenceFieldUpdater.get(this);
                    if (oa9Var.d >= eu0Var.d) {
                        return;
                    }
                    if (!eu0Var.u()) {
                        break;
                    }
                    if (u3.a(atomicReferenceFieldUpdater, this, oa9Var, eu0Var)) {
                        if (oa9Var.p()) {
                            oa9Var.n();
                            return;
                        }
                        return;
                    } else if (eu0Var.p()) {
                        eu0Var.n();
                    }
                }
            } else {
                eu0Var = eu0Var2;
            }
        }
    }

    public final void D0(Throwable th, Object obj, d dVar) throws IllegalAccessException, InvocationTargetException {
        e74 e74Var = this.c;
        y45.g(e74Var);
        Object objF = kotlinx.coroutines.channels.a.f(obj);
        y45.g(objF);
        qf7.a(e74Var, objF, dVar);
    }

    public final void E0(Throwable th, Object obj, d dVar) throws IllegalAccessException, InvocationTargetException {
        e74 e74Var = this.c;
        y45.g(e74Var);
        qf7.a(e74Var, obj, dVar);
    }

    public void F0() {
    }

    public final void G0(cr0 cr0Var) {
        Result.Companion companion = Result.INSTANCE;
        cr0Var.resumeWith(Result.m279constructorimpl(kotlinx.coroutines.channels.a.b(kotlinx.coroutines.channels.a.b.a(b0()))));
    }

    public final u74 H(final e74 e74Var, final Object obj) {
        return new u74() {
            @Override
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                return BufferedChannel.J(e74Var, obj, (Throwable) obj2, obj3, (d) obj4);
            }
        };
    }

    public final void H0(cr0 cr0Var) {
        Result.Companion companion = Result.INSTANCE;
        cr0Var.resumeWith(Result.m279constructorimpl(c.a(e0())));
    }

    public final le5 I(e74 e74Var) {
        return new BufferedChannel$bindCancellationFun$2(this);
    }

    public final Object I0(Object obj, wh1 wh1Var) throws IllegalAccessException, InvocationTargetException {
        UndeliveredElementException undeliveredElementExceptionC;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        e74 e74Var = this.c;
        if (e74Var == null || (undeliveredElementExceptionC = qf7.c(e74Var, obj, null, 2, null)) == null) {
            Throwable thI0 = i0();
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(c.a(thI0)));
        } else {
            ue3.a(undeliveredElementExceptionC, i0());
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(c.a(undeliveredElementExceptionC)));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }

    public final void J0(Object obj, cr0 cr0Var) throws IllegalAccessException, InvocationTargetException {
        e74 e74Var = this.c;
        if (e74Var != null) {
            qf7.a(e74Var, obj, cr0Var.getContext());
        }
        Throwable thI0 = i0();
        Result.Companion companion = Result.INSTANCE;
        cr0Var.resumeWith(Result.m279constructorimpl(c.a(thI0)));
    }

    public final le5 K(e74 e74Var) {
        return new BufferedChannel$bindCancellationFunResult$1(this);
    }

    public void K0() {
    }

    public final boolean L(long j2) {
        return j2 < Z() || j2 < h0() + ((long) this.b);
    }

    public void L0() {
    }

    public boolean M(Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return P(th, true);
    }

    public final void N(eu0 eu0Var, long j2) {
        Object objB = i05.b(null, 1, null);
        loop0: while (eu0Var != null) {
            for (int i2 = BufferedChannelKt.b - 1; -1 < i2; i2--) {
                if ((eu0Var.d * ((long) BufferedChannelKt.b)) + ((long) i2) < j2) {
                    break loop0;
                }
                while (true) {
                    Object objB2 = eu0Var.B(i2);
                    if (objB2 != null && objB2 != BufferedChannelKt.e) {
                        if (!(objB2 instanceof kgc)) {
                            if (!(objB2 instanceof jgc)) {
                                break;
                            }
                            if (eu0Var.v(i2, objB2, BufferedChannelKt.z())) {
                                objB = i05.c(objB, objB2);
                                eu0Var.C(i2, true);
                                break;
                            }
                        } else {
                            if (eu0Var.v(i2, objB2, BufferedChannelKt.z())) {
                                objB = i05.c(objB, ((kgc) objB2).a);
                                eu0Var.C(i2, true);
                                break;
                            }
                        }
                    } else {
                        if (eu0Var.v(i2, objB2, BufferedChannelKt.z())) {
                            eu0Var.t();
                            break;
                        }
                    }
                }
            }
            eu0Var = (eu0) eu0Var.h();
        }
        if (objB != null) {
            if (!(objB instanceof ArrayList)) {
                V0((jgc) objB);
                return;
            }
            y45.h(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
            ArrayList arrayList = (ArrayList) objB;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                V0((jgc) arrayList.get(size));
            }
        }
    }

    public final eu0 O() {
        Object obj = k.get(this);
        eu0 eu0Var = (eu0) i.get(this);
        if (eu0Var.d > ((eu0) obj).d) {
            obj = eu0Var;
        }
        eu0 eu0Var2 = (eu0) j.get(this);
        if (eu0Var2.d > ((eu0) obj).d) {
            obj = eu0Var2;
        }
        return (eu0) ie1.b((je1) obj);
    }

    public final void O0(jgc jgcVar, eu0 eu0Var, int i2) {
        L0();
        jgcVar.invokeOnCancellation(eu0Var, i2);
    }

    public boolean P(Throwable th, boolean z) {
        if (z) {
            z0();
        }
        boolean zA = u3.a(l, this, BufferedChannelKt.s, th);
        if (z) {
            A0();
        } else {
            B0();
        }
        S();
        F0();
        if (zA) {
            q0();
        }
        return zA;
    }

    public final void P0(jgc jgcVar, eu0 eu0Var, int i2) {
        jgcVar.invokeOnCancellation(eu0Var, i2 + BufferedChannelKt.b);
    }

    public final void Q(long j2) throws IllegalAccessException, InvocationTargetException {
        U0(R(j2));
    }

    public final eu0 R(long j2) {
        eu0 eu0VarO = O();
        if (w0()) {
            long jY0 = y0(eu0VarO);
            if (jY0 != -1) {
                T(jY0);
            }
        }
        N(eu0VarO, j2);
        return eu0VarO;
    }

    public final void S() {
        j();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object S0(eu0 eu0Var, int i2, long j2, wh1 wh1Var) {
        BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 bufferedChannel$receiveCatchingOnNoWaiterSuspend$1;
        kotlinx.coroutines.channels.a aVarB;
        u74 u74Var;
        if (wh1Var instanceof BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = (BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) wh1Var;
            int i3 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label = i3 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, wh1Var);
            }
        } else {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, wh1Var);
        }
        Object result = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.result;
        Object objF = z45.f();
        int i4 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label;
        if (i4 == 0) {
            c.b(result);
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.L$0 = this;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.L$1 = eu0Var;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.I$0 = i2;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.J$0 = j2;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label = 1;
            CancellableContinuationImpl cancellableContinuationImplB = fr0.b(IntrinsicsKt__IntrinsicsJvmKt.c(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1));
            try {
                y45.h(cancellableContinuationImplB, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$38>>");
                po8 po8Var = new po8(cancellableContinuationImplB);
                Object objG1 = g1(eu0Var, i2, j2, po8Var);
                if (objG1 != BufferedChannelKt.m) {
                    if (objG1 == BufferedChannelKt.o) {
                        if (j2 < l0()) {
                            eu0Var.c();
                        }
                        eu0 eu0Var2 = (eu0) f0().get(this);
                        while (true) {
                            if (t0()) {
                                G0(cancellableContinuationImplB);
                                break;
                            }
                            long andIncrement = g0().getAndIncrement(this);
                            int i5 = BufferedChannelKt.b;
                            long j3 = andIncrement / ((long) i5);
                            int i6 = (int) (andIncrement % ((long) i5));
                            if (eu0Var2.d != j3) {
                                eu0 eu0VarW = W(j3, eu0Var2);
                                if (eu0VarW != null) {
                                    eu0Var2 = eu0VarW;
                                }
                            }
                            Object objG2 = g1(eu0Var2, i6, andIncrement, po8Var);
                            if (objG2 == BufferedChannelKt.m) {
                                O0(po8Var, eu0Var2, i6);
                                break;
                            }
                            if (objG2 == BufferedChannelKt.o) {
                                if (andIncrement < l0()) {
                                    eu0Var2.c();
                                }
                            } else {
                                if (objG2 == BufferedChannelKt.n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                eu0Var2.c();
                                aVarB = kotlinx.coroutines.channels.a.b(kotlinx.coroutines.channels.a.b.c(objG2));
                                e74 e74Var = this.c;
                                u74Var = (u74) (e74Var != null ? K(e74Var) : null);
                            }
                        }
                    } else {
                        eu0Var.c();
                        aVarB = kotlinx.coroutines.channels.a.b(kotlinx.coroutines.channels.a.b.c(objG1));
                        e74 e74Var2 = this.c;
                        u74Var = (u74) (e74Var2 != null ? K(e74Var2) : null);
                    }
                    cancellableContinuationImplB.resume(aVarB, u74Var);
                    break;
                }
                O0(po8Var, eu0Var, i2);
                result = cancellableContinuationImplB.getResult();
                if (result == z45.f()) {
                    pt1.c(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1);
                }
                if (result == objF) {
                    return objF;
                }
            } catch (Throwable th) {
                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th;
            }
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(result);
        }
        return ((kotlinx.coroutines.channels.a) result).k();
    }

    public final void T(long j2) {
        UndeliveredElementException undeliveredElementExceptionC;
        eu0 eu0Var = (eu0) j.get(this);
        while (true) {
            long j3 = f.get(this);
            if (j2 < Math.max(((long) this.b) + j3, Z())) {
                return;
            }
            if (f.compareAndSet(this, j3, j3 + 1)) {
                int i2 = BufferedChannelKt.b;
                long j4 = j3 / ((long) i2);
                int i3 = (int) (j3 % ((long) i2));
                if (eu0Var.d != j4) {
                    eu0 eu0VarW = W(j4, eu0Var);
                    if (eu0VarW == null) {
                        continue;
                    } else {
                        eu0Var = eu0VarW;
                    }
                }
                Object objG1 = g1(eu0Var, i3, j3, null);
                if (objG1 != BufferedChannelKt.o) {
                    eu0Var.c();
                    e74 e74Var = this.c;
                    if (e74Var != null && (undeliveredElementExceptionC = qf7.c(e74Var, objG1, null, 2, null)) != null) {
                        throw undeliveredElementExceptionC;
                    }
                } else if (j3 < l0()) {
                    eu0Var.c();
                }
            }
        }
    }

    public final Object T0(eu0 eu0Var, int i2, long j2, wh1 wh1Var) {
        u74 u74Var;
        CancellableContinuationImpl cancellableContinuationImplB = fr0.b(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var));
        try {
            Object objG1 = g1(eu0Var, i2, j2, cancellableContinuationImplB);
            if (objG1 != BufferedChannelKt.m) {
                if (objG1 == BufferedChannelKt.o) {
                    if (j2 < l0()) {
                        eu0Var.c();
                    }
                    eu0 eu0Var2 = (eu0) f0().get(this);
                    while (true) {
                        if (t0()) {
                            H0(cancellableContinuationImplB);
                            break;
                        }
                        long andIncrement = g0().getAndIncrement(this);
                        int i3 = BufferedChannelKt.b;
                        long j3 = andIncrement / ((long) i3);
                        int i4 = (int) (andIncrement % ((long) i3));
                        if (eu0Var2.d != j3) {
                            eu0 eu0VarW = W(j3, eu0Var2);
                            if (eu0VarW != null) {
                                eu0Var2 = eu0VarW;
                            }
                        }
                        objG1 = g1(eu0Var2, i4, andIncrement, cancellableContinuationImplB);
                        if (objG1 == BufferedChannelKt.m) {
                            CancellableContinuationImpl cancellableContinuationImpl = cancellableContinuationImplB != null ? cancellableContinuationImplB : null;
                            if (cancellableContinuationImpl == null) {
                                break;
                            }
                            O0(cancellableContinuationImpl, eu0Var2, i4);
                            break;
                        }
                        if (objG1 == BufferedChannelKt.o) {
                            if (andIncrement < l0()) {
                                eu0Var2.c();
                            }
                        } else {
                            if (objG1 == BufferedChannelKt.n) {
                                throw new IllegalStateException("unexpected");
                            }
                            eu0Var2.c();
                            e74 e74Var = this.c;
                            u74Var = (u74) (e74Var != null ? I(e74Var) : null);
                        }
                    }
                } else {
                    eu0Var.c();
                    e74 e74Var2 = this.c;
                    u74Var = (u74) (e74Var2 != null ? I(e74Var2) : null);
                }
                cancellableContinuationImplB.resume(objG1, u74Var);
                break;
            }
            O0(cancellableContinuationImplB, eu0Var, i2);
            Object result = cancellableContinuationImplB.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result;
        } catch (Throwable th) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    public final void U() {
        if (x0()) {
            return;
        }
        eu0 eu0Var = (eu0) k.get(this);
        while (true) {
            long andIncrement = g.getAndIncrement(this);
            int i2 = BufferedChannelKt.b;
            long j2 = andIncrement / ((long) i2);
            if (l0() <= andIncrement) {
                if (eu0Var.d < j2 && eu0Var.f() != null) {
                    C0(j2, eu0Var);
                }
                p0(this, 0L, 1, null);
                return;
            }
            if (eu0Var.d != j2) {
                eu0 eu0VarV = V(j2, eu0Var, andIncrement);
                if (eu0VarV == null) {
                    continue;
                } else {
                    eu0Var = eu0VarV;
                }
            }
            if (e1(eu0Var, (int) (andIncrement % ((long) i2)), andIncrement)) {
                p0(this, 0L, 1, null);
                return;
            }
            p0(this, 0L, 1, null);
        }
    }

    public final void U0(eu0 eu0Var) throws IllegalAccessException, InvocationTargetException {
        e74 e74Var = this.c;
        UndeliveredElementException undeliveredElementExceptionB = null;
        Object objB = i05.b(null, 1, null);
        loop0: do {
            for (int i2 = BufferedChannelKt.b - 1; -1 < i2; i2--) {
                long j2 = (eu0Var.d * ((long) BufferedChannelKt.b)) + ((long) i2);
                while (true) {
                    Object objB2 = eu0Var.B(i2);
                    if (objB2 == BufferedChannelKt.i) {
                        break loop0;
                    }
                    if (objB2 != BufferedChannelKt.d) {
                        if (objB2 != BufferedChannelKt.e && objB2 != null) {
                            if (!(objB2 instanceof jgc) && !(objB2 instanceof kgc)) {
                                if (objB2 != BufferedChannelKt.g && objB2 != BufferedChannelKt.f) {
                                    if (objB2 != BufferedChannelKt.g) {
                                        break;
                                    }
                                } else {
                                    break loop0;
                                }
                            } else {
                                if (j2 < h0()) {
                                    break loop0;
                                }
                                jgc jgcVar = objB2 instanceof kgc ? ((kgc) objB2).a : (jgc) objB2;
                                if (eu0Var.v(i2, objB2, BufferedChannelKt.z())) {
                                    if (e74Var != null) {
                                        undeliveredElementExceptionB = qf7.b(e74Var, eu0Var.A(i2), undeliveredElementExceptionB);
                                    }
                                    objB = i05.c(objB, jgcVar);
                                    eu0Var.w(i2);
                                    eu0Var.t();
                                    break;
                                }
                            }
                        } else {
                            if (eu0Var.v(i2, objB2, BufferedChannelKt.z())) {
                                eu0Var.t();
                                break;
                            }
                        }
                    } else {
                        if (j2 < h0()) {
                            break loop0;
                        }
                        if (eu0Var.v(i2, objB2, BufferedChannelKt.z())) {
                            if (e74Var != null) {
                                undeliveredElementExceptionB = qf7.b(e74Var, eu0Var.A(i2), undeliveredElementExceptionB);
                            }
                            eu0Var.w(i2);
                            eu0Var.t();
                            break;
                        }
                    }
                }
            }
            eu0Var = (eu0) eu0Var.h();
        } while (eu0Var != null);
        if (objB != null) {
            if (objB instanceof ArrayList) {
                y45.h(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
                ArrayList arrayList = (ArrayList) objB;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    W0((jgc) arrayList.get(size));
                }
            } else {
                W0((jgc) objB);
            }
        }
        if (undeliveredElementExceptionB != null) {
            throw undeliveredElementExceptionB;
        }
    }

    public final eu0 V(long j2, eu0 eu0Var, long j3) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
        s74 s74Var = (s74) BufferedChannelKt.y();
        loop0: while (true) {
            objC = ie1.c(eu0Var, j2, s74Var);
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
        if (pa9.c(objC)) {
            S();
            C0(j2, eu0Var);
            p0(this, 0L, 1, null);
            return null;
        }
        eu0 eu0Var2 = (eu0) pa9.b(objC);
        if (eu0Var2.d <= j2) {
            return eu0Var2;
        }
        long j4 = eu0Var2.d;
        int i2 = BufferedChannelKt.b;
        if (g.compareAndSet(this, j3 + 1, j4 * ((long) i2))) {
            o0((eu0Var2.d * ((long) i2)) - j3);
            return null;
        }
        p0(this, 0L, 1, null);
        return null;
    }

    public final void V0(jgc jgcVar) {
        X0(jgcVar, true);
    }

    public final eu0 W(long j2, eu0 eu0Var) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
        s74 s74Var = (s74) BufferedChannelKt.y();
        loop0: while (true) {
            objC = ie1.c(eu0Var, j2, s74Var);
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
        if (pa9.c(objC)) {
            S();
            if (eu0Var.d * ((long) BufferedChannelKt.b) >= l0()) {
                return null;
            }
            eu0Var.c();
            return null;
        }
        eu0 eu0Var2 = (eu0) pa9.b(objC);
        if (!x0() && j2 <= Z() / ((long) BufferedChannelKt.b)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = k;
            while (true) {
                oa9 oa9Var2 = (oa9) atomicReferenceFieldUpdater2.get(this);
                if (oa9Var2.d >= eu0Var2.d || !eu0Var2.u()) {
                    break;
                }
                if (u3.a(atomicReferenceFieldUpdater2, this, oa9Var2, eu0Var2)) {
                    if (!oa9Var2.p()) {
                        break;
                    }
                    oa9Var2.n();
                    break;
                }
                if (eu0Var2.p()) {
                    eu0Var2.n();
                }
            }
        }
        long j3 = eu0Var2.d;
        if (j3 <= j2) {
            return eu0Var2;
        }
        int i2 = BufferedChannelKt.b;
        k1(j3 * ((long) i2));
        if (eu0Var2.d * ((long) i2) >= l0()) {
            return null;
        }
        eu0Var2.c();
        return null;
    }

    public final void W0(jgc jgcVar) {
        X0(jgcVar, false);
    }

    public final eu0 X(long j2, eu0 eu0Var) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
        s74 s74Var = (s74) BufferedChannelKt.y();
        loop0: while (true) {
            objC = ie1.c(eu0Var, j2, s74Var);
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
        if (pa9.c(objC)) {
            S();
            if (eu0Var.d * ((long) BufferedChannelKt.b) >= h0()) {
                return null;
            }
            eu0Var.c();
            return null;
        }
        eu0 eu0Var2 = (eu0) pa9.b(objC);
        long j3 = eu0Var2.d;
        if (j3 <= j2) {
            return eu0Var2;
        }
        int i2 = BufferedChannelKt.b;
        l1(j3 * ((long) i2));
        if (eu0Var2.d * ((long) i2) >= h0()) {
            return null;
        }
        eu0Var2.c();
        return null;
    }

    public final void X0(jgc jgcVar, boolean z) {
        if (jgcVar instanceof cr0) {
            wh1 wh1Var = (wh1) jgcVar;
            Result.Companion companion = Result.INSTANCE;
            wh1Var.resumeWith(Result.m279constructorimpl(c.a(z ? e0() : i0())));
        } else if (jgcVar instanceof po8) {
            CancellableContinuationImpl cancellableContinuationImpl = ((po8) jgcVar).b;
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(kotlinx.coroutines.channels.a.b(kotlinx.coroutines.channels.a.b.a(b0()))));
        } else if (jgcVar instanceof a) {
            ((a) jgcVar).i();
        } else {
            if (jgcVar instanceof xa9) {
                ((xa9) jgcVar).d(this, BufferedChannelKt.z());
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + jgcVar).toString());
        }
    }

    public final long Z() {
        return g.get(this);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0112  */
    /* JADX WARN: Code duplicated, block: B:64:0x011b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:0x011c  */
    public final Object Z0(eu0 eu0Var, int i2, Object obj, long j2, wh1 wh1Var) {
        Object objM279constructorimpl;
        Object result;
        eu0 eu0Var2;
        CancellableContinuationImpl cancellableContinuationImplB = fr0.b(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var));
        try {
            int iI1 = i1(eu0Var, i2, obj, j2, cancellableContinuationImplB, false);
            if (iI1 == 0) {
                eu0Var.c();
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(zfb.a);
            } else {
                if (iI1 != 1) {
                    if (iI1 != 2) {
                        if (iI1 != 4) {
                            if (iI1 != 5) {
                                throw new IllegalStateException("unexpected");
                            }
                            eu0Var.c();
                            eu0 eu0Var3 = (eu0) j0().get(this);
                            while (true) {
                                long andIncrement = k0().getAndIncrement(this);
                                long j3 = andIncrement & 1152921504606846975L;
                                boolean zV0 = v0(andIncrement);
                                int i3 = BufferedChannelKt.b;
                                long j4 = j3 / ((long) i3);
                                int i4 = (int) (j3 % ((long) i3));
                                if (eu0Var3.d != j4) {
                                    eu0 eu0VarX = X(j4, eu0Var3);
                                    if (eu0VarX != null) {
                                        eu0Var2 = eu0VarX;
                                    } else if (zV0) {
                                    }
                                } else {
                                    eu0Var2 = eu0Var3;
                                }
                                eu0 eu0Var4 = eu0Var2;
                                int iI2 = i1(eu0Var2, i4, obj, j3, cancellableContinuationImplB, zV0);
                                if (iI2 == 0) {
                                    eu0Var4.c();
                                    Result.Companion companion2 = Result.INSTANCE;
                                    objM279constructorimpl = Result.m279constructorimpl(zfb.a);
                                } else if (iI2 == 1) {
                                    Result.Companion companion3 = Result.INSTANCE;
                                    objM279constructorimpl = Result.m279constructorimpl(zfb.a);
                                } else if (iI2 == 2) {
                                    if (!zV0) {
                                        CancellableContinuationImpl cancellableContinuationImpl = cancellableContinuationImplB != null ? cancellableContinuationImplB : null;
                                        if (cancellableContinuationImpl == null) {
                                            break;
                                        }
                                        P0(cancellableContinuationImpl, eu0Var4, i4);
                                        break;
                                    }
                                    eu0Var4.t();
                                } else {
                                    if (iI2 == 3) {
                                        throw new IllegalStateException("unexpected");
                                    }
                                    if (iI2 != 4) {
                                        if (iI2 == 5) {
                                            eu0Var4.c();
                                        }
                                        eu0Var3 = eu0Var4;
                                    } else if (j3 < h0()) {
                                        eu0Var4.c();
                                    }
                                }
                            }
                        } else if (j2 < h0()) {
                            eu0Var.c();
                        }
                        J0(obj, cancellableContinuationImplB);
                        break;
                    } else {
                        P0(cancellableContinuationImplB, eu0Var, i2);
                    }
                    result = cancellableContinuationImplB.getResult();
                    if (result == z45.f()) {
                        pt1.c(wh1Var);
                    }
                    if (result == z45.f()) {
                        return result;
                    }
                    return zfb.a;
                }
                Result.Companion companion4 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(zfb.a);
            }
            cancellableContinuationImplB.resumeWith(objM279constructorimpl);
            result = cancellableContinuationImplB.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            if (result == z45.f()) {
                return result;
            }
            return zfb.a;
        } catch (Throwable th) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    @Override
    public void a(e74 e74Var) {
        if (u3.a(m, this, null, e74Var)) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != BufferedChannelKt.q) {
                if (obj == BufferedChannelKt.r) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked");
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!u3.a(m, this, BufferedChannelKt.q, BufferedChannelKt.r));
        e74Var.invoke(b0());
    }

    public final boolean a1(long j2) {
        if (v0(j2)) {
            return false;
        }
        return !L(j2 & 1152921504606846975L);
    }

    public final Throwable b0() {
        return (Throwable) l.get(this);
    }

    public final boolean b1(Object obj, Object obj2) {
        if (obj instanceof xa9) {
            return ((xa9) obj).d(this, obj2);
        }
        if (obj instanceof po8) {
            y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            CancellableContinuationImpl cancellableContinuationImpl = ((po8) obj).b;
            kotlinx.coroutines.channels.a aVarB = kotlinx.coroutines.channels.a.b(kotlinx.coroutines.channels.a.b.c(obj2));
            e74 e74Var = this.c;
            return BufferedChannelKt.B(cancellableContinuationImpl, aVarB, (u74) (e74Var != null ? K(e74Var) : null));
        }
        if (obj instanceof a) {
            y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).h(obj2);
        }
        if (obj instanceof cr0) {
            y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            cr0 cr0Var = (cr0) obj;
            e74 e74Var2 = this.c;
            return BufferedChannelKt.B(cr0Var, obj2, (u74) (e74Var2 != null ? I(e74Var2) : null));
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    @Override
    public Object c(wh1 wh1Var) {
        return Q0(this, wh1Var);
    }

    public final boolean c1(Object obj, eu0 eu0Var, int i2) {
        if (obj instanceof cr0) {
            y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.C((cr0) obj, zfb.a, null, 2, null);
        }
        if (!(obj instanceof xa9)) {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
        y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        TrySelectDetailedResult trySelectDetailedResultW = ((SelectImplementation) obj).w(this, zfb.a);
        if (trySelectDetailedResultW == TrySelectDetailedResult.REREGISTER) {
            eu0Var.w(i2);
        }
        return trySelectDetailedResultW == TrySelectDetailedResult.SUCCESSFUL;
    }

    @Override
    public final void cancel(CancellationException cancellationException) {
        M(cancellationException);
    }

    public final Object d1(Object obj) {
        eu0 eu0Var;
        Object obj2 = BufferedChannelKt.d;
        eu0 eu0Var2 = (eu0) j0().get(this);
        while (true) {
            long andIncrement = k0().getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zV0 = v0(andIncrement);
            int i2 = BufferedChannelKt.b;
            long j3 = j2 / ((long) i2);
            int i3 = (int) (j2 % ((long) i2));
            if (eu0Var2.d != j3) {
                eu0 eu0VarX = X(j3, eu0Var2);
                if (eu0VarX != null) {
                    eu0Var = eu0VarX;
                } else if (zV0) {
                    return kotlinx.coroutines.channels.a.b.a(i0());
                }
            } else {
                eu0Var = eu0Var2;
            }
            int iI1 = i1(eu0Var, i3, obj, j2, obj2, zV0);
            if (iI1 == 0) {
                eu0Var.c();
                return kotlinx.coroutines.channels.a.b.c(zfb.a);
            }
            if (iI1 == 1) {
                return kotlinx.coroutines.channels.a.b.c(zfb.a);
            }
            if (iI1 == 2) {
                if (zV0) {
                    eu0Var.t();
                    return kotlinx.coroutines.channels.a.b.a(i0());
                }
                jgc jgcVar = obj2 instanceof jgc ? (jgc) obj2 : null;
                if (jgcVar != null) {
                    P0(jgcVar, eu0Var, i3);
                }
                T((eu0Var.d * ((long) i2)) + ((long) i3));
                return kotlinx.coroutines.channels.a.b.c(zfb.a);
            }
            if (iI1 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iI1 == 4) {
                if (j2 < h0()) {
                    eu0Var.c();
                }
                return kotlinx.coroutines.channels.a.b.a(i0());
            }
            if (iI1 == 5) {
                eu0Var.c();
            }
            eu0Var2 = eu0Var;
        }
    }

    public final Throwable e0() {
        Throwable thB0 = b0();
        return thB0 == null ? new ClosedReceiveChannelException("Channel was closed") : thB0;
    }

    public final boolean e1(eu0 eu0Var, int i2, long j2) {
        Object objB = eu0Var.B(i2);
        if (!(objB instanceof jgc) || j2 < f.get(this) || !eu0Var.v(i2, objB, BufferedChannelKt.g)) {
            return f1(eu0Var, i2, j2);
        }
        if (c1(objB, eu0Var, i2)) {
            eu0Var.F(i2, BufferedChannelKt.d);
            return true;
        }
        eu0Var.F(i2, BufferedChannelKt.j);
        eu0Var.C(i2, false);
        return false;
    }

    @Override
    public Object f(Object obj) {
        eu0 eu0Var;
        if (a1(e.get(this))) {
            return kotlinx.coroutines.channels.a.b.b();
        }
        Object obj2 = BufferedChannelKt.j;
        eu0 eu0Var2 = (eu0) j0().get(this);
        while (true) {
            long andIncrement = k0().getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zV0 = v0(andIncrement);
            int i2 = BufferedChannelKt.b;
            long j3 = j2 / ((long) i2);
            int i3 = (int) (j2 % ((long) i2));
            if (eu0Var2.d != j3) {
                eu0 eu0VarX = X(j3, eu0Var2);
                if (eu0VarX != null) {
                    eu0Var = eu0VarX;
                } else if (zV0) {
                    break;
                }
            } else {
                eu0Var = eu0Var2;
            }
            int iI1 = i1(eu0Var, i3, obj, j2, obj2, zV0);
            if (iI1 == 0) {
                eu0Var.c();
            } else if (iI1 != 1) {
                if (iI1 == 2) {
                    if (zV0) {
                        eu0Var.t();
                        break;
                    }
                    jgc jgcVar = obj2 instanceof jgc ? (jgc) obj2 : null;
                    if (jgcVar != null) {
                        P0(jgcVar, eu0Var, i3);
                    }
                    eu0Var.t();
                    return kotlinx.coroutines.channels.a.b.b();
                }
                if (iI1 == 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (iI1 == 4) {
                    if (j2 >= h0()) {
                        break;
                    }
                    eu0Var.c();
                    break;
                }
                if (iI1 == 5) {
                    eu0Var.c();
                }
                eu0Var2 = eu0Var;
            }
            return kotlinx.coroutines.channels.a.b.c(zfb.a);
        }
        return kotlinx.coroutines.channels.a.b.a(i0());
    }

    public final boolean f1(eu0 eu0Var, int i2, long j2) {
        while (true) {
            Object objB = eu0Var.B(i2);
            if (objB instanceof jgc) {
                if (j2 < f.get(this)) {
                    if (eu0Var.v(i2, objB, new kgc((jgc) objB))) {
                        return true;
                    }
                } else if (eu0Var.v(i2, objB, BufferedChannelKt.g)) {
                    if (c1(objB, eu0Var, i2)) {
                        eu0Var.F(i2, BufferedChannelKt.d);
                        return true;
                    }
                    eu0Var.F(i2, BufferedChannelKt.j);
                    eu0Var.C(i2, false);
                    return false;
                }
            } else {
                if (objB == BufferedChannelKt.j) {
                    return false;
                }
                if (objB == null) {
                    if (eu0Var.v(i2, objB, BufferedChannelKt.e)) {
                        return true;
                    }
                } else {
                    if (objB == BufferedChannelKt.d || objB == BufferedChannelKt.h || objB == BufferedChannelKt.i || objB == BufferedChannelKt.k || objB == BufferedChannelKt.z()) {
                        return true;
                    }
                    if (objB != BufferedChannelKt.f) {
                        throw new IllegalStateException(("Unexpected cell state: " + objB).toString());
                    }
                }
            }
        }
    }

    public final Object g1(eu0 eu0Var, int i2, long j2, Object obj) {
        Object objB = eu0Var.B(i2);
        if (objB == null) {
            if (j2 >= (e.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.n;
                }
                if (eu0Var.v(i2, objB, obj)) {
                    U();
                    return BufferedChannelKt.m;
                }
            }
        } else if (objB == BufferedChannelKt.d && eu0Var.v(i2, objB, BufferedChannelKt.i)) {
            U();
            return eu0Var.D(i2);
        }
        return h1(eu0Var, i2, j2, obj);
    }

    public final long h0() {
        return f.get(this);
    }

    public final Object h1(eu0 eu0Var, int i2, long j2, Object obj) {
        while (true) {
            Object objB = eu0Var.B(i2);
            if (objB == null || objB == BufferedChannelKt.e) {
                if (j2 < (e.get(this) & 1152921504606846975L)) {
                    if (eu0Var.v(i2, objB, BufferedChannelKt.h)) {
                        U();
                        return BufferedChannelKt.o;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.n;
                    }
                    if (eu0Var.v(i2, objB, obj)) {
                        U();
                        return BufferedChannelKt.m;
                    }
                }
            } else {
                if (objB != BufferedChannelKt.d) {
                    if (objB != BufferedChannelKt.j && objB != BufferedChannelKt.h) {
                        if (objB == BufferedChannelKt.z()) {
                            U();
                            return BufferedChannelKt.o;
                        }
                        if (objB != BufferedChannelKt.g && eu0Var.v(i2, objB, BufferedChannelKt.f)) {
                            boolean z = objB instanceof kgc;
                            if (z) {
                                objB = ((kgc) objB).a;
                            }
                            if (c1(objB, eu0Var, i2)) {
                                eu0Var.F(i2, BufferedChannelKt.i);
                                U();
                                return eu0Var.D(i2);
                            }
                            eu0Var.F(i2, BufferedChannelKt.j);
                            eu0Var.C(i2, false);
                            if (z) {
                                U();
                            }
                            return BufferedChannelKt.o;
                        }
                    }
                    return BufferedChannelKt.o;
                }
                if (eu0Var.v(i2, objB, BufferedChannelKt.i)) {
                    U();
                    return eu0Var.D(i2);
                }
            }
        }
    }

    @Override
    public Object i() {
        eu0 eu0Var;
        long j2 = f.get(this);
        long j3 = e.get(this);
        if (u0(j3)) {
            return kotlinx.coroutines.channels.a.b.a(b0());
        }
        if (j2 >= (j3 & 1152921504606846975L)) {
            return kotlinx.coroutines.channels.a.b.b();
        }
        Object obj = BufferedChannelKt.k;
        eu0 eu0Var2 = (eu0) f0().get(this);
        while (!t0()) {
            long andIncrement = g0().getAndIncrement(this);
            int i2 = BufferedChannelKt.b;
            long j4 = andIncrement / ((long) i2);
            int i3 = (int) (andIncrement % ((long) i2));
            if (eu0Var2.d != j4) {
                eu0 eu0VarW = W(j4, eu0Var2);
                if (eu0VarW == null) {
                    continue;
                } else {
                    eu0Var = eu0VarW;
                }
            } else {
                eu0Var = eu0Var2;
            }
            Object objG1 = g1(eu0Var, i3, andIncrement, obj);
            if (objG1 == BufferedChannelKt.m) {
                jgc jgcVar = obj instanceof jgc ? (jgc) obj : null;
                if (jgcVar != null) {
                    O0(jgcVar, eu0Var, i3);
                }
                m1(andIncrement);
                eu0Var.t();
                return kotlinx.coroutines.channels.a.b.b();
            }
            if (objG1 != BufferedChannelKt.o) {
                if (objG1 == BufferedChannelKt.n) {
                    throw new IllegalStateException("unexpected");
                }
                eu0Var.c();
                return kotlinx.coroutines.channels.a.b.c(objG1);
            }
            if (andIncrement < l0()) {
                eu0Var.c();
            }
            eu0Var2 = eu0Var;
        }
        return kotlinx.coroutines.channels.a.b.a(b0());
    }

    public final Throwable i0() {
        Throwable thB0 = b0();
        return thB0 == null ? new ClosedSendChannelException("Channel was closed") : thB0;
    }

    public final int i1(eu0 eu0Var, int i2, Object obj, long j2, Object obj2, boolean z) {
        eu0Var.G(i2, obj);
        if (z) {
            return j1(eu0Var, i2, obj, j2, obj2, z);
        }
        Object objB = eu0Var.B(i2);
        if (objB == null) {
            if (L(j2)) {
                if (eu0Var.v(i2, null, BufferedChannelKt.d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (eu0Var.v(i2, null, obj2)) {
                    return 2;
                }
            }
        } else if (objB instanceof jgc) {
            eu0Var.w(i2);
            if (b1(objB, obj)) {
                eu0Var.F(i2, BufferedChannelKt.i);
                K0();
                return 0;
            }
            if (eu0Var.x(i2, BufferedChannelKt.k) != BufferedChannelKt.k) {
                eu0Var.C(i2, true);
            }
            return 5;
        }
        return j1(eu0Var, i2, obj, j2, obj2, z);
    }

    @Override
    public bu0 iterator() {
        return new a();
    }

    @Override
    public boolean j() {
        return v0(e.get(this));
    }

    public final int j1(eu0 eu0Var, int i2, Object obj, long j2, Object obj2, boolean z) {
        while (true) {
            Object objB = eu0Var.B(i2);
            if (objB == null) {
                if (!L(j2) || z) {
                    if (z) {
                        if (eu0Var.v(i2, null, BufferedChannelKt.j)) {
                            eu0Var.C(i2, false);
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (eu0Var.v(i2, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (eu0Var.v(i2, null, BufferedChannelKt.d)) {
                    return 1;
                }
            } else {
                if (objB != BufferedChannelKt.e) {
                    if (objB == BufferedChannelKt.k) {
                        eu0Var.w(i2);
                        return 5;
                    }
                    if (objB == BufferedChannelKt.h) {
                        eu0Var.w(i2);
                        return 5;
                    }
                    if (objB == BufferedChannelKt.z()) {
                        eu0Var.w(i2);
                        S();
                        return 4;
                    }
                    eu0Var.w(i2);
                    if (objB instanceof kgc) {
                        objB = ((kgc) objB).a;
                    }
                    if (b1(objB, obj)) {
                        eu0Var.F(i2, BufferedChannelKt.i);
                        K0();
                        return 0;
                    }
                    if (eu0Var.x(i2, BufferedChannelKt.k) != BufferedChannelKt.k) {
                        eu0Var.C(i2, true);
                    }
                    return 5;
                }
                if (eu0Var.v(i2, objB, BufferedChannelKt.d)) {
                    return 1;
                }
            }
        }
    }

    @Override
    public Object k(wh1 wh1Var) {
        return R0(this, wh1Var);
    }

    public final void k1(long j2) {
        long j3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f;
        do {
            j3 = atomicLongFieldUpdater.get(this);
            if (j3 >= j2) {
                return;
            }
        } while (!f.compareAndSet(this, j3, j2));
    }

    @Override
    public Object l(Object obj, wh1 wh1Var) {
        return Y0(this, obj, wh1Var);
    }

    public final long l0() {
        return e.get(this) & 1152921504606846975L;
    }

    public final void l1(long j2) {
        long j3;
        long j4;
        AtomicLongFieldUpdater atomicLongFieldUpdater = e;
        do {
            j3 = atomicLongFieldUpdater.get(this);
            j4 = 1152921504606846975L & j3;
            if (j4 >= j2) {
                return;
            }
        } while (!e.compareAndSet(this, j3, BufferedChannelKt.w(j4, (int) (j3 >> 60))));
    }

    @Override
    public boolean m(Throwable th) {
        return P(th, false);
    }

    public final void m1(long j2) {
        long j3;
        long j4;
        if (x0()) {
            return;
        }
        while (Z() <= j2) {
        }
        int i2 = BufferedChannelKt.c;
        for (int i3 = 0; i3 < i2; i3++) {
            long jZ = Z();
            if (jZ == (h.get(this) & 4611686018427387903L) && jZ == Z()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = h;
        do {
            j3 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j3, BufferedChannelKt.v(j3 & 4611686018427387903L, true)));
        while (true) {
            long jZ2 = Z();
            long j5 = h.get(this);
            long j6 = j5 & 4611686018427387903L;
            boolean z = (4611686018427387904L & j5) != 0;
            if (jZ2 == j6 && jZ2 == Z()) {
                break;
            } else if (!z) {
                h.compareAndSet(this, j5, BufferedChannelKt.v(j6, true));
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = h;
        do {
            j4 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j4, BufferedChannelKt.v(j4 & 4611686018427387903L, false)));
    }

    public final boolean n0() {
        while (true) {
            eu0 eu0VarW = (eu0) j.get(this);
            long jH0 = h0();
            if (l0() <= jH0) {
                return false;
            }
            int i2 = BufferedChannelKt.b;
            long j2 = jH0 / ((long) i2);
            if (eu0VarW.d == j2 || (eu0VarW = W(j2, eu0VarW)) != null) {
                eu0VarW.c();
                if (r0(eu0VarW, (int) (jH0 % ((long) i2)), jH0)) {
                    return true;
                }
                f.compareAndSet(this, jH0, 1 + jH0);
            } else if (((eu0) j.get(this)).d < j2) {
                return false;
            }
        }
    }

    public final void o0(long j2) {
        if ((h.addAndGet(this, j2) & 4611686018427387904L) != 0) {
            while ((h.get(this) & 4611686018427387904L) != 0) {
            }
        }
    }

    public final void q0() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!u3.a(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.q : BufferedChannelKt.r));
        if (obj == null) {
            return;
        }
        ((e74) obj).invoke(b0());
    }

    public final boolean r0(eu0 eu0Var, int i2, long j2) {
        Object objB;
        do {
            objB = eu0Var.B(i2);
            if (objB != null && objB != BufferedChannelKt.e) {
                if (objB == BufferedChannelKt.d) {
                    return true;
                }
                if (objB == BufferedChannelKt.j || objB == BufferedChannelKt.z() || objB == BufferedChannelKt.i || objB == BufferedChannelKt.h) {
                    return false;
                }
                if (objB == BufferedChannelKt.g) {
                    return true;
                }
                return objB != BufferedChannelKt.f && j2 == h0();
            }
        } while (!eu0Var.v(i2, objB, BufferedChannelKt.h));
        U();
        return false;
    }

    public final boolean s0(long j2, boolean z) throws IllegalAccessException, InvocationTargetException {
        int i2 = (int) (j2 >> 60);
        if (i2 == 0 || i2 == 1) {
            return false;
        }
        if (i2 == 2) {
            R(j2 & 1152921504606846975L);
            if (z && n0()) {
                return false;
            }
        } else {
            if (i2 != 3) {
                throw new IllegalStateException(("unexpected close status: " + i2).toString());
            }
            Q(j2 & 1152921504606846975L);
        }
        return true;
    }

    public boolean t0() {
        return u0(e.get(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        int i2 = (int) (e.get(this) >> 60);
        if (i2 == 2) {
            sb.append("closed,");
        } else if (i2 == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.b + ',');
        sb.append("data=[");
        int i3 = 0;
        List listN = y71.n(j.get(this), i.get(this), k.get(this));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listN) {
            if (((eu0) obj) != BufferedChannelKt.a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j2 = ((eu0) next).d;
            do {
                Object next2 = it.next();
                long j3 = ((eu0) next2).d;
                if (j2 > j3) {
                    next = next2;
                    j2 = j3;
                }
            } while (it.hasNext());
        }
        eu0 eu0Var = (eu0) next;
        long jH0 = h0();
        long jL0 = l0();
        loop2: while (true) {
            int i4 = BufferedChannelKt.b;
            for (int i5 = i3; i5 < i4; i5++) {
                long j4 = (eu0Var.d * ((long) BufferedChannelKt.b)) + ((long) i5);
                if (j4 >= jL0 && j4 >= jH0) {
                    break loop2;
                }
                Object objB = eu0Var.B(i5);
                Object objA = eu0Var.A(i5);
                if (objB instanceof cr0) {
                    string = (j4 >= jH0 || j4 < jL0) ? (j4 >= jL0 || j4 < jH0) ? "cont" : "send" : "receive";
                } else if (objB instanceof xa9) {
                    string = (j4 >= jH0 || j4 < jL0) ? (j4 >= jL0 || j4 < jH0) ? "select" : "onSend" : "onReceive";
                } else if (objB instanceof po8) {
                    string = "receiveCatching";
                } else if (objB instanceof kgc) {
                    string = "EB(" + objB + ')';
                } else if (y45.e(objB, BufferedChannelKt.f) || y45.e(objB, BufferedChannelKt.g)) {
                    string = "resuming_sender";
                } else {
                    if (objB != null && !y45.e(objB, BufferedChannelKt.e) && !y45.e(objB, BufferedChannelKt.i) && !y45.e(objB, BufferedChannelKt.h) && !y45.e(objB, BufferedChannelKt.k) && !y45.e(objB, BufferedChannelKt.j) && !y45.e(objB, BufferedChannelKt.z())) {
                        string = objB.toString();
                    }
                }
                if (objA != null) {
                    sb.append('(' + string + ',' + objA + "),");
                } else {
                    sb.append(string + ',');
                }
            }
            eu0Var = (eu0) eu0Var.f();
            if (eu0Var == null) {
                break;
            }
            i3 = 0;
        }
        if (l1a.q1(sb) == ',') {
            y45.i(sb.deleteCharAt(sb.length() - 1), "deleteCharAt(...)");
        }
        sb.append("]");
        return sb.toString();
    }

    public final boolean u0(long j2) {
        return s0(j2, true);
    }

    public final boolean v0(long j2) {
        return s0(j2, false);
    }

    public boolean w0() {
        return false;
    }

    public final boolean x0() {
        long jZ = Z();
        return jZ == 0 || jZ == Long.MAX_VALUE;
    }

    public final long y0(eu0 eu0Var) {
        do {
            int i2 = BufferedChannelKt.b;
            while (true) {
                i2--;
                if (-1 < i2) {
                    long j2 = (eu0Var.d * ((long) BufferedChannelKt.b)) + ((long) i2);
                    if (j2 >= h0()) {
                        while (true) {
                            Object objB = eu0Var.B(i2);
                            if (objB != null && objB != BufferedChannelKt.e) {
                                if (objB != BufferedChannelKt.d) {
                                    break;
                                }
                                return j2;
                            }
                            if (eu0Var.v(i2, objB, BufferedChannelKt.z())) {
                                eu0Var.t();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                }
            }
            eu0Var = (eu0) eu0Var.h();
        } while (eu0Var != null);
        return -1L;
    }

    public final void z0() {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = e;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            if (((int) (j2 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, BufferedChannelKt.w(1152921504606846975L & j2, 1)));
    }
}
