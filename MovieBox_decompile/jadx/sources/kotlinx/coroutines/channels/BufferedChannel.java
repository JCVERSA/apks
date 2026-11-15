package kotlinx.coroutines.channels;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.s2;

public class BufferedChannel implements d {

    private static final AtomicLongFieldUpdater f64681d = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");

    private static final AtomicLongFieldUpdater f64682e = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");

    private static final AtomicLongFieldUpdater f64683f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");

    private static final AtomicLongFieldUpdater f64684g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    private static final AtomicReferenceFieldUpdater f64685h = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    private static final AtomicReferenceFieldUpdater f64686i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");

    private static final AtomicReferenceFieldUpdater f64687j = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");

    private static final AtomicReferenceFieldUpdater f64688k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");

    private static final AtomicReferenceFieldUpdater f64689l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile Object _closeCause$volatile;

    private final int f64690a;

    public final Function1 f64691b;
    private volatile long bufferEnd$volatile;
    private volatile Object bufferEndSegment$volatile;

    private final Function3 f64692c;
    private volatile Object closeHandler$volatile;
    private volatile long completedExpandBuffersAndPauseFlag$volatile;
    private volatile Object receiveSegment$volatile;
    private volatile long receivers$volatile;
    private volatile Object sendSegment$volatile;
    private volatile long sendersAndCloseStatus$volatile;

    private final class a implements f, s2 {

        private Object f64693a = BufferedChannelKt.f64711p;

        private CancellableContinuationImpl f64694b;

        public a() {
        }

        private final Object e(j jVar, int i10, long j10, Continuation continuation) {
            Boolean boolA;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            CancellableContinuationImpl cancellableContinuationImplB = kotlinx.coroutines.q.b(IntrinsicsKt.c(continuation));
            try {
                this.f64694b = cancellableContinuationImplB;
                Object objE1 = bufferedChannel.e1(jVar, i10, j10, this);
                if (objE1 != BufferedChannelKt.f64708m) {
                    Function3 function3E = null;
                    if (objE1 == BufferedChannelKt.f64710o) {
                        if (j10 < bufferedChannel.i0()) {
                            jVar.c();
                        }
                        j jVar2 = (j) BufferedChannel.c0().get(bufferedChannel);
                        while (true) {
                            if (bufferedChannel.q0()) {
                                g();
                                break;
                            }
                            long andIncrement = BufferedChannel.d0().getAndIncrement(bufferedChannel);
                            int i11 = BufferedChannelKt.f64697b;
                            long j11 = andIncrement / ((long) i11);
                            int i12 = (int) (andIncrement % ((long) i11));
                            if (jVar2.f64918c != j11) {
                                j jVarT = bufferedChannel.T(j11, jVar2);
                                if (jVarT != null) {
                                    jVar2 = jVarT;
                                }
                            }
                            Object objE2 = bufferedChannel.e1(jVar2, i12, andIncrement, this);
                            if (objE2 == BufferedChannelKt.f64708m) {
                                bufferedChannel.M0(this, jVar2, i12);
                                break;
                            }
                            if (objE2 == BufferedChannelKt.f64710o) {
                                if (andIncrement < bufferedChannel.i0()) {
                                    jVar2.c();
                                }
                            } else {
                                if (objE2 == BufferedChannelKt.f64709n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                jVar2.c();
                                this.f64693a = objE2;
                                this.f64694b = null;
                                boolA = Boxing.a(true);
                                Function1 function1 = bufferedChannel.f64691b;
                                if (function1 != null) {
                                    function3E = bufferedChannel.E(function1, objE2);
                                }
                            }
                        }
                    } else {
                        jVar.c();
                        this.f64693a = objE1;
                        this.f64694b = null;
                        boolA = Boxing.a(true);
                        Function1 function2 = bufferedChannel.f64691b;
                        if (function2 != null) {
                            function3E = bufferedChannel.E(function2, objE1);
                        }
                    }
                    cancellableContinuationImplB.resume(boolA, (Function3<? super Throwable, ? super Boolean, ? super CoroutineContext, Unit>) function3E);
                    break;
                }
                bufferedChannel.M0(this, jVar, i10);
                Object result = cancellableContinuationImplB.getResult();
                if (result == IntrinsicsKt.f()) {
                    DebugProbesKt.c(continuation);
                }
                return result;
            } catch (Throwable th2) {
                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th2;
            }
        }

        private final boolean f() throws Throwable {
            this.f64693a = BufferedChannelKt.z();
            Throwable thY = BufferedChannel.this.Y();
            if (thY == null) {
                return false;
            }
            throw y.a(thY);
        }

        public final void g() {
            CancellableContinuationImpl cancellableContinuationImpl = this.f64694b;
            Intrinsics.e(cancellableContinuationImpl);
            this.f64694b = null;
            this.f64693a = BufferedChannelKt.z();
            Throwable thY = BufferedChannel.this.Y();
            if (thY == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(ResultKt.a(thY)));
            }
        }

        @Override
        public Object a(Continuation continuation) throws Throwable {
            boolean zF = true;
            if (this.f64693a == BufferedChannelKt.f64711p || this.f64693a == BufferedChannelKt.z()) {
                BufferedChannel bufferedChannel = BufferedChannel.this;
                j jVar = (j) BufferedChannel.c0().get(bufferedChannel);
                while (!bufferedChannel.q0()) {
                    long andIncrement = BufferedChannel.d0().getAndIncrement(bufferedChannel);
                    int i10 = BufferedChannelKt.f64697b;
                    long j10 = andIncrement / ((long) i10);
                    int i11 = (int) (andIncrement % ((long) i10));
                    if (jVar.f64918c != j10) {
                        j jVarT = bufferedChannel.T(j10, jVar);
                        if (jVarT == null) {
                            continue;
                        } else {
                            jVar = jVarT;
                        }
                    }
                    Object objE1 = bufferedChannel.e1(jVar, i11, andIncrement, null);
                    if (objE1 == BufferedChannelKt.f64708m) {
                        throw new IllegalStateException("unreachable");
                    }
                    if (objE1 == BufferedChannelKt.f64710o) {
                        if (andIncrement < bufferedChannel.i0()) {
                            jVar.c();
                        }
                    } else {
                        if (objE1 == BufferedChannelKt.f64709n) {
                            return e(jVar, i11, andIncrement, continuation);
                        }
                        jVar.c();
                        this.f64693a = objE1;
                    }
                }
                zF = f();
            }
            return Boxing.a(zF);
        }

        public final boolean h(Object obj) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f64694b;
            Intrinsics.e(cancellableContinuationImpl);
            this.f64694b = null;
            this.f64693a = obj;
            Boolean bool = Boolean.TRUE;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            Function1 function1 = bufferedChannel.f64691b;
            return BufferedChannelKt.B(cancellableContinuationImpl, bool, function1 != null ? bufferedChannel.E(function1, obj) : null);
        }

        public final void i() {
            CancellableContinuationImpl cancellableContinuationImpl = this.f64694b;
            Intrinsics.e(cancellableContinuationImpl);
            this.f64694b = null;
            this.f64693a = BufferedChannelKt.z();
            Throwable thY = BufferedChannel.this.Y();
            if (thY == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(ResultKt.a(thY)));
            }
        }

        @Override
        public void invokeOnCancellation(w wVar, int i10) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f64694b;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(wVar, i10);
            }
        }

        @Override
        public Object next() throws Throwable {
            Object obj = this.f64693a;
            if (obj == BufferedChannelKt.f64711p) {
                throw new IllegalStateException("`hasNext()` has not been invoked");
            }
            this.f64693a = BufferedChannelKt.f64711p;
            if (obj != BufferedChannelKt.z()) {
                return obj;
            }
            throw y.a(BufferedChannel.this.b0());
        }
    }

    public BufferedChannel(int i10, Function1 function1) {
        this.f64690a = i10;
        this.f64691b = function1;
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i10 + ", should be >=0").toString());
        }
        this.bufferEnd$volatile = BufferedChannelKt.A(i10);
        this.completedExpandBuffersAndPauseFlag$volatile = W();
        j jVar = new j(0L, null, this, 3);
        this.sendSegment$volatile = jVar;
        this.receiveSegment$volatile = jVar;
        if (v0()) {
            jVar = BufferedChannelKt.f64696a;
            Intrinsics.f(jVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = jVar;
        this.f64692c = function1 != null ? new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                BufferedChannel bufferedChannel = this.f64715a;
                android.support.v4.media.session.c.a(obj);
                return BufferedChannel.K0(bufferedChannel, null, obj2, obj3);
            }
        } : null;
        this._closeCause$volatile = BufferedChannelKt.f64714s;
    }

    private final void A0(long j10, j jVar) {
        j jVar2;
        j jVar3;
        while (jVar.f64918c < j10 && (jVar3 = (j) jVar.f()) != null) {
            jVar = jVar3;
        }
        while (true) {
            if (!jVar.k() || (jVar2 = (j) jVar.f()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64687j;
                while (true) {
                    w wVar = (w) atomicReferenceFieldUpdater.get(this);
                    if (wVar.f64918c >= jVar.f64918c) {
                        return;
                    }
                    if (!jVar.u()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, wVar, jVar)) {
                        if (wVar.p()) {
                            wVar.n();
                            return;
                        }
                        return;
                    } else if (jVar.p()) {
                        jVar.n();
                    }
                }
            } else {
                jVar = jVar2;
            }
        }
    }

    public final void B0(Throwable th2, Object obj, CoroutineContext coroutineContext) {
        Function1 function1 = this.f64691b;
        Intrinsics.e(function1);
        Object objF = h.f(obj);
        Intrinsics.e(objF);
        kotlinx.coroutines.internal.s.a(function1, objF, coroutineContext);
    }

    public final void C0(Throwable th2, Object obj, CoroutineContext coroutineContext) {
        Function1 function1 = this.f64691b;
        Intrinsics.e(function1);
        kotlinx.coroutines.internal.s.a(function1, obj, coroutineContext);
    }

    public final Function3 E(final Function1 function1, final Object obj) {
        return new Function3() {
            @Override
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                return BufferedChannel.G(function1, obj, (Throwable) obj2, obj3, (CoroutineContext) obj4);
            }
        };
    }

    public final void E0(kotlinx.coroutines.n nVar) {
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m453constructorimpl(h.b(h.f64724b.a(Y()))));
    }

    public final KFunction F(Function1 function1) {
        return new BufferedChannel$bindCancellationFun$2(this);
    }

    public final void F0(kotlinx.coroutines.n nVar) {
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m453constructorimpl(ResultKt.a(b0())));
    }

    public static final Unit G(Function1 function1, Object obj, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        kotlinx.coroutines.internal.s.a(function1, obj, coroutineContext);
        return Unit.f64096a;
    }

    private final Object G0(Object obj, Continuation continuation) {
        UndeliveredElementException undeliveredElementExceptionC;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Function1 function1 = this.f64691b;
        if (function1 == null || (undeliveredElementExceptionC = kotlinx.coroutines.internal.s.c(function1, obj, null, 2, null)) == null) {
            Throwable thF0 = f0();
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(ResultKt.a(thF0)));
        } else {
            ExceptionsKt.a(undeliveredElementExceptionC, f0());
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(ResultKt.a(undeliveredElementExceptionC)));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f64096a;
    }

    public final KFunction H(Function1 function1) {
        return new BufferedChannel$bindCancellationFunResult$1(this);
    }

    public final void H0(Object obj, kotlinx.coroutines.n nVar) {
        Function1 function1 = this.f64691b;
        if (function1 != null) {
            kotlinx.coroutines.internal.s.a(function1, obj, nVar.getContext());
        }
        Throwable thF0 = f0();
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m453constructorimpl(ResultKt.a(thF0)));
    }

    private final boolean I(long j10) {
        return j10 < W() || j10 < e0() + ((long) this.f64690a);
    }

    private final void K(j jVar, long j10) {
        Object objB = kotlinx.coroutines.internal.h.b(null, 1, null);
        loop0: while (jVar != null) {
            for (int i10 = BufferedChannelKt.f64697b - 1; -1 < i10; i10--) {
                if ((jVar.f64918c * ((long) BufferedChannelKt.f64697b)) + ((long) i10) < j10) {
                    break loop0;
                }
                while (true) {
                    Object objB2 = jVar.B(i10);
                    if (objB2 != null && objB2 != BufferedChannelKt.f64700e) {
                        if (!(objB2 instanceof t)) {
                            if (!(objB2 instanceof s2)) {
                                break;
                            }
                            if (jVar.v(i10, objB2, BufferedChannelKt.z())) {
                                objB = kotlinx.coroutines.internal.h.c(objB, objB2);
                                jVar.C(i10, true);
                                break;
                            }
                        } else {
                            if (jVar.v(i10, objB2, BufferedChannelKt.z())) {
                                objB = kotlinx.coroutines.internal.h.c(objB, ((t) objB2).f64733a);
                                jVar.C(i10, true);
                                break;
                            }
                        }
                    } else {
                        if (jVar.v(i10, objB2, BufferedChannelKt.z())) {
                            jVar.t();
                            break;
                        }
                    }
                }
            }
            jVar = (j) jVar.h();
        }
        if (objB != null) {
            if (!(objB instanceof ArrayList)) {
                T0((s2) objB);
                return;
            }
            Intrinsics.f(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
            ArrayList arrayList = (ArrayList) objB;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                T0((s2) arrayList.get(size));
            }
        }
    }

    public static final Function3 K0(final BufferedChannel bufferedChannel, final kotlinx.coroutines.selects.f fVar, Object obj, final Object obj2) {
        return new Function3(obj2, bufferedChannel, fVar) {

            public final Object f64718a;

            public final BufferedChannel f64719b;

            @Override
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return BufferedChannel.L0(this.f64718a, this.f64719b, null, (Throwable) obj3, obj4, (CoroutineContext) obj5);
            }
        };
    }

    private final j L() {
        Object obj = f64687j.get(this);
        j jVar = (j) f64685h.get(this);
        if (jVar.f64918c > ((j) obj).f64918c) {
            obj = jVar;
        }
        j jVar2 = (j) f64686i.get(this);
        if (jVar2.f64918c > ((j) obj).f64918c) {
            obj = jVar2;
        }
        return (j) kotlinx.coroutines.internal.a.b((kotlinx.coroutines.internal.b) obj);
    }

    public static final Unit L0(Object obj, BufferedChannel bufferedChannel, kotlinx.coroutines.selects.f fVar, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        if (obj != BufferedChannelKt.z()) {
            kotlinx.coroutines.internal.s.a(bufferedChannel.f64691b, obj, fVar.getContext());
        }
        return Unit.f64096a;
    }

    public final void M0(s2 s2Var, j jVar, int i10) {
        J0();
        s2Var.invokeOnCancellation(jVar, i10);
    }

    private final void N(long j10) {
        S0(O(j10));
    }

    public final void N0(s2 s2Var, j jVar, int i10) {
        s2Var.invokeOnCancellation(jVar, i10 + BufferedChannelKt.f64697b);
    }

    private final j O(long j10) {
        j jVarL = L();
        if (u0()) {
            long jW0 = w0(jVarL);
            if (jW0 != -1) {
                Q(jW0);
            }
        }
        K(jVarL, j10);
        return jVarL;
    }

    static Object O0(BufferedChannel bufferedChannel, Continuation continuation) throws Throwable {
        j jVar = (j) c0().get(bufferedChannel);
        while (!bufferedChannel.q0()) {
            long andIncrement = d0().getAndIncrement(bufferedChannel);
            int i10 = BufferedChannelKt.f64697b;
            long j10 = andIncrement / ((long) i10);
            int i11 = (int) (andIncrement % ((long) i10));
            if (jVar.f64918c != j10) {
                j jVarT = bufferedChannel.T(j10, jVar);
                if (jVarT == null) {
                    continue;
                } else {
                    jVar = jVarT;
                }
            }
            Object objE1 = bufferedChannel.e1(jVar, i11, andIncrement, null);
            if (objE1 == BufferedChannelKt.f64708m) {
                throw new IllegalStateException("unexpected");
            }
            if (objE1 != BufferedChannelKt.f64710o) {
                if (objE1 == BufferedChannelKt.f64709n) {
                    return bufferedChannel.R0(jVar, i11, andIncrement, continuation);
                }
                jVar.c();
                return objE1;
            }
            if (andIncrement < bufferedChannel.i0()) {
                jVar.c();
            }
        }
        throw y.a(bufferedChannel.b0());
    }

    private final void P() {
        s0();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    static Object P0(BufferedChannel bufferedChannel, Continuation continuation) {
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$1;
        if (continuation instanceof BufferedChannel$receiveCatching$1) {
            bufferedChannel$receiveCatching$1 = (BufferedChannel$receiveCatching$1) continuation;
            int i10 = bufferedChannel$receiveCatching$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatching$1.label = i10 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuation);
            }
        } else {
            bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuation);
        }
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$2 = bufferedChannel$receiveCatching$1;
        Object obj = bufferedChannel$receiveCatching$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = bufferedChannel$receiveCatching$2.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return ((h) obj).k();
        }
        ResultKt.b(obj);
        j jVar = (j) c0().get(bufferedChannel);
        while (!bufferedChannel.q0()) {
            long andIncrement = d0().getAndIncrement(bufferedChannel);
            int i12 = BufferedChannelKt.f64697b;
            long j10 = andIncrement / ((long) i12);
            int i13 = (int) (andIncrement % ((long) i12));
            if (jVar.f64918c != j10) {
                j jVarT = bufferedChannel.T(j10, jVar);
                if (jVarT == null) {
                    continue;
                } else {
                    jVar = jVarT;
                }
            }
            Object objE1 = bufferedChannel.e1(jVar, i13, andIncrement, null);
            if (objE1 == BufferedChannelKt.f64708m) {
                throw new IllegalStateException("unexpected");
            }
            if (objE1 != BufferedChannelKt.f64710o) {
                if (objE1 != BufferedChannelKt.f64709n) {
                    jVar.c();
                    return h.f64724b.c(objE1);
                }
                bufferedChannel$receiveCatching$2.label = 1;
                Object objQ0 = bufferedChannel.Q0(jVar, i13, andIncrement, bufferedChannel$receiveCatching$2);
                return objQ0 == objF ? objF : objQ0;
            }
            if (andIncrement < bufferedChannel.i0()) {
                jVar.c();
            }
        }
        return h.f64724b.a(bufferedChannel.Y());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Q0(j jVar, int i10, long j10, Continuation continuation) {
        BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 bufferedChannel$receiveCatchingOnNoWaiterSuspend$1;
        h hVarB;
        Function3 function3;
        if (continuation instanceof BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = (BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) continuation;
            int i11 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label = i11 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuation);
            }
        } else {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuation);
        }
        Object result = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label;
        if (i12 == 0) {
            ResultKt.b(result);
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.L$0 = this;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.L$1 = jVar;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.I$0 = i10;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.J$0 = j10;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.label = 1;
            CancellableContinuationImpl cancellableContinuationImplB = kotlinx.coroutines.q.b(IntrinsicsKt.c(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1));
            try {
                Intrinsics.f(cancellableContinuationImplB, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$38>>");
                q qVar = new q(cancellableContinuationImplB);
                Object objE1 = e1(jVar, i10, j10, qVar);
                if (objE1 != BufferedChannelKt.f64708m) {
                    if (objE1 == BufferedChannelKt.f64710o) {
                        if (j10 < i0()) {
                            jVar.c();
                        }
                        j jVar2 = (j) c0().get(this);
                        while (true) {
                            if (q0()) {
                                E0(cancellableContinuationImplB);
                                break;
                            }
                            long andIncrement = d0().getAndIncrement(this);
                            int i13 = BufferedChannelKt.f64697b;
                            long j11 = andIncrement / ((long) i13);
                            int i14 = (int) (andIncrement % ((long) i13));
                            if (jVar2.f64918c != j11) {
                                j jVarT = T(j11, jVar2);
                                if (jVarT != null) {
                                    jVar2 = jVarT;
                                }
                            }
                            Object objE2 = e1(jVar2, i14, andIncrement, qVar);
                            if (objE2 == BufferedChannelKt.f64708m) {
                                M0(qVar, jVar2, i14);
                                break;
                            }
                            if (objE2 == BufferedChannelKt.f64710o) {
                                if (andIncrement < i0()) {
                                    jVar2.c();
                                }
                            } else {
                                if (objE2 == BufferedChannelKt.f64709n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                jVar2.c();
                                hVarB = h.b(h.f64724b.c(objE2));
                                Function1 function1 = this.f64691b;
                                function3 = (Function3) (function1 != null ? H(function1) : null);
                            }
                        }
                    } else {
                        jVar.c();
                        hVarB = h.b(h.f64724b.c(objE1));
                        Function1 function2 = this.f64691b;
                        function3 = (Function3) (function2 != null ? H(function2) : null);
                    }
                    cancellableContinuationImplB.resume(hVarB, (Function3<? super Throwable, ? super h, ? super CoroutineContext, Unit>) function3);
                    break;
                }
                M0(qVar, jVar, i10);
                result = cancellableContinuationImplB.getResult();
                if (result == IntrinsicsKt.f()) {
                    DebugProbesKt.c(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1);
                }
                if (result == objF) {
                    return objF;
                }
            } catch (Throwable th2) {
                cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                throw th2;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(result);
        }
        return ((h) result).k();
    }

    private final void R() {
        if (v0()) {
            return;
        }
        j jVar = (j) f64687j.get(this);
        while (true) {
            long andIncrement = f64683f.getAndIncrement(this);
            int i10 = BufferedChannelKt.f64697b;
            long j10 = andIncrement / ((long) i10);
            if (i0() <= andIncrement) {
                if (jVar.f64918c < j10 && jVar.f() != null) {
                    A0(j10, jVar);
                }
                m0(this, 0L, 1, null);
                return;
            }
            if (jVar.f64918c != j10) {
                j jVarS = S(j10, jVar, andIncrement);
                if (jVarS == null) {
                    continue;
                } else {
                    jVar = jVarS;
                }
            }
            if (c1(jVar, (int) (andIncrement % ((long) i10)), andIncrement)) {
                m0(this, 0L, 1, null);
                return;
            }
            m0(this, 0L, 1, null);
        }
    }

    private final Object R0(j jVar, int i10, long j10, Continuation continuation) {
        Function3 function3;
        CancellableContinuationImpl cancellableContinuationImplB = kotlinx.coroutines.q.b(IntrinsicsKt.c(continuation));
        try {
            Object objE1 = e1(jVar, i10, j10, cancellableContinuationImplB);
            if (objE1 != BufferedChannelKt.f64708m) {
                if (objE1 == BufferedChannelKt.f64710o) {
                    if (j10 < i0()) {
                        jVar.c();
                    }
                    j jVar2 = (j) c0().get(this);
                    while (true) {
                        if (q0()) {
                            F0(cancellableContinuationImplB);
                            break;
                        }
                        long andIncrement = d0().getAndIncrement(this);
                        int i11 = BufferedChannelKt.f64697b;
                        long j11 = andIncrement / ((long) i11);
                        int i12 = (int) (andIncrement % ((long) i11));
                        if (jVar2.f64918c != j11) {
                            j jVarT = T(j11, jVar2);
                            if (jVarT != null) {
                                jVar2 = jVarT;
                            }
                        }
                        objE1 = e1(jVar2, i12, andIncrement, cancellableContinuationImplB);
                        if (objE1 == BufferedChannelKt.f64708m) {
                            CancellableContinuationImpl cancellableContinuationImpl = cancellableContinuationImplB instanceof s2 ? cancellableContinuationImplB : null;
                            if (cancellableContinuationImpl == null) {
                                break;
                            }
                            M0(cancellableContinuationImpl, jVar2, i12);
                            break;
                        }
                        if (objE1 == BufferedChannelKt.f64710o) {
                            if (andIncrement < i0()) {
                                jVar2.c();
                            }
                        } else {
                            if (objE1 == BufferedChannelKt.f64709n) {
                                throw new IllegalStateException("unexpected");
                            }
                            jVar2.c();
                            Function1 function1 = this.f64691b;
                            function3 = (Function3) (function1 != null ? F(function1) : null);
                        }
                    }
                } else {
                    jVar.c();
                    Function1 function2 = this.f64691b;
                    function3 = (Function3) (function2 != null ? F(function2) : null);
                }
                cancellableContinuationImplB.resume(objE1, (Function3<? super Throwable, ? super Object, ? super CoroutineContext, Unit>) function3);
                break;
            }
            M0(cancellableContinuationImplB, jVar, i10);
            Object result = cancellableContinuationImplB.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        } catch (Throwable th2) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th2;
        }
    }

    private final j S(long j10, j jVar, long j11) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64687j;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(jVar, j10, function2);
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
        if (x.c(objC)) {
            P();
            A0(j10, jVar);
            m0(this, 0L, 1, null);
            return null;
        }
        j jVar2 = (j) x.b(objC);
        if (jVar2.f64918c <= j10) {
            return jVar2;
        }
        long j12 = jVar2.f64918c;
        int i10 = BufferedChannelKt.f64697b;
        if (f64683f.compareAndSet(this, j11 + 1, j12 * ((long) i10))) {
            l0((jVar2.f64918c * ((long) i10)) - j11);
            return null;
        }
        m0(this, 0L, 1, null);
        return null;
    }

    private final void S0(j jVar) {
        Function1 function1 = this.f64691b;
        UndeliveredElementException undeliveredElementExceptionB = null;
        Object objB = kotlinx.coroutines.internal.h.b(null, 1, null);
        loop0: do {
            for (int i10 = BufferedChannelKt.f64697b - 1; -1 < i10; i10--) {
                long j10 = (jVar.f64918c * ((long) BufferedChannelKt.f64697b)) + ((long) i10);
                while (true) {
                    Object objB2 = jVar.B(i10);
                    if (objB2 == BufferedChannelKt.f64704i) {
                        break loop0;
                    }
                    if (objB2 != BufferedChannelKt.f64699d) {
                        if (objB2 != BufferedChannelKt.f64700e && objB2 != null) {
                            if (!(objB2 instanceof s2) && !(objB2 instanceof t)) {
                                if (objB2 != BufferedChannelKt.f64702g && objB2 != BufferedChannelKt.f64701f) {
                                    if (objB2 != BufferedChannelKt.f64702g) {
                                        break;
                                    }
                                } else {
                                    break loop0;
                                }
                            } else {
                                if (j10 < e0()) {
                                    break loop0;
                                }
                                s2 s2Var = objB2 instanceof t ? ((t) objB2).f64733a : (s2) objB2;
                                if (jVar.v(i10, objB2, BufferedChannelKt.z())) {
                                    if (function1 != null) {
                                        undeliveredElementExceptionB = kotlinx.coroutines.internal.s.b(function1, jVar.A(i10), undeliveredElementExceptionB);
                                    }
                                    objB = kotlinx.coroutines.internal.h.c(objB, s2Var);
                                    jVar.w(i10);
                                    jVar.t();
                                    break;
                                }
                            }
                        } else {
                            if (jVar.v(i10, objB2, BufferedChannelKt.z())) {
                                jVar.t();
                                break;
                            }
                        }
                    } else {
                        if (j10 < e0()) {
                            break loop0;
                        }
                        if (jVar.v(i10, objB2, BufferedChannelKt.z())) {
                            if (function1 != null) {
                                undeliveredElementExceptionB = kotlinx.coroutines.internal.s.b(function1, jVar.A(i10), undeliveredElementExceptionB);
                            }
                            jVar.w(i10);
                            jVar.t();
                            break;
                        }
                    }
                }
            }
            jVar = (j) jVar.h();
        } while (jVar != null);
        if (objB != null) {
            if (objB instanceof ArrayList) {
                Intrinsics.f(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
                ArrayList arrayList = (ArrayList) objB;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    U0((s2) arrayList.get(size));
                }
            } else {
                U0((s2) objB);
            }
        }
        if (undeliveredElementExceptionB != null) {
            throw undeliveredElementExceptionB;
        }
    }

    public final j T(long j10, j jVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64686i;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(jVar, j10, function2);
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
        if (x.c(objC)) {
            P();
            if (jVar.f64918c * ((long) BufferedChannelKt.f64697b) >= i0()) {
                return null;
            }
            jVar.c();
            return null;
        }
        j jVar2 = (j) x.b(objC);
        if (!v0() && j10 <= W() / ((long) BufferedChannelKt.f64697b)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f64687j;
            while (true) {
                w wVar2 = (w) atomicReferenceFieldUpdater2.get(this);
                if (wVar2.f64918c >= jVar2.f64918c || !jVar2.u()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, wVar2, jVar2)) {
                    if (!wVar2.p()) {
                        break;
                    }
                    wVar2.n();
                    break;
                }
                if (jVar2.p()) {
                    jVar2.n();
                }
            }
        }
        long j11 = jVar2.f64918c;
        if (j11 <= j10) {
            return jVar2;
        }
        int i10 = BufferedChannelKt.f64697b;
        i1(j11 * ((long) i10));
        if (jVar2.f64918c * ((long) i10) >= i0()) {
            return null;
        }
        jVar2.c();
        return null;
    }

    private final void T0(s2 s2Var) {
        V0(s2Var, true);
    }

    public final j U(long j10, j jVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64685h;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.a.c(jVar, j10, function2);
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
        if (x.c(objC)) {
            P();
            if (jVar.f64918c * ((long) BufferedChannelKt.f64697b) >= e0()) {
                return null;
            }
            jVar.c();
            return null;
        }
        j jVar2 = (j) x.b(objC);
        long j11 = jVar2.f64918c;
        if (j11 <= j10) {
            return jVar2;
        }
        int i10 = BufferedChannelKt.f64697b;
        j1(j11 * ((long) i10));
        if (jVar2.f64918c * ((long) i10) >= e0()) {
            return null;
        }
        jVar2.c();
        return null;
    }

    private final void U0(s2 s2Var) {
        V0(s2Var, false);
    }

    private final void V0(s2 s2Var, boolean z10) {
        if (s2Var instanceof kotlinx.coroutines.n) {
            Continuation continuation = (Continuation) s2Var;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m453constructorimpl(ResultKt.a(z10 ? b0() : f0())));
        } else if (s2Var instanceof q) {
            CancellableContinuationImpl cancellableContinuationImpl = ((q) s2Var).f64732a;
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(h.b(h.f64724b.a(Y()))));
        } else {
            if (s2Var instanceof a) {
                ((a) s2Var).i();
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + s2Var).toString());
        }
    }

    private final long W() {
        return f64683f.get(this);
    }

    static Object W0(BufferedChannel bufferedChannel, Object obj, Continuation continuation) {
        j jVar = (j) g0().get(bufferedChannel);
        while (true) {
            long andIncrement = h0().getAndIncrement(bufferedChannel);
            long j10 = 1152921504606846975L & andIncrement;
            boolean zT0 = bufferedChannel.t0(andIncrement);
            int i10 = BufferedChannelKt.f64697b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (jVar.f64918c != j11) {
                j jVarU = bufferedChannel.U(j11, jVar);
                if (jVarU != null) {
                    jVar = jVarU;
                } else if (zT0) {
                    Object objG0 = bufferedChannel.G0(obj, continuation);
                    if (objG0 != IntrinsicsKt.f()) {
                        break;
                    }
                    return objG0;
                }
            }
            int iG1 = bufferedChannel.g1(jVar, i11, obj, j10, null, zT0);
            if (iG1 == 0) {
                jVar.c();
                break;
            }
            if (iG1 != 1) {
                if (iG1 == 2) {
                    if (!zT0) {
                        break;
                    }
                    jVar.t();
                    Object objG1 = bufferedChannel.G0(obj, continuation);
                    if (objG1 != IntrinsicsKt.f()) {
                        break;
                    }
                    return objG1;
                }
                if (iG1 == 3) {
                    Object objX0 = bufferedChannel.X0(jVar, i11, obj, j10, continuation);
                    if (objX0 != IntrinsicsKt.f()) {
                        break;
                    }
                    return objX0;
                }
                if (iG1 == 4) {
                    if (j10 < bufferedChannel.e0()) {
                        jVar.c();
                    }
                    Object objG2 = bufferedChannel.G0(obj, continuation);
                    if (objG2 != IntrinsicsKt.f()) {
                        break;
                    }
                    return objG2;
                }
                if (iG1 == 5) {
                    jVar.c();
                }
            } else {
                break;
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0114  */
    /* JADX WARN: Code duplicated, block: B:65:0x011d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:66:0x011e  */
    private final Object X0(j jVar, int i10, Object obj, long j10, Continuation continuation) {
        Object objM453constructorimpl;
        Object result;
        j jVar2;
        CancellableContinuationImpl cancellableContinuationImplB = kotlinx.coroutines.q.b(IntrinsicsKt.c(continuation));
        try {
            int iG1 = g1(jVar, i10, obj, j10, cancellableContinuationImplB, false);
            if (iG1 == 0) {
                jVar.c();
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } else {
                if (iG1 != 1) {
                    if (iG1 != 2) {
                        if (iG1 != 4) {
                            if (iG1 != 5) {
                                throw new IllegalStateException("unexpected");
                            }
                            jVar.c();
                            j jVar3 = (j) g0().get(this);
                            while (true) {
                                long andIncrement = h0().getAndIncrement(this);
                                long j11 = andIncrement & 1152921504606846975L;
                                boolean zT0 = t0(andIncrement);
                                int i11 = BufferedChannelKt.f64697b;
                                long j12 = j11 / ((long) i11);
                                int i12 = (int) (j11 % ((long) i11));
                                if (jVar3.f64918c != j12) {
                                    j jVarU = U(j12, jVar3);
                                    if (jVarU != null) {
                                        jVar2 = jVarU;
                                    } else if (zT0) {
                                    }
                                } else {
                                    jVar2 = jVar3;
                                }
                                j jVar4 = jVar2;
                                int iG2 = g1(jVar2, i12, obj, j11, cancellableContinuationImplB, zT0);
                                if (iG2 == 0) {
                                    jVar4.c();
                                    Result.Companion companion2 = Result.INSTANCE;
                                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                                } else if (iG2 == 1) {
                                    Result.Companion companion3 = Result.INSTANCE;
                                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                                } else if (iG2 == 2) {
                                    if (!zT0) {
                                        CancellableContinuationImpl cancellableContinuationImpl = cancellableContinuationImplB instanceof s2 ? cancellableContinuationImplB : null;
                                        if (cancellableContinuationImpl == null) {
                                            break;
                                        }
                                        N0(cancellableContinuationImpl, jVar4, i12);
                                        break;
                                    }
                                    jVar4.t();
                                } else {
                                    if (iG2 == 3) {
                                        throw new IllegalStateException("unexpected");
                                    }
                                    if (iG2 != 4) {
                                        if (iG2 == 5) {
                                            jVar4.c();
                                        }
                                        jVar3 = jVar4;
                                    } else if (j11 < e0()) {
                                        jVar4.c();
                                    }
                                }
                            }
                        } else if (j10 < e0()) {
                            jVar.c();
                        }
                        H0(obj, cancellableContinuationImplB);
                        break;
                    } else {
                        N0(cancellableContinuationImplB, jVar, i10);
                    }
                    result = cancellableContinuationImplB.getResult();
                    if (result == IntrinsicsKt.f()) {
                        DebugProbesKt.c(continuation);
                    }
                    if (result == IntrinsicsKt.f()) {
                        return result;
                    }
                    return Unit.f64096a;
                }
                Result.Companion companion4 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            }
            cancellableContinuationImplB.resumeWith(objM453constructorimpl);
            result = cancellableContinuationImplB.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            if (result == IntrinsicsKt.f()) {
                return result;
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th2;
        }
    }

    private final boolean Y0(long j10) {
        if (t0(j10)) {
            return false;
        }
        return !I(j10 & 1152921504606846975L);
    }

    private final boolean Z0(Object obj, Object obj2) {
        if (obj instanceof q) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            CancellableContinuationImpl cancellableContinuationImpl = ((q) obj).f64732a;
            h hVarB = h.b(h.f64724b.c(obj2));
            Function1 function1 = this.f64691b;
            return BufferedChannelKt.B(cancellableContinuationImpl, hVarB, (Function3) (function1 != null ? H(function1) : null));
        }
        if (obj instanceof a) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).h(obj2);
        }
        if (obj instanceof kotlinx.coroutines.n) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            kotlinx.coroutines.n nVar = (kotlinx.coroutines.n) obj;
            Function1 function2 = this.f64691b;
            return BufferedChannelKt.B(nVar, obj2, (Function3) (function2 != null ? F(function2) : null));
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    private final boolean a1(Object obj, j jVar, int i10) {
        if (obj instanceof kotlinx.coroutines.n) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.C((kotlinx.coroutines.n) obj, Unit.f64096a, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    public final Throwable b0() {
        Throwable thY = Y();
        return thY == null ? new ClosedReceiveChannelException("Channel was closed") : thY;
    }

    public static final AtomicReferenceFieldUpdater c0() {
        return f64686i;
    }

    private final boolean c1(j jVar, int i10, long j10) {
        Object objB = jVar.B(i10);
        if (!(objB instanceof s2) || j10 < f64682e.get(this) || !jVar.v(i10, objB, BufferedChannelKt.f64702g)) {
            return d1(jVar, i10, j10);
        }
        if (a1(objB, jVar, i10)) {
            jVar.F(i10, BufferedChannelKt.f64699d);
            return true;
        }
        jVar.F(i10, BufferedChannelKt.f64705j);
        jVar.C(i10, false);
        return false;
    }

    public static final AtomicLongFieldUpdater d0() {
        return f64682e;
    }

    private final boolean d1(j jVar, int i10, long j10) {
        while (true) {
            Object objB = jVar.B(i10);
            if (objB instanceof s2) {
                if (j10 < f64682e.get(this)) {
                    if (jVar.v(i10, objB, new t((s2) objB))) {
                        return true;
                    }
                } else if (jVar.v(i10, objB, BufferedChannelKt.f64702g)) {
                    if (a1(objB, jVar, i10)) {
                        jVar.F(i10, BufferedChannelKt.f64699d);
                        return true;
                    }
                    jVar.F(i10, BufferedChannelKt.f64705j);
                    jVar.C(i10, false);
                    return false;
                }
            } else {
                if (objB == BufferedChannelKt.f64705j) {
                    return false;
                }
                if (objB == null) {
                    if (jVar.v(i10, objB, BufferedChannelKt.f64700e)) {
                        return true;
                    }
                } else {
                    if (objB == BufferedChannelKt.f64699d || objB == BufferedChannelKt.f64703h || objB == BufferedChannelKt.f64704i || objB == BufferedChannelKt.f64706k || objB == BufferedChannelKt.z()) {
                        return true;
                    }
                    if (objB != BufferedChannelKt.f64701f) {
                        throw new IllegalStateException(("Unexpected cell state: " + objB).toString());
                    }
                }
            }
        }
    }

    public final Object e1(j jVar, int i10, long j10, Object obj) {
        Object objB = jVar.B(i10);
        if (objB == null) {
            if (j10 >= (f64681d.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.f64709n;
                }
                if (jVar.v(i10, objB, obj)) {
                    R();
                    return BufferedChannelKt.f64708m;
                }
            }
        } else if (objB == BufferedChannelKt.f64699d && jVar.v(i10, objB, BufferedChannelKt.f64704i)) {
            R();
            return jVar.D(i10);
        }
        return f1(jVar, i10, j10, obj);
    }

    private final Object f1(j jVar, int i10, long j10, Object obj) {
        while (true) {
            Object objB = jVar.B(i10);
            if (objB == null || objB == BufferedChannelKt.f64700e) {
                if (j10 < (f64681d.get(this) & 1152921504606846975L)) {
                    if (jVar.v(i10, objB, BufferedChannelKt.f64703h)) {
                        R();
                        return BufferedChannelKt.f64710o;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.f64709n;
                    }
                    if (jVar.v(i10, objB, obj)) {
                        R();
                        return BufferedChannelKt.f64708m;
                    }
                }
            } else {
                if (objB != BufferedChannelKt.f64699d) {
                    if (objB != BufferedChannelKt.f64705j && objB != BufferedChannelKt.f64703h) {
                        if (objB == BufferedChannelKt.z()) {
                            R();
                            return BufferedChannelKt.f64710o;
                        }
                        if (objB != BufferedChannelKt.f64702g && jVar.v(i10, objB, BufferedChannelKt.f64701f)) {
                            boolean z10 = objB instanceof t;
                            if (z10) {
                                objB = ((t) objB).f64733a;
                            }
                            if (a1(objB, jVar, i10)) {
                                jVar.F(i10, BufferedChannelKt.f64704i);
                                R();
                                return jVar.D(i10);
                            }
                            jVar.F(i10, BufferedChannelKt.f64705j);
                            jVar.C(i10, false);
                            if (z10) {
                                R();
                            }
                            return BufferedChannelKt.f64710o;
                        }
                    }
                    return BufferedChannelKt.f64710o;
                }
                if (jVar.v(i10, objB, BufferedChannelKt.f64704i)) {
                    R();
                    return jVar.D(i10);
                }
            }
        }
    }

    public static final AtomicReferenceFieldUpdater g0() {
        return f64685h;
    }

    public final int g1(j jVar, int i10, Object obj, long j10, Object obj2, boolean z10) {
        jVar.G(i10, obj);
        if (z10) {
            return h1(jVar, i10, obj, j10, obj2, z10);
        }
        Object objB = jVar.B(i10);
        if (objB == null) {
            if (I(j10)) {
                if (jVar.v(i10, null, BufferedChannelKt.f64699d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (jVar.v(i10, null, obj2)) {
                    return 2;
                }
            }
        } else if (objB instanceof s2) {
            jVar.w(i10);
            if (Z0(objB, obj)) {
                jVar.F(i10, BufferedChannelKt.f64704i);
                I0();
                return 0;
            }
            if (jVar.x(i10, BufferedChannelKt.f64706k) != BufferedChannelKt.f64706k) {
                jVar.C(i10, true);
            }
            return 5;
        }
        return h1(jVar, i10, obj, j10, obj2, z10);
    }

    public static final AtomicLongFieldUpdater h0() {
        return f64681d;
    }

    private final int h1(j jVar, int i10, Object obj, long j10, Object obj2, boolean z10) {
        while (true) {
            Object objB = jVar.B(i10);
            if (objB == null) {
                if (!I(j10) || z10) {
                    if (z10) {
                        if (jVar.v(i10, null, BufferedChannelKt.f64705j)) {
                            jVar.C(i10, false);
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (jVar.v(i10, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (jVar.v(i10, null, BufferedChannelKt.f64699d)) {
                    return 1;
                }
            } else {
                if (objB != BufferedChannelKt.f64700e) {
                    if (objB == BufferedChannelKt.f64706k) {
                        jVar.w(i10);
                        return 5;
                    }
                    if (objB == BufferedChannelKt.f64703h) {
                        jVar.w(i10);
                        return 5;
                    }
                    if (objB == BufferedChannelKt.z()) {
                        jVar.w(i10);
                        P();
                        return 4;
                    }
                    jVar.w(i10);
                    if (objB instanceof t) {
                        objB = ((t) objB).f64733a;
                    }
                    if (Z0(objB, obj)) {
                        jVar.F(i10, BufferedChannelKt.f64704i);
                        I0();
                        return 0;
                    }
                    if (jVar.x(i10, BufferedChannelKt.f64706k) != BufferedChannelKt.f64706k) {
                        jVar.C(i10, true);
                    }
                    return 5;
                }
                if (jVar.v(i10, objB, BufferedChannelKt.f64699d)) {
                    return 1;
                }
            }
        }
    }

    private final void i1(long j10) {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64682e;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if (j11 >= j10) {
                return;
            }
        } while (!f64682e.compareAndSet(this, j11, j10));
    }

    private final void j1(long j10) {
        long j11;
        long j12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64681d;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            j12 = 1152921504606846975L & j11;
            if (j12 >= j10) {
                return;
            }
        } while (!f64681d.compareAndSet(this, j11, BufferedChannelKt.w(j12, (int) (j11 >> 60))));
    }

    private final void l0(long j10) {
        if ((f64684g.addAndGet(this, j10) & 4611686018427387904L) != 0) {
            while ((f64684g.get(this) & 4611686018427387904L) != 0) {
            }
        }
    }

    static void m0(BufferedChannel bufferedChannel, long j10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i10 & 1) != 0) {
            j10 = 1;
        }
        bufferedChannel.l0(j10);
    }

    private final void n0() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64689l;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.f64712q : BufferedChannelKt.f64713r));
        if (obj == null) {
            return;
        }
        ((Function1) obj).invoke(Y());
    }

    private final boolean o0(j jVar, int i10, long j10) {
        Object objB;
        do {
            objB = jVar.B(i10);
            if (objB != null && objB != BufferedChannelKt.f64700e) {
                if (objB == BufferedChannelKt.f64699d) {
                    return true;
                }
                if (objB == BufferedChannelKt.f64705j || objB == BufferedChannelKt.z() || objB == BufferedChannelKt.f64704i || objB == BufferedChannelKt.f64703h) {
                    return false;
                }
                if (objB == BufferedChannelKt.f64702g) {
                    return true;
                }
                return objB != BufferedChannelKt.f64701f && j10 == e0();
            }
        } while (!jVar.v(i10, objB, BufferedChannelKt.f64703h));
        R();
        return false;
    }

    private final boolean p0(long j10, boolean z10) {
        int i10 = (int) (j10 >> 60);
        if (i10 == 0 || i10 == 1) {
            return false;
        }
        if (i10 == 2) {
            O(j10 & 1152921504606846975L);
            if (z10 && k0()) {
                return false;
            }
        } else {
            if (i10 != 3) {
                throw new IllegalStateException(("unexpected close status: " + i10).toString());
            }
            N(j10 & 1152921504606846975L);
        }
        return true;
    }

    private final boolean r0(long j10) {
        return p0(j10, true);
    }

    public final boolean t0(long j10) {
        return p0(j10, false);
    }

    private final boolean v0() {
        long jW = W();
        return jW == 0 || jW == Long.MAX_VALUE;
    }

    private final long w0(j jVar) {
        do {
            int i10 = BufferedChannelKt.f64697b;
            while (true) {
                i10--;
                if (-1 < i10) {
                    long j10 = (jVar.f64918c * ((long) BufferedChannelKt.f64697b)) + ((long) i10);
                    if (j10 >= e0()) {
                        while (true) {
                            Object objB = jVar.B(i10);
                            if (objB != null && objB != BufferedChannelKt.f64700e) {
                                if (objB != BufferedChannelKt.f64699d) {
                                    break;
                                }
                                return j10;
                            }
                            if (jVar.v(i10, objB, BufferedChannelKt.z())) {
                                jVar.t();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                }
            }
            jVar = (j) jVar.h();
        } while (jVar != null);
        return -1L;
    }

    private final void x0() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64681d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if (((int) (j10 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, BufferedChannelKt.w(1152921504606846975L & j10, 1)));
    }

    private final void y0() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64681d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, BufferedChannelKt.w(1152921504606846975L & j10, 3)));
    }

    private final void z0() {
        long j10;
        long jW;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64681d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            int i10 = (int) (j10 >> 60);
            if (i10 == 0) {
                jW = BufferedChannelKt.w(j10 & 1152921504606846975L, 2);
            } else if (i10 != 1) {
                return;
            } else {
                jW = BufferedChannelKt.w(j10 & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, jW));
    }

    protected void D0() {
    }

    protected void I0() {
    }

    public boolean J(Throwable th2) {
        if (th2 == null) {
            th2 = new CancellationException("Channel was cancelled");
        }
        return M(th2, true);
    }

    protected void J0() {
    }

    protected boolean M(Throwable th2, boolean z10) {
        if (z10) {
            x0();
        }
        boolean zA = androidx.concurrent.futures.a.a(f64688k, this, BufferedChannelKt.f64714s, th2);
        if (z10) {
            y0();
        } else {
            z0();
        }
        P();
        D0();
        if (zA) {
            n0();
        }
        return zA;
    }

    protected final void Q(long j10) {
        UndeliveredElementException undeliveredElementExceptionC;
        j jVar = (j) f64686i.get(this);
        while (true) {
            long j11 = f64682e.get(this);
            if (j10 < Math.max(((long) this.f64690a) + j11, W())) {
                return;
            }
            if (f64682e.compareAndSet(this, j11, j11 + 1)) {
                int i10 = BufferedChannelKt.f64697b;
                long j12 = j11 / ((long) i10);
                int i11 = (int) (j11 % ((long) i10));
                if (jVar.f64918c != j12) {
                    j jVarT = T(j12, jVar);
                    if (jVarT == null) {
                        continue;
                    } else {
                        jVar = jVarT;
                    }
                }
                Object objE1 = e1(jVar, i11, j11, null);
                if (objE1 != BufferedChannelKt.f64710o) {
                    jVar.c();
                    Function1 function1 = this.f64691b;
                    if (function1 != null && (undeliveredElementExceptionC = kotlinx.coroutines.internal.s.c(function1, objE1, null, 2, null)) != null) {
                        throw undeliveredElementExceptionC;
                    }
                } else if (j11 < i0()) {
                    jVar.c();
                }
            }
        }
    }

    protected final Throwable Y() {
        return (Throwable) f64688k.get(this);
    }

    @Override
    public Object a(Object obj) {
        j jVar;
        if (Y0(f64681d.get(this))) {
            return h.f64724b.b();
        }
        Object obj2 = BufferedChannelKt.f64705j;
        j jVar2 = (j) g0().get(this);
        while (true) {
            long andIncrement = h0().getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zT0 = t0(andIncrement);
            int i10 = BufferedChannelKt.f64697b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (jVar2.f64918c != j11) {
                j jVarU = U(j11, jVar2);
                if (jVarU != null) {
                    jVar = jVarU;
                } else if (zT0) {
                    break;
                }
            } else {
                jVar = jVar2;
            }
            int iG1 = g1(jVar, i11, obj, j10, obj2, zT0);
            if (iG1 == 0) {
                jVar.c();
            } else if (iG1 != 1) {
                if (iG1 == 2) {
                    if (zT0) {
                        jVar.t();
                        break;
                    }
                    s2 s2Var = obj2 instanceof s2 ? (s2) obj2 : null;
                    if (s2Var != null) {
                        N0(s2Var, jVar, i11);
                    }
                    jVar.t();
                    return h.f64724b.b();
                }
                if (iG1 == 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (iG1 == 4) {
                    if (j10 >= e0()) {
                        break;
                    }
                    jVar.c();
                    break;
                }
                if (iG1 == 5) {
                    jVar.c();
                }
                jVar2 = jVar;
            }
            return h.f64724b.c(Unit.f64096a);
        }
        return h.f64724b.a(f0());
    }

    protected final Object b1(Object obj) {
        j jVar;
        Object obj2 = BufferedChannelKt.f64699d;
        j jVar2 = (j) g0().get(this);
        while (true) {
            long andIncrement = h0().getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zT0 = t0(andIncrement);
            int i10 = BufferedChannelKt.f64697b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (jVar2.f64918c != j11) {
                j jVarU = U(j11, jVar2);
                if (jVarU != null) {
                    jVar = jVarU;
                } else if (zT0) {
                    return h.f64724b.a(f0());
                }
            } else {
                jVar = jVar2;
            }
            int iG1 = g1(jVar, i11, obj, j10, obj2, zT0);
            if (iG1 == 0) {
                jVar.c();
                return h.f64724b.c(Unit.f64096a);
            }
            if (iG1 == 1) {
                return h.f64724b.c(Unit.f64096a);
            }
            if (iG1 == 2) {
                if (zT0) {
                    jVar.t();
                    return h.f64724b.a(f0());
                }
                s2 s2Var = obj2 instanceof s2 ? (s2) obj2 : null;
                if (s2Var != null) {
                    N0(s2Var, jVar, i11);
                }
                Q((jVar.f64918c * ((long) i10)) + ((long) i11));
                return h.f64724b.c(Unit.f64096a);
            }
            if (iG1 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (iG1 == 4) {
                if (j10 < e0()) {
                    jVar.c();
                }
                return h.f64724b.a(f0());
            }
            if (iG1 == 5) {
                jVar.c();
            }
            jVar2 = jVar;
        }
    }

    @Override
    public Object c() {
        j jVar;
        long j10 = f64682e.get(this);
        long j11 = f64681d.get(this);
        if (r0(j11)) {
            return h.f64724b.a(Y());
        }
        if (j10 >= (j11 & 1152921504606846975L)) {
            return h.f64724b.b();
        }
        Object obj = BufferedChannelKt.f64706k;
        j jVar2 = (j) c0().get(this);
        while (!q0()) {
            long andIncrement = d0().getAndIncrement(this);
            int i10 = BufferedChannelKt.f64697b;
            long j12 = andIncrement / ((long) i10);
            int i11 = (int) (andIncrement % ((long) i10));
            if (jVar2.f64918c != j12) {
                j jVarT = T(j12, jVar2);
                if (jVarT == null) {
                    continue;
                } else {
                    jVar = jVarT;
                }
            } else {
                jVar = jVar2;
            }
            Object objE1 = e1(jVar, i11, andIncrement, obj);
            if (objE1 == BufferedChannelKt.f64708m) {
                s2 s2Var = obj instanceof s2 ? (s2) obj : null;
                if (s2Var != null) {
                    M0(s2Var, jVar, i11);
                }
                k1(andIncrement);
                jVar.t();
                return h.f64724b.b();
            }
            if (objE1 != BufferedChannelKt.f64710o) {
                if (objE1 == BufferedChannelKt.f64709n) {
                    throw new IllegalStateException("unexpected");
                }
                jVar.c();
                return h.f64724b.c(objE1);
            }
            if (andIncrement < i0()) {
                jVar.c();
            }
            jVar2 = jVar;
        }
        return h.f64724b.a(Y());
    }

    @Override
    public final void cancel(CancellationException cancellationException) {
        J(cancellationException);
    }

    @Override
    public Object e(Continuation continuation) {
        return P0(this, continuation);
    }

    public final long e0() {
        return f64682e.get(this);
    }

    protected final Throwable f0() {
        Throwable thY = Y();
        return thY == null ? new ClosedSendChannelException("Channel was closed") : thY;
    }

    @Override
    public Object g(Continuation continuation) {
        return O0(this, continuation);
    }

    @Override
    public boolean i(Throwable th2) {
        return M(th2, false);
    }

    public final long i0() {
        return f64681d.get(this) & 1152921504606846975L;
    }

    @Override
    public f iterator() {
        return new a();
    }

    public final boolean k0() {
        while (true) {
            j jVarT = (j) f64686i.get(this);
            long jE0 = e0();
            if (i0() <= jE0) {
                return false;
            }
            int i10 = BufferedChannelKt.f64697b;
            long j10 = jE0 / ((long) i10);
            if (jVarT.f64918c == j10 || (jVarT = T(j10, jVarT)) != null) {
                jVarT.c();
                if (o0(jVarT, (int) (jE0 % ((long) i10)), jE0)) {
                    return true;
                }
                f64682e.compareAndSet(this, jE0, 1 + jE0);
            } else if (((j) f64686i.get(this)).f64918c < j10) {
                return false;
            }
        }
    }

    public final void k1(long j10) {
        long j11;
        long j12;
        if (v0()) {
            return;
        }
        while (W() <= j10) {
        }
        int i10 = BufferedChannelKt.f64698c;
        for (int i11 = 0; i11 < i10; i11++) {
            long jW = W();
            if (jW == (f64684g.get(this) & 4611686018427387903L) && jW == W()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64684g;
        do {
            j11 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, BufferedChannelKt.v(j11 & 4611686018427387903L, true)));
        while (true) {
            long jW2 = W();
            long j13 = f64684g.get(this);
            long j14 = j13 & 4611686018427387903L;
            boolean z10 = (4611686018427387904L & j13) != 0;
            if (jW2 == j14 && jW2 == W()) {
                break;
            } else if (!z10) {
                f64684g.compareAndSet(this, j13, BufferedChannelKt.v(j14, true));
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f64684g;
        do {
            j12 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j12, BufferedChannelKt.v(j12 & 4611686018427387903L, false)));
    }

    @Override
    public Object n(Object obj, Continuation continuation) {
        return W0(this, obj, continuation);
    }

    public boolean q0() {
        return r0(f64681d.get(this));
    }

    public boolean s0() {
        return t0(f64681d.get(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        String string;
        StringBuilder sb2 = new StringBuilder();
        int i10 = (int) (f64681d.get(this) >> 60);
        if (i10 == 2) {
            sb2.append("closed,");
        } else if (i10 == 3) {
            sb2.append("cancelled,");
        }
        sb2.append("capacity=" + this.f64690a + ',');
        sb2.append("data=[");
        int i11 = 0;
        List listO = CollectionsKt.o(f64686i.get(this), f64685h.get(this), f64687j.get(this));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listO) {
            if (((j) obj) != BufferedChannelKt.f64696a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j10 = ((j) next).f64918c;
            do {
                Object next2 = it.next();
                long j11 = ((j) next2).f64918c;
                if (j10 > j11) {
                    next = next2;
                    j10 = j11;
                }
            } while (it.hasNext());
        }
        j jVar = (j) next;
        long jE0 = e0();
        long jI0 = i0();
        loop2: while (true) {
            int i12 = BufferedChannelKt.f64697b;
            for (int i13 = i11; i13 < i12; i13++) {
                long j12 = (jVar.f64918c * ((long) BufferedChannelKt.f64697b)) + ((long) i13);
                if (j12 >= jI0 && j12 >= jE0) {
                    break loop2;
                }
                Object objB = jVar.B(i13);
                Object objA = jVar.A(i13);
                if (objB instanceof kotlinx.coroutines.n) {
                    string = (j12 >= jE0 || j12 < jI0) ? (j12 >= jI0 || j12 < jE0) ? "cont" : "send" : "receive";
                } else if (objB instanceof q) {
                    string = "receiveCatching";
                } else if (objB instanceof t) {
                    string = "EB(" + objB + ')';
                } else if (Intrinsics.c(objB, BufferedChannelKt.f64701f) || Intrinsics.c(objB, BufferedChannelKt.f64702g)) {
                    string = "resuming_sender";
                } else {
                    if (objB != null && !Intrinsics.c(objB, BufferedChannelKt.f64700e) && !Intrinsics.c(objB, BufferedChannelKt.f64704i) && !Intrinsics.c(objB, BufferedChannelKt.f64703h) && !Intrinsics.c(objB, BufferedChannelKt.f64706k) && !Intrinsics.c(objB, BufferedChannelKt.f64705j) && !Intrinsics.c(objB, BufferedChannelKt.z())) {
                        string = objB.toString();
                    }
                }
                if (objA != null) {
                    sb2.append('(' + string + ',' + objA + "),");
                } else {
                    sb2.append(string + ',');
                }
            }
            jVar = (j) jVar.f();
            if (jVar == null) {
                break;
            }
            i11 = 0;
        }
        if (StringsKt.x1(sb2) == ',') {
            Intrinsics.g(sb2.deleteCharAt(sb2.length() - 1), "deleteCharAt(...)");
        }
        sb2.append("]");
        return sb2.toString();
    }

    protected boolean u0() {
        return false;
    }
}
