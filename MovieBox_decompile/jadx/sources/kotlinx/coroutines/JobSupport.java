package kotlinx.coroutines;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

public class JobSupport implements t1, v, f2 {
    private volatile Object _parentHandle$volatile;
    private volatile Object _state$volatile;
    private static final AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");
    private static final AtomicReferenceFieldUpdater _parentHandle$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0011¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", "T", "Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/JobSupport;", "job", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "Lkotlinx/coroutines/t1;", "parent", "", "getContinuationCancellationCause", "(Lkotlinx/coroutines/t1;)Ljava/lang/Throwable;", "", "nameString", "()Ljava/lang/String;", "Lkotlinx/coroutines/JobSupport;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    private static final class AwaitContinuation<T> extends CancellableContinuationImpl<T> {
        private final JobSupport job;

        public AwaitContinuation(Continuation<? super T> continuation, JobSupport jobSupport) {
            super(continuation, 1);
            this.job = jobSupport;
        }

        @Override
        public Throwable getContinuationCancellationCause(t1 parent) {
            Throwable thE;
            Object state$kotlinx_coroutines_core = this.job.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof b) || (thE = ((b) state$kotlinx_coroutines_core).e()) == null) {
                return state$kotlinx_coroutines_core instanceof b0 ? ((b0) state$kotlinx_coroutines_core).f64676a : parent.getCancellationException();
            }
            return thE;
        }

        @Override
        protected String nameString() {
            return "AwaitContinuation";
        }
    }

    private static final class a extends w1 {

        private final JobSupport f64650e;

        private final b f64651f;

        private final u f64652g;

        private final Object f64653h;

        public a(JobSupport jobSupport, b bVar, u uVar, Object obj) {
            this.f64650e = jobSupport;
            this.f64651f = bVar;
            this.f64652g = uVar;
            this.f64653h = obj;
        }

        @Override
        public boolean u() {
            return false;
        }

        @Override
        public void v(Throwable th2) {
            this.f64650e.u(this.f64651f, this.f64652g, this.f64653h);
        }
    }

    private static final class b implements p1 {

        private static final AtomicIntegerFieldUpdater f64654b = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isCompleting$volatile");

        private static final AtomicReferenceFieldUpdater f64655c = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_rootCause$volatile");

        private static final AtomicReferenceFieldUpdater f64656d = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_exceptionsHolder$volatile");
        private volatile Object _exceptionsHolder$volatile;
        private volatile int _isCompleting$volatile;
        private volatile Object _rootCause$volatile;

        private final b2 f64657a;

        public b(b2 b2Var, boolean z10, Throwable th2) {
            this.f64657a = b2Var;
            this._isCompleting$volatile = z10 ? 1 : 0;
            this._rootCause$volatile = th2;
        }

        private final ArrayList c() {
            return new ArrayList(4);
        }

        private final Object d() {
            return f64656d.get(this);
        }

        private final void n(Object obj) {
            f64656d.set(this, obj);
        }

        public final void a(Throwable th2) {
            Throwable thE = e();
            if (thE == null) {
                o(th2);
                return;
            }
            if (th2 == thE) {
                return;
            }
            Object objD = d();
            if (objD == null) {
                n(th2);
                return;
            }
            if (objD instanceof Throwable) {
                if (th2 == objD) {
                    return;
                }
                ArrayList arrayListC = c();
                arrayListC.add(objD);
                arrayListC.add(th2);
                n(arrayListC);
                return;
            }
            if (objD instanceof ArrayList) {
                ((ArrayList) objD).add(th2);
                return;
            }
            throw new IllegalStateException(("State is " + objD).toString());
        }

        @Override
        public b2 b() {
            return this.f64657a;
        }

        public final Throwable e() {
            return (Throwable) f64655c.get(this);
        }

        public final boolean i() {
            return e() != null;
        }

        @Override
        public boolean isActive() {
            return e() == null;
        }

        public final boolean j() {
            return f64654b.get(this) != 0;
        }

        public final boolean k() {
            return d() == x1.f65040e;
        }

        public final List l(Throwable th2) {
            ArrayList arrayListC;
            Object objD = d();
            if (objD == null) {
                arrayListC = c();
            } else if (objD instanceof Throwable) {
                ArrayList arrayListC2 = c();
                arrayListC2.add(objD);
                arrayListC = arrayListC2;
            } else {
                if (!(objD instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + objD).toString());
                }
                arrayListC = (ArrayList) objD;
            }
            Throwable thE = e();
            if (thE != null) {
                arrayListC.add(0, thE);
            }
            if (th2 != null && !Intrinsics.c(th2, thE)) {
                arrayListC.add(th2);
            }
            n(x1.f65040e);
            return arrayListC;
        }

        public final void m(boolean z10) {
            f64654b.set(this, z10 ? 1 : 0);
        }

        public final void o(Throwable th2) {
            f64655c.set(this, th2);
        }

        public String toString() {
            return "Finishing[cancelling=" + i() + ", completing=" + j() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + b() + ']';
        }
    }

    private final class c extends w1 {
        public c(kotlinx.coroutines.selects.f fVar) {
        }

        @Override
        public boolean u() {
            return false;
        }

        @Override
        public void v(Throwable th2) {
            Object state$kotlinx_coroutines_core = JobSupport.this.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof b0)) {
                x1.h(state$kotlinx_coroutines_core);
            }
            throw null;
        }
    }

    private final class d extends w1 {
        public d(kotlinx.coroutines.selects.f fVar) {
        }

        @Override
        public boolean u() {
            return false;
        }

        @Override
        public void v(Throwable th2) {
            Unit unit = Unit.f64096a;
            throw null;
        }
    }

    public JobSupport(boolean z10) {
        this._state$volatile = z10 ? x1.f65042g : x1.f65041f;
    }

    private final boolean C() {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof p1)) {
                return false;
            }
        } while (N(state$kotlinx_coroutines_core) < 0);
        return true;
    }

    public final Object D(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        q.a(cancellableContinuationImpl, JobKt__JobKt.m(this, false, new h2(cancellableContinuationImpl), 1, null));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f64096a;
    }

    private final Object E(Object obj) throws Throwable {
        Throwable thV = null;
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof b) {
                synchronized (state$kotlinx_coroutines_core) {
                    if (((b) state$kotlinx_coroutines_core).k()) {
                        return x1.f65039d;
                    }
                    boolean zI = ((b) state$kotlinx_coroutines_core).i();
                    if (obj != null || !zI) {
                        if (thV == null) {
                            thV = v(obj);
                        }
                        ((b) state$kotlinx_coroutines_core).a(thV);
                    }
                    Throwable thE = zI ? null : ((b) state$kotlinx_coroutines_core).e();
                    if (thE != null) {
                        G(((b) state$kotlinx_coroutines_core).b(), thE);
                    }
                    return x1.f65036a;
                }
            }
            if (!(state$kotlinx_coroutines_core instanceof p1)) {
                return x1.f65039d;
            }
            if (thV == null) {
                thV = v(obj);
            }
            p1 p1Var = (p1) state$kotlinx_coroutines_core;
            if (!p1Var.isActive()) {
                Object objR = R(state$kotlinx_coroutines_core, new b0(thV, false, 2, null));
                if (objR == x1.f65036a) {
                    throw new IllegalStateException(("Cannot happen in " + state$kotlinx_coroutines_core).toString());
                }
                if (objR != x1.f65038c) {
                    return objR;
                }
            } else if (Q(p1Var, thV)) {
                return x1.f65036a;
            }
        }
    }

    private final u F(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.l();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.k();
            if (!lockFreeLinkedListNode.p()) {
                if (lockFreeLinkedListNode instanceof u) {
                    return (u) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof b2) {
                    return null;
                }
            }
        }
    }

    private final void G(b2 b2Var, Throwable th2) throws Throwable {
        onCancelling(th2);
        b2Var.f(4);
        Object objJ = b2Var.j();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeK = (LockFreeLinkedListNode) objJ; !Intrinsics.c(lockFreeLinkedListNodeK, b2Var); lockFreeLinkedListNodeK = lockFreeLinkedListNodeK.k()) {
            if ((lockFreeLinkedListNodeK instanceof w1) && ((w1) lockFreeLinkedListNodeK).u()) {
                try {
                    ((w1) lockFreeLinkedListNodeK).v(th2);
                } catch (Throwable th3) {
                    if (completionHandlerException != null) {
                        ExceptionsKt.a(completionHandlerException, th3);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNodeK + " for " + this, th3);
                        Unit unit = Unit.f64096a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
        s(th2);
    }

    private final void H(b2 b2Var, Throwable th2) throws Throwable {
        b2Var.f(1);
        Object objJ = b2Var.j();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeK = (LockFreeLinkedListNode) objJ; !Intrinsics.c(lockFreeLinkedListNodeK, b2Var); lockFreeLinkedListNodeK = lockFreeLinkedListNodeK.k()) {
            if (lockFreeLinkedListNodeK instanceof w1) {
                try {
                    ((w1) lockFreeLinkedListNodeK).v(th2);
                } catch (Throwable th3) {
                    if (completionHandlerException != null) {
                        ExceptionsKt.a(completionHandlerException, th3);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNodeK + " for " + this, th3);
                        Unit unit = Unit.f64096a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
    }

    public final Object I(Object obj, Object obj2) throws Throwable {
        if (obj2 instanceof b0) {
            throw ((b0) obj2).f64676a;
        }
        return obj2;
    }

    public final void J(kotlinx.coroutines.selects.f fVar, Object obj) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof p1)) {
                if (!(state$kotlinx_coroutines_core instanceof b0)) {
                    state$kotlinx_coroutines_core = x1.h(state$kotlinx_coroutines_core);
                }
                fVar.a(state$kotlinx_coroutines_core);
                return;
            }
        } while (N(state$kotlinx_coroutines_core) < 0);
        fVar.b(JobKt__JobKt.m(this, false, new c(fVar), 1, null));
    }

    private final void K(d1 d1Var) {
        b2 b2Var = new b2();
        Object o1Var = b2Var;
        if (!d1Var.isActive()) {
            o1Var = new o1(b2Var);
        }
        androidx.concurrent.futures.a.a(_state$volatile$FU, this, d1Var, o1Var);
    }

    private final void L(w1 w1Var) {
        w1Var.e(new b2());
        androidx.concurrent.futures.a.a(_state$volatile$FU, this, w1Var, w1Var.k());
    }

    public final void M(kotlinx.coroutines.selects.f fVar, Object obj) {
        if (C()) {
            fVar.b(JobKt__JobKt.m(this, false, new d(fVar), 1, null));
        } else {
            fVar.a(Unit.f64096a);
        }
    }

    private final int N(Object obj) {
        if (obj instanceof d1) {
            if (((d1) obj).isActive()) {
                return 0;
            }
            if (!androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, x1.f65042g)) {
                return -1;
            }
            onStart();
            return 1;
        }
        if (!(obj instanceof o1)) {
            return 0;
        }
        if (!androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, ((o1) obj).b())) {
            return -1;
        }
        onStart();
        return 1;
    }

    private final String O(Object obj) {
        if (!(obj instanceof b)) {
            if (obj instanceof p1) {
                return ((p1) obj).isActive() ? "Active" : "New";
            }
            return obj instanceof b0 ? "Cancelled" : "Completed";
        }
        b bVar = (b) obj;
        if (bVar.i()) {
            return "Cancelling";
        }
        return bVar.j() ? "Completing" : "Active";
    }

    private final boolean P(p1 p1Var, Object obj) throws Throwable {
        if (!androidx.concurrent.futures.a.a(_state$volatile$FU, this, p1Var, x1.g(obj))) {
            return false;
        }
        onCancelling(null);
        onCompletionInternal(obj);
        t(p1Var, obj);
        return true;
    }

    private final boolean Q(p1 p1Var, Throwable th2) throws Throwable {
        b2 b2VarZ = z(p1Var);
        if (b2VarZ == null) {
            return false;
        }
        if (!androidx.concurrent.futures.a.a(_state$volatile$FU, this, p1Var, new b(b2VarZ, false, th2))) {
            return false;
        }
        G(b2VarZ, th2);
        return true;
    }

    private final Object R(Object obj, Object obj2) {
        if (!(obj instanceof p1)) {
            return x1.f65036a;
        }
        if ((!(obj instanceof d1) && !(obj instanceof w1)) || (obj instanceof u) || (obj2 instanceof b0)) {
            return S((p1) obj, obj2);
        }
        return P((p1) obj, obj2) ? obj2 : x1.f65038c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    private final Object S(p1 p1Var, Object obj) throws Throwable {
        b2 b2VarZ = z(p1Var);
        if (b2VarZ == null) {
            return x1.f65038c;
        }
        b bVar = p1Var instanceof b ? (b) p1Var : null;
        if (bVar == null) {
            bVar = new b(b2VarZ, false, null);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (bVar) {
            if (bVar.j()) {
                return x1.f65036a;
            }
            bVar.m(true);
            if (bVar != p1Var && !androidx.concurrent.futures.a.a(_state$volatile$FU, this, p1Var, bVar)) {
                return x1.f65038c;
            }
            boolean zI = bVar.i();
            b0 b0Var = obj instanceof b0 ? (b0) obj : null;
            if (b0Var != null) {
                bVar.a(b0Var.f64676a);
            }
            ?? E = zI ? 0 : bVar.e();
            objectRef.element = E;
            Unit unit = Unit.f64096a;
            if (E != 0) {
                G(b2VarZ, E);
            }
            u uVarF = F(b2VarZ);
            if (uVarF != null && T(bVar, uVarF, obj)) {
                return x1.f65037b;
            }
            b2VarZ.f(2);
            u uVarF2 = F(b2VarZ);
            return (uVarF2 == null || !T(bVar, uVarF2, obj)) ? w(bVar, obj) : x1.f65037b;
        }
    }

    private final boolean T(b bVar, u uVar, Object obj) {
        while (v1.l(uVar.f65031e, false, new a(this, bVar, uVar, obj)) == d2.f64736a) {
            uVar = F(uVar);
            if (uVar == null) {
                return false;
            }
        }
        return true;
    }

    public static JobCancellationException defaultCancellationException$kotlinx_coroutines_core$default(JobSupport jobSupport, String str, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        if (str == null) {
            str = jobSupport.cancellationExceptionMessage();
        }
        return new JobCancellationException(str, th2, jobSupport);
    }

    protected static void getOnAwaitInternal$annotations() {
    }

    public static void getOnJoin$annotations() {
    }

    private final void p(Throwable th2, List list) {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Throwable th3 = (Throwable) it.next();
            if (th3 != th2 && th3 != th2 && !(th3 instanceof CancellationException) && setNewSetFromMap.add(th3)) {
                ExceptionsKt.a(th2, th3);
            }
        }
    }

    public final Object q(Continuation continuation) {
        AwaitContinuation awaitContinuation = new AwaitContinuation(IntrinsicsKt.c(continuation), this);
        awaitContinuation.initCancellability();
        q.a(awaitContinuation, JobKt__JobKt.m(this, false, new g2(awaitContinuation), 1, null));
        Object result = awaitContinuation.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    private final Object r(Object obj) {
        Object objR;
        do {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof p1) || ((state$kotlinx_coroutines_core instanceof b) && ((b) state$kotlinx_coroutines_core).j())) {
                return x1.f65036a;
            }
            objR = R(state$kotlinx_coroutines_core, new b0(v(obj), false, 2, null));
        } while (objR == x1.f65038c);
        return objR;
    }

    private final boolean s(Throwable th2) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z10 = th2 instanceof CancellationException;
        t parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core == null || parentHandle$kotlinx_coroutines_core == d2.f64736a) {
            return z10;
        }
        return parentHandle$kotlinx_coroutines_core.a(th2) || z10;
    }

    private final void t(p1 p1Var, Object obj) throws Throwable {
        t parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(d2.f64736a);
        }
        b0 b0Var = obj instanceof b0 ? (b0) obj : null;
        Throwable th2 = b0Var != null ? b0Var.f64676a : null;
        if (!(p1Var instanceof w1)) {
            b2 b2VarB = p1Var.b();
            if (b2VarB != null) {
                H(b2VarB, th2);
                return;
            }
            return;
        }
        try {
            ((w1) p1Var).v(th2);
        } catch (Throwable th3) {
            handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + p1Var + " for " + this, th3));
        }
    }

    public static CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th2, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        return jobSupport.toCancellationException(th2, str);
    }

    public final void u(b bVar, u uVar, Object obj) {
        u uVarF = F(uVar);
        if (uVarF == null || !T(bVar, uVarF, obj)) {
            bVar.b().f(2);
            u uVarF2 = F(uVar);
            if (uVarF2 == null || !T(bVar, uVarF2, obj)) {
                afterCompletion(w(bVar, obj));
            }
        }
    }

    private final Throwable v(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th2 = (Throwable) obj;
            return th2 == null ? new JobCancellationException(cancellationExceptionMessage(), null, this) : th2;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((f2) obj).getChildJobCancellationCause();
    }

    private final Object w(b bVar, Object obj) throws Throwable {
        boolean zI;
        Throwable thY;
        b0 b0Var = obj instanceof b0 ? (b0) obj : null;
        Throwable th2 = b0Var != null ? b0Var.f64676a : null;
        synchronized (bVar) {
            zI = bVar.i();
            List listL = bVar.l(th2);
            thY = y(bVar, listL);
            if (thY != null) {
                p(thY, listL);
            }
        }
        if (thY != null && thY != th2) {
            obj = new b0(thY, false, 2, null);
        }
        if (thY != null && (s(thY) || handleJobException(thY))) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((b0) obj).c();
        }
        if (!zI) {
            onCancelling(thY);
        }
        onCompletionInternal(obj);
        androidx.concurrent.futures.a.a(_state$volatile$FU, this, bVar, x1.g(obj));
        t(bVar, obj);
        return obj;
    }

    private final Throwable x(Object obj) {
        b0 b0Var = obj instanceof b0 ? (b0) obj : null;
        if (b0Var != null) {
            return b0Var.f64676a;
        }
        return null;
    }

    private final Throwable y(b bVar, List list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (bVar.i()) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return null;
        }
        List list2 = list;
        Iterator it = list2.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Throwable) next) instanceof CancellationException);
        Throwable th2 = (Throwable) next;
        if (th2 != null) {
            return th2;
        }
        Throwable th3 = (Throwable) list.get(0);
        if (th3 instanceof TimeoutCancellationException) {
            for (Object obj2 : list2) {
                Throwable th4 = (Throwable) obj2;
                if (th4 != th3 && (th4 instanceof TimeoutCancellationException)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th5 = (Throwable) obj;
            if (th5 != null) {
                return th5;
            }
        }
        return th3;
    }

    private final b2 z(p1 p1Var) {
        b2 b2VarB = p1Var.b();
        if (b2VarB != null) {
            return b2VarB;
        }
        if (p1Var instanceof d1) {
            return new b2();
        }
        if (p1Var instanceof w1) {
            L((w1) p1Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + p1Var).toString());
    }

    protected void afterCompletion(Object obj) {
    }

    @Override
    public final t attachChild(v vVar) {
        u uVar = new u(vVar);
        uVar.w(this);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof d1) {
                d1 d1Var = (d1) state$kotlinx_coroutines_core;
                if (!d1Var.isActive()) {
                    K(d1Var);
                } else if (androidx.concurrent.futures.a.a(_state$volatile$FU, this, state$kotlinx_coroutines_core, uVar)) {
                    break;
                }
            } else {
                Throwable thE = null;
                if (!(state$kotlinx_coroutines_core instanceof p1)) {
                    Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
                    b0 b0Var = state$kotlinx_coroutines_core2 instanceof b0 ? (b0) state$kotlinx_coroutines_core2 : null;
                    uVar.v(b0Var != null ? b0Var.f64676a : null);
                    return d2.f64736a;
                }
                b2 b2VarB = ((p1) state$kotlinx_coroutines_core).b();
                if (b2VarB != null) {
                    if (!b2VarB.c(uVar, 7)) {
                        boolean zC = b2VarB.c(uVar, 3);
                        Object state$kotlinx_coroutines_core3 = getState$kotlinx_coroutines_core();
                        if (state$kotlinx_coroutines_core3 instanceof b) {
                            thE = ((b) state$kotlinx_coroutines_core3).e();
                        } else {
                            b0 b0Var2 = state$kotlinx_coroutines_core3 instanceof b0 ? (b0) state$kotlinx_coroutines_core3 : null;
                            if (b0Var2 != null) {
                                thE = b0Var2.f64676a;
                            }
                        }
                        uVar.v(thE);
                        if (zC) {
                            break;
                        }
                        return d2.f64736a;
                    }
                    break;
                }
                Intrinsics.f(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                L((w1) state$kotlinx_coroutines_core);
            }
        }
        return uVar;
    }

    protected final Object awaitInternal(Continuation<Object> continuation) throws Throwable {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof p1)) {
                if (state$kotlinx_coroutines_core instanceof b0) {
                    throw ((b0) state$kotlinx_coroutines_core).f64676a;
                }
                return x1.h(state$kotlinx_coroutines_core);
            }
        } while (N(state$kotlinx_coroutines_core) < 0);
        return q(continuation);
    }

    @Deprecated
    public void cancel() {
        cancel((CancellationException) null);
    }

    public final boolean cancelCoroutine(Throwable th2) {
        return cancelImpl$kotlinx_coroutines_core(th2);
    }

    public final boolean cancelImpl$kotlinx_coroutines_core(Object obj) throws Throwable {
        Object objE = x1.f65036a;
        if (getOnCancelComplete$kotlinx_coroutines_core() && (objE = r(obj)) == x1.f65037b) {
            return true;
        }
        if (objE == x1.f65036a) {
            objE = E(obj);
        }
        if (objE == x1.f65036a || objE == x1.f65037b) {
            return true;
        }
        if (objE == x1.f65039d) {
            return false;
        }
        afterCompletion(objE);
        return true;
    }

    public void cancelInternal(Throwable th2) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(th2);
    }

    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(Throwable th2) {
        if (th2 instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(th2) && getHandlesException$kotlinx_coroutines_core();
    }

    public final JobCancellationException defaultCancellationException$kotlinx_coroutines_core(String str, Throwable th2) {
        if (str == null) {
            str = cancellationExceptionMessage();
        }
        return new JobCancellationException(str, th2, this);
    }

    @Override
    public <R> R fold(R r10, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) t1.a.c(this, r10, function2);
    }

    @Override
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) t1.a.d(this, key);
    }

    @Override
    public final CancellationException getCancellationException() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof b)) {
            if (state$kotlinx_coroutines_core instanceof p1) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (state$kotlinx_coroutines_core instanceof b0) {
                return toCancellationException$default(this, ((b0) state$kotlinx_coroutines_core).f64676a, null, 1, null);
            }
            return new JobCancellationException(p0.a(this) + " has completed normally", null, this);
        }
        Throwable thE = ((b) state$kotlinx_coroutines_core).e();
        if (thE != null) {
            CancellationException cancellationException = toCancellationException(thE, p0.a(this) + " is cancelling");
            if (cancellationException != null) {
                return cancellationException;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    @Override
    public CancellationException getChildJobCancellationCause() {
        Throwable thE;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof b) {
            thE = ((b) state$kotlinx_coroutines_core).e();
        } else if (state$kotlinx_coroutines_core instanceof b0) {
            thE = ((b0) state$kotlinx_coroutines_core).f64676a;
        } else {
            if (state$kotlinx_coroutines_core instanceof p1) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + state$kotlinx_coroutines_core).toString());
            }
            thE = null;
        }
        CancellationException cancellationException = thE instanceof CancellationException ? (CancellationException) thE : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new JobCancellationException("Parent job is " + O(state$kotlinx_coroutines_core), thE, this);
    }

    @Override
    public final Sequence<t1> getChildren() {
        return SequencesKt.b(new JobSupport$children$1(this, null));
    }

    public final Object getCompletedInternal$kotlinx_coroutines_core() throws Throwable {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof p1) {
            throw new IllegalStateException("This job has not completed yet");
        }
        if (state$kotlinx_coroutines_core instanceof b0) {
            throw ((b0) state$kotlinx_coroutines_core).f64676a;
        }
        return x1.h(state$kotlinx_coroutines_core);
    }

    protected final Throwable getCompletionCause() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof b) {
            Throwable thE = ((b) state$kotlinx_coroutines_core).e();
            if (thE != null) {
                return thE;
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(state$kotlinx_coroutines_core instanceof p1)) {
            if (state$kotlinx_coroutines_core instanceof b0) {
                return ((b0) state$kotlinx_coroutines_core).f64676a;
            }
            return null;
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    protected final boolean getCompletionCauseHandled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof b0) && ((b0) state$kotlinx_coroutines_core).a();
    }

    public final Throwable getCompletionExceptionOrNull() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof p1) {
            throw new IllegalStateException("This job has not completed yet");
        }
        return x(state$kotlinx_coroutines_core);
    }

    public boolean getHandlesException$kotlinx_coroutines_core() {
        return true;
    }

    @Override
    public final CoroutineContext.Key<?> getKey() {
        return t1.f65027m1;
    }

    protected final kotlinx.coroutines.selects.d getOnAwaitInternal() {
        JobSupport$onAwaitInternal$1 jobSupport$onAwaitInternal$1 = JobSupport$onAwaitInternal$1.INSTANCE;
        Intrinsics.f(jobSupport$onAwaitInternal$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.e(jobSupport$onAwaitInternal$1, 3);
        JobSupport$onAwaitInternal$2 jobSupport$onAwaitInternal$2 = JobSupport$onAwaitInternal$2.INSTANCE;
        Intrinsics.f(jobSupport$onAwaitInternal$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new kotlinx.coroutines.selects.e(this, function3, (Function3) TypeIntrinsics.e(jobSupport$onAwaitInternal$2, 3), null, 8, null);
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    public final kotlinx.coroutines.selects.b getOnJoin() {
        JobSupport$onJoin$1 jobSupport$onJoin$1 = JobSupport$onJoin$1.INSTANCE;
        Intrinsics.f(jobSupport$onJoin$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new kotlinx.coroutines.selects.c(this, (Function3) TypeIntrinsics.e(jobSupport$onJoin$1, 3), null, 4, null);
    }

    public t1 getParent() {
        t parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            return parentHandle$kotlinx_coroutines_core.getParent();
        }
        return null;
    }

    public final t getParentHandle$kotlinx_coroutines_core() {
        return (t) _parentHandle$volatile$FU.get(this);
    }

    public final Object getState$kotlinx_coroutines_core() {
        return _state$volatile$FU.get(this);
    }

    protected boolean handleJobException(Throwable th2) {
        return false;
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(Throwable th2) throws Throwable {
        throw th2;
    }

    protected final void initParentJob(t1 t1Var) {
        if (t1Var == null) {
            setParentHandle$kotlinx_coroutines_core(d2.f64736a);
            return;
        }
        t1Var.start();
        t tVarAttachChild = t1Var.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(tVarAttachChild);
        if (isCompleted()) {
            tVarAttachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(d2.f64736a);
        }
    }

    @Override
    public final a1 invokeOnCompletion(Function1<? super Throwable, Unit> function1) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(true, new s1(function1));
    }

    public final a1 invokeOnCompletionInternal$kotlinx_coroutines_core(boolean z10, w1 w1Var) {
        boolean z11;
        boolean zC;
        w1Var.w(this);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            z11 = true;
            if (!(state$kotlinx_coroutines_core instanceof d1)) {
                if (!(state$kotlinx_coroutines_core instanceof p1)) {
                    z11 = false;
                    break;
                }
                p1 p1Var = (p1) state$kotlinx_coroutines_core;
                b2 b2VarB = p1Var.b();
                if (b2VarB == null) {
                    Intrinsics.f(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    L((w1) state$kotlinx_coroutines_core);
                } else {
                    if (w1Var.u()) {
                        b bVar = p1Var instanceof b ? (b) p1Var : null;
                        Throwable thE = bVar != null ? bVar.e() : null;
                        if (thE != null) {
                            if (z10) {
                                w1Var.v(thE);
                            }
                            return d2.f64736a;
                        }
                        zC = b2VarB.c(w1Var, 5);
                    } else {
                        zC = b2VarB.c(w1Var, 1);
                    }
                    if (zC) {
                        break;
                    }
                }
            } else {
                d1 d1Var = (d1) state$kotlinx_coroutines_core;
                if (!d1Var.isActive()) {
                    K(d1Var);
                } else if (androidx.concurrent.futures.a.a(_state$volatile$FU, this, state$kotlinx_coroutines_core, w1Var)) {
                    break;
                }
            }
        }
        if (z11) {
            return w1Var;
        }
        if (z10) {
            Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
            b0 b0Var = state$kotlinx_coroutines_core2 instanceof b0 ? (b0) state$kotlinx_coroutines_core2 : null;
            w1Var.v(b0Var != null ? b0Var.f64676a : null);
        }
        return d2.f64736a;
    }

    @Override
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof p1) && ((p1) state$kotlinx_coroutines_core).isActive();
    }

    @Override
    public final boolean isCancelled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof b0) || ((state$kotlinx_coroutines_core instanceof b) && ((b) state$kotlinx_coroutines_core).i());
    }

    @Override
    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof p1);
    }

    public final boolean isCompletedExceptionally() {
        return getState$kotlinx_coroutines_core() instanceof b0;
    }

    protected boolean isScopedCoroutine() {
        return false;
    }

    @Override
    public final Object join(Continuation<? super Unit> continuation) {
        if (C()) {
            Object objD = D(continuation);
            return objD == IntrinsicsKt.f() ? objD : Unit.f64096a;
        }
        v1.i(continuation.getContext());
        return Unit.f64096a;
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(Object obj) {
        Object objR;
        do {
            objR = R(getState$kotlinx_coroutines_core(), obj);
            if (objR == x1.f65036a) {
                return false;
            }
            if (objR == x1.f65037b) {
                return true;
            }
        } while (objR == x1.f65038c);
        afterCompletion(objR);
        return true;
    }

    public final Object makeCompletingOnce$kotlinx_coroutines_core(Object obj) {
        Object objR;
        do {
            objR = R(getState$kotlinx_coroutines_core(), obj);
            if (objR == x1.f65036a) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, x(obj));
            }
        } while (objR == x1.f65038c);
        return objR;
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return t1.a.e(this, key);
    }

    public String nameString$kotlinx_coroutines_core() {
        return p0.a(this);
    }

    protected void onCancelling(Throwable th2) {
    }

    protected void onCompletionInternal(Object obj) {
    }

    protected void onStart() {
    }

    @Override
    public final void parentCancelled(f2 f2Var) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(f2Var);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return t1.a.f(this, coroutineContext);
    }

    public final void removeNode$kotlinx_coroutines_core(w1 w1Var) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof w1)) {
                if (!(state$kotlinx_coroutines_core instanceof p1) || ((p1) state$kotlinx_coroutines_core).b() == null) {
                    return;
                }
                w1Var.q();
                return;
            }
            if (state$kotlinx_coroutines_core != w1Var) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(_state$volatile$FU, this, state$kotlinx_coroutines_core, x1.f65042g));
    }

    public final void setParentHandle$kotlinx_coroutines_core(t tVar) {
        _parentHandle$volatile$FU.set(this, tVar);
    }

    @Override
    public final boolean start() {
        int iN;
        do {
            iN = N(getState$kotlinx_coroutines_core());
            if (iN == 0) {
                return false;
            }
        } while (iN != 1);
        return true;
    }

    protected final CancellationException toCancellationException(Throwable th2, String str) {
        CancellationException jobCancellationException = th2 instanceof CancellationException ? (CancellationException) th2 : null;
        if (jobCancellationException == null) {
            if (str == null) {
                str = cancellationExceptionMessage();
            }
            jobCancellationException = new JobCancellationException(str, th2, this);
        }
        return jobCancellationException;
    }

    public final String toDebugString() {
        return nameString$kotlinx_coroutines_core() + '{' + O(getState$kotlinx_coroutines_core()) + '}';
    }

    public String toString() {
        return toDebugString() + '@' + p0.b(this);
    }

    @Deprecated
    public boolean cancel(Throwable th2) throws Throwable {
        Throwable jobCancellationException;
        if (th2 == null || (jobCancellationException = toCancellationException$default(this, th2, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(jobCancellationException);
        return true;
    }

    @Deprecated
    public t1 plus(t1 t1Var) {
        return t1.a.g(this, t1Var);
    }

    @Override
    public final a1 invokeOnCompletion(boolean z10, boolean z11, Function1<? super Throwable, Unit> function1) {
        w1 s1Var;
        if (z10) {
            s1Var = new r1(function1);
        } else {
            s1Var = new s1(function1);
        }
        return invokeOnCompletionInternal$kotlinx_coroutines_core(z11, s1Var);
    }

    @Override
    public void cancel(CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }
}
