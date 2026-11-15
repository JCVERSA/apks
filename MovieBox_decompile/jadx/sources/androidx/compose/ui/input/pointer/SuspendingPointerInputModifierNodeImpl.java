package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.d1;
import androidx.compose.ui.platform.o2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.t1;

public final class SuspendingPointerInputModifierNodeImpl extends androidx.compose.ui.f.c implements n0, e0, o0.e {

    private Object f4647n;

    private Object f4648o;

    private Object[] f4649p;

    private Function2 f4650q;

    private t1 f4651r;

    private o f4655v;

    private o f4652s = l0.f4705a;

    private final androidx.compose.runtime.collection.b f4653t = new androidx.compose.runtime.collection.b(new PointerEventHandlerCoroutine[16], 0);

    private final androidx.compose.runtime.collection.b f4654u = new androidx.compose.runtime.collection.b(new PointerEventHandlerCoroutine[16], 0);

    private long f4656w = o0.t.f67425b.a();

    final class PointerEventHandlerCoroutine implements c, o0.e, Continuation {

        private final Continuation f4657a;

        private final SuspendingPointerInputModifierNodeImpl f4658b;

        private kotlinx.coroutines.n f4659c;

        private PointerEventPass f4660d = PointerEventPass.Main;

        private final CoroutineContext f4661e = EmptyCoroutineContext.INSTANCE;

        public PointerEventHandlerCoroutine(Continuation continuation) {
            this.f4657a = continuation;
            this.f4658b = SuspendingPointerInputModifierNodeImpl.this;
        }

        public final void B(Throwable th2) {
            kotlinx.coroutines.n nVar = this.f4659c;
            if (nVar != null) {
                nVar.cancel(th2);
            }
            this.f4659c = null;
        }

        @Override
        public float B0() {
            return this.f4658b.B0();
        }

        public final void C(o oVar, PointerEventPass pointerEventPass) {
            kotlinx.coroutines.n nVar;
            if (pointerEventPass != this.f4660d || (nVar = this.f4659c) == null) {
                return;
            }
            this.f4659c = null;
            nVar.resumeWith(Result.m453constructorimpl(oVar));
        }

        @Override
        public float D0(float f10) {
            return this.f4658b.D0(f10);
        }

        @Override
        public long H(float f10) {
            return this.f4658b.H(f10);
        }

        @Override
        public float J(long j10) {
            return this.f4658b.J(j10);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        public Object N(long j10, Function2 function2, Continuation continuation) {
            SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1;
            if (continuation instanceof SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = (SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) continuation;
                int i10 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, continuation);
                }
            } else {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, continuation);
            }
            Object objE0 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label;
            try {
                if (i11 == 0) {
                    ResultKt.b(objE0);
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label = 1;
                    objE0 = e0(j10, function2, suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1);
                    if (objE0 == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objE0);
                }
                return objE0;
            } catch (PointerEventTimeoutCancellationException unused) {
                return null;
            }
        }

        @Override
        public long P0(long j10) {
            return this.f4658b.P0(j10);
        }

        @Override
        public long Q(float f10) {
            return this.f4658b.Q(f10);
        }

        @Override
        public long X() {
            return SuspendingPointerInputModifierNodeImpl.this.X();
        }

        @Override
        public int c0(float f10) {
            return this.f4658b.c0(f10);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0, types: [long] */
        /* JADX WARN: Type inference failed for: r11v1, types: [kotlinx.coroutines.t1] */
        /* JADX WARN: Type inference failed for: r11v3, types: [kotlinx.coroutines.t1] */
        /* JADX WARN: Type inference failed for: r11v7 */
        /* JADX WARN: Type inference failed for: r11v8 */
        /* JADX WARN: Type inference failed for: r13v0, types: [kotlin.jvm.functions.Function2] */
        @Override
        public Object e0(long j10, Function2 function2, Continuation continuation) {
            SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1;
            kotlinx.coroutines.n nVar;
            if (continuation instanceof SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = (SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) continuation;
                int i10 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1(this, continuation);
                }
            } else {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1(this, continuation);
            }
            Object objInvoke = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.label;
            try {
                if (i11 == 0) {
                    ResultKt.b(objInvoke);
                    if (j10 <= 0 && (nVar = this.f4659c) != null) {
                        Result.Companion companion = Result.INSTANCE;
                        nVar.resumeWith(Result.m453constructorimpl(ResultKt.a(new PointerEventTimeoutCancellationException(j10))));
                    }
                    t1 t1VarD = kotlinx.coroutines.k.d(SuspendingPointerInputModifierNodeImpl.this.c1(), null, null, new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1(j10, this, null), 3, null);
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.L$0 = t1VarD;
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.label = 1;
                    objInvoke = function2.invoke(this, suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1);
                    j10 = t1VarD;
                    if (objInvoke == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    t1 t1Var = (t1) suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.L$0;
                    ResultKt.b(objInvoke);
                    j10 = t1Var;
                }
                j10.cancel(CancelTimeoutCancellationException.INSTANCE);
                return objInvoke;
            } catch (Throwable th2) {
                j10.cancel(CancelTimeoutCancellationException.INSTANCE);
                throw th2;
            }
        }

        @Override
        public CoroutineContext getContext() {
            return this.f4661e;
        }

        @Override
        public float getDensity() {
            return this.f4658b.getDensity();
        }

        @Override
        public o2 getViewConfiguration() {
            return SuspendingPointerInputModifierNodeImpl.this.getViewConfiguration();
        }

        @Override
        public float h0(long j10) {
            return this.f4658b.h0(j10);
        }

        @Override
        public long k() {
            return SuspendingPointerInputModifierNodeImpl.this.f4656w;
        }

        @Override
        public Object m0(PointerEventPass pointerEventPass, Continuation continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f4660d = pointerEventPass;
            this.f4659c = cancellableContinuationImpl;
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        }

        @Override
        public o n0() {
            return SuspendingPointerInputModifierNodeImpl.this.f4652s;
        }

        @Override
        public void resumeWith(Object obj) {
            androidx.compose.runtime.collection.b bVar = SuspendingPointerInputModifierNodeImpl.this.f4653t;
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            synchronized (bVar) {
                suspendingPointerInputModifierNodeImpl.f4653t.t(this);
                Unit unit = Unit.f64096a;
            }
            this.f4657a.resumeWith(obj);
        }

        @Override
        public float x0(float f10) {
            return this.f4658b.x0(f10);
        }
    }

    public class a {

        public static final int[] f4663a;

        static {
            int[] iArr = new int[PointerEventPass.values().length];
            try {
                iArr[PointerEventPass.Initial.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PointerEventPass.Final.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PointerEventPass.Main.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f4663a = iArr;
        }
    }

    public SuspendingPointerInputModifierNodeImpl(Object obj, Object obj2, Object[] objArr, Function2 function2) {
        this.f4647n = obj;
        this.f4648o = obj2;
        this.f4649p = objArr;
        this.f4650q = function2;
    }

    private final void F1(o oVar, PointerEventPass pointerEventPass) {
        androidx.compose.runtime.collection.b bVar;
        int iN;
        synchronized (this.f4653t) {
            androidx.compose.runtime.collection.b bVar2 = this.f4654u;
            bVar2.c(bVar2.n(), this.f4653t);
        }
        try {
            int i10 = a.f4663a[pointerEventPass.ordinal()];
            if (i10 == 1 || i10 == 2) {
                androidx.compose.runtime.collection.b bVar3 = this.f4654u;
                int iN2 = bVar3.n();
                if (iN2 > 0) {
                    Object[] objArrM = bVar3.m();
                    int i11 = 0;
                    do {
                        ((PointerEventHandlerCoroutine) objArrM[i11]).C(oVar, pointerEventPass);
                        i11++;
                    } while (i11 < iN2);
                }
            } else if (i10 == 3 && (iN = (bVar = this.f4654u).n()) > 0) {
                int i12 = iN - 1;
                Object[] objArrM2 = bVar.m();
                do {
                    ((PointerEventHandlerCoroutine) objArrM2[i12]).C(oVar, pointerEventPass);
                    i12--;
                } while (i12 >= 0);
            }
        } finally {
            this.f4654u.h();
        }
    }

    @Override
    public float B0() {
        return androidx.compose.ui.node.g.m(this).H().B0();
    }

    @Override
    public float D0(float f10) {
        return o0.d.d(this, f10);
    }

    public Function2 G1() {
        return this.f4650q;
    }

    @Override
    public long H(float f10) {
        return o0.m.b(this, f10);
    }

    public final void H1(Object obj, Object obj2, Object[] objArr, Function2 function2) {
        boolean z10 = !Intrinsics.c(this.f4647n, obj);
        this.f4647n = obj;
        if (!Intrinsics.c(this.f4648o, obj2)) {
            z10 = true;
        }
        this.f4648o = obj2;
        Object[] objArr2 = this.f4649p;
        if (objArr2 != null && objArr == null) {
            z10 = true;
        }
        if (objArr2 == null && objArr != null) {
            z10 = true;
        }
        boolean z11 = (objArr2 == null || objArr == null || Arrays.equals(objArr, objArr2)) ? z10 : true;
        this.f4649p = objArr;
        if (z11) {
            j0();
        }
        this.f4650q = function2;
    }

    @Override
    public float J(long j10) {
        return o0.m.a(this, j10);
    }

    @Override
    public Object K(Function2 function2, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final PointerEventHandlerCoroutine pointerEventHandlerCoroutine = new PointerEventHandlerCoroutine(cancellableContinuationImpl);
        synchronized (this.f4653t) {
            this.f4653t.b(pointerEventHandlerCoroutine);
            Continuation continuationA = ContinuationKt.a(function2, pointerEventHandlerCoroutine, pointerEventHandlerCoroutine);
            Result.Companion companion = Result.INSTANCE;
            continuationA.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f64096a;
            }

            public final void invoke(Throwable th2) {
                pointerEventHandlerCoroutine.B(th2);
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    @Override
    public void M(o oVar, PointerEventPass pointerEventPass, long j10) {
        this.f4656w = j10;
        if (pointerEventPass == PointerEventPass.Initial) {
            this.f4652s = oVar;
        }
        if (this.f4651r == null) {
            this.f4651r = kotlinx.coroutines.k.d(c1(), null, CoroutineStart.UNDISPATCHED, new SuspendingPointerInputModifierNodeImpl$onPointerEvent$1(this, null), 1, null);
        }
        F1(oVar, pointerEventPass);
        List listB = oVar.b();
        int size = listB.size();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                z10 = true;
                break;
            } else if (!p.d((w) listB.get(i10))) {
                break;
            } else {
                i10++;
            }
        }
        if (z10) {
            oVar = null;
        }
        this.f4655v = oVar;
    }

    @Override
    public boolean O0() {
        return d1.d(this);
    }

    @Override
    public long P0(long j10) {
        return o0.d.e(this, j10);
    }

    @Override
    public long Q(float f10) {
        return o0.d.f(this, f10);
    }

    @Override
    public boolean R() {
        return d1.a(this);
    }

    @Override
    public void S0() {
        j0();
    }

    public long X() {
        long jP0 = P0(getViewConfiguration().d());
        long jK = k();
        return y.n.a(Math.max(0.0f, y.m.i(jP0) - o0.t.g(jK)) / 2.0f, Math.max(0.0f, y.m.g(jP0) - o0.t.f(jK)) / 2.0f);
    }

    @Override
    public int c0(float f10) {
        return o0.d.a(this, f10);
    }

    @Override
    public float getDensity() {
        return androidx.compose.ui.node.g.m(this).H().getDensity();
    }

    public o2 getViewConfiguration() {
        return androidx.compose.ui.node.g.m(this).l0();
    }

    @Override
    public float h0(long j10) {
        return o0.d.c(this, j10);
    }

    @Override
    public void j0() {
        t1 t1Var = this.f4651r;
        if (t1Var != null) {
            t1Var.cancel(new PointerInputResetException());
            this.f4651r = null;
        }
    }

    public long k() {
        return this.f4656w;
    }

    @Override
    public void n1() {
        j0();
        super.n1();
    }

    @Override
    public void t0() {
        o oVar = this.f4655v;
        if (oVar == null) {
            return;
        }
        List listB = oVar.b();
        int size = listB.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((w) listB.get(i10)).i()) {
                List listB2 = oVar.b();
                ArrayList arrayList = new ArrayList(listB2.size());
                int size2 = listB2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    w wVar = (w) listB2.get(i11);
                    arrayList.add(new w(wVar.f(), wVar.o(), wVar.h(), false, wVar.j(), wVar.o(), wVar.h(), wVar.i(), wVar.i(), 0, 0L, 1536, (DefaultConstructorMarker) null));
                }
                o oVar2 = new o(arrayList);
                this.f4652s = oVar2;
                F1(oVar2, PointerEventPass.Initial);
                F1(oVar2, PointerEventPass.Main);
                F1(oVar2, PointerEventPass.Final);
                this.f4655v = null;
                return;
            }
        }
    }

    @Override
    public float x0(float f10) {
        return o0.d.b(this, f10);
    }

    @Override
    public void y0() {
        j0();
    }
}
