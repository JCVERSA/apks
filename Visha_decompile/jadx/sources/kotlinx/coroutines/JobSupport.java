package kotlinx.coroutines;

import defpackage.az4;
import defpackage.ccb;
import defpackage.dz4;
import defpackage.e74;
import defpackage.f17;
import defpackage.fr0;
import defpackage.j55;
import defpackage.k17;
import defpackage.k55;
import defpackage.l93;
import defpackage.n95;
import defpackage.nw7;
import defpackage.o95;
import defpackage.ou8;
import defpackage.pc9;
import defpackage.pt1;
import defpackage.pu8;
import defpackage.q95;
import defpackage.qt1;
import defpackage.s74;
import defpackage.sa9;
import defpackage.ta9;
import defpackage.tc9;
import defpackage.u3;
import defpackage.u74;
import defpackage.ua9;
import defpackage.uc2;
import defpackage.ue3;
import defpackage.va9;
import defpackage.vb1;
import defpackage.vv0;
import defpackage.wh1;
import defpackage.wv0;
import defpackage.xa9;
import defpackage.xv0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

public class JobSupport implements j, xv0, nw7 {
    private volatile Object _parentHandle$volatile;
    private volatile Object _state$volatile;
    private static final AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");
    private static final AtomicReferenceFieldUpdater _parentHandle$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0011¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", "T", "Lkotlinx/coroutines/CancellableContinuationImpl;", "Lwh1;", "delegate", "Lkotlinx/coroutines/JobSupport;", "job", MethodDecl.initName, "(Lwh1;Lkotlinx/coroutines/JobSupport;)V", "Lkotlinx/coroutines/j;", "parent", "", "getContinuationCancellationCause", "(Lkotlinx/coroutines/j;)Ljava/lang/Throwable;", "", "nameString", "()Ljava/lang/String;", "Lkotlinx/coroutines/JobSupport;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AwaitContinuation<T> extends CancellableContinuationImpl<T> {
        private final JobSupport job;

        public AwaitContinuation(wh1<? super T> wh1Var, JobSupport jobSupport) {
            super(wh1Var, 1);
            this.job = jobSupport;
        }

        @Override
        public Throwable getContinuationCancellationCause(j parent) {
            Throwable thE;
            Object state$kotlinx_coroutines_core = this.job.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof b) || (thE = ((b) state$kotlinx_coroutines_core).e()) == null) {
                return state$kotlinx_coroutines_core instanceof vb1 ? ((vb1) state$kotlinx_coroutines_core).a : parent.getCancellationException();
            }
            return thE;
        }

        @Override
        public String nameString() {
            return "AwaitContinuation";
        }
    }

    public static final class a extends o95 {
        public final JobSupport f;
        public final b g;
        public final wv0 h;
        public final Object i;

        public a(JobSupport jobSupport, b bVar, wv0 wv0Var, Object obj) {
            this.f = jobSupport;
            this.g = bVar;
            this.h = wv0Var;
            this.i = obj;
        }

        @Override
        public boolean u() {
            return false;
        }

        @Override
        public void v(Throwable th) {
            this.f.u(this.g, this.h, this.i);
        }
    }

    public static final class b implements dz4 {
        public static final AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isCompleting$volatile");
        public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_rootCause$volatile");
        public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_exceptionsHolder$volatile");
        private volatile Object _exceptionsHolder$volatile;
        private volatile int _isCompleting$volatile;
        private volatile Object _rootCause$volatile;
        public final f17 b;

        public b(f17 f17Var, boolean z, Throwable th) {
            this.b = f17Var;
            this._isCompleting$volatile = z ? 1 : 0;
            this._rootCause$volatile = th;
        }

        public final void a(Throwable th) {
            Throwable thE = e();
            if (thE == null) {
                o(th);
                return;
            }
            if (th == thE) {
                return;
            }
            Object objD = d();
            if (objD == null) {
                n(th);
                return;
            }
            if (objD instanceof Throwable) {
                if (th == objD) {
                    return;
                }
                ArrayList arrayListC = c();
                arrayListC.add(objD);
                arrayListC.add(th);
                n(arrayListC);
                return;
            }
            if (objD instanceof ArrayList) {
                ((ArrayList) objD).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + objD).toString());
        }

        @Override
        public f17 b() {
            return this.b;
        }

        public final ArrayList c() {
            return new ArrayList(4);
        }

        public final Object d() {
            return e.get(this);
        }

        public final Throwable e() {
            return (Throwable) d.get(this);
        }

        public final boolean i() {
            return e() != null;
        }

        @Override
        public boolean isActive() {
            return e() == null;
        }

        public final boolean j() {
            return c.get(this) != 0;
        }

        public final boolean k() {
            return d() == q95.e;
        }

        public final List l(Throwable th) {
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
            if (th != null && !y45.e(th, thE)) {
                arrayListC.add(th);
            }
            n(q95.e);
            return arrayListC;
        }

        public final void m(boolean z) {
            c.set(this, z ? 1 : 0);
        }

        public final void n(Object obj) {
            e.set(this, obj);
        }

        public final void o(Throwable th) {
            d.set(this, th);
        }

        public String toString() {
            return "Finishing[cancelling=" + i() + ", completing=" + j() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + b() + ']';
        }
    }

    public final class c extends o95 {
        public final xa9 f;

        public c(xa9 xa9Var) {
            this.f = xa9Var;
        }

        @Override
        public boolean u() {
            return false;
        }

        @Override
        public void v(Throwable th) {
            Object state$kotlinx_coroutines_core = JobSupport.this.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof vb1)) {
                state$kotlinx_coroutines_core = q95.h(state$kotlinx_coroutines_core);
            }
            this.f.d(JobSupport.this, state$kotlinx_coroutines_core);
        }
    }

    public final class d extends o95 {
        public final xa9 f;

        public d(xa9 xa9Var) {
            this.f = xa9Var;
        }

        @Override
        public boolean u() {
            return false;
        }

        @Override
        public void v(Throwable th) {
            this.f.d(JobSupport.this, zfb.a);
        }
    }

    public JobSupport(boolean z) {
        this._state$volatile = z ? q95.g : q95.f;
    }

    public static JobCancellationException defaultCancellationException$kotlinx_coroutines_core$default(JobSupport jobSupport, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        if (str == null) {
            str = jobSupport.cancellationExceptionMessage();
        }
        return new JobCancellationException(str, th, jobSupport);
    }

    public static void getOnAwaitInternal$annotations() {
    }

    public static void getOnJoin$annotations() {
    }

    public static CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return jobSupport.toCancellationException(th, str);
    }

    public final boolean C() {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof dz4)) {
                return false;
            }
        } while (O(state$kotlinx_coroutines_core) < 0);
        return true;
    }

    public final Object E(wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        fr0.a(cancellableContinuationImpl, JobKt__JobKt.k(this, false, new pu8(cancellableContinuationImpl), 1, null));
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }

    public final Object F(Object obj) throws Throwable {
        Throwable thV = null;
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof b) {
                synchronized (state$kotlinx_coroutines_core) {
                    if (((b) state$kotlinx_coroutines_core).k()) {
                        return q95.d;
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
                        H(((b) state$kotlinx_coroutines_core).b(), thE);
                    }
                    return q95.a;
                }
            }
            if (!(state$kotlinx_coroutines_core instanceof dz4)) {
                return q95.d;
            }
            if (thV == null) {
                thV = v(obj);
            }
            dz4 dz4Var = (dz4) state$kotlinx_coroutines_core;
            if (!dz4Var.isActive()) {
                Object objS = S(state$kotlinx_coroutines_core, new vb1(thV, false, 2, null));
                if (objS == q95.a) {
                    throw new IllegalStateException(("Cannot happen in " + state$kotlinx_coroutines_core).toString());
                }
                if (objS != q95.c) {
                    return objS;
                }
            } else if (R(dz4Var, thV)) {
                return q95.a;
            }
        }
    }

    public final wv0 G(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.l();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.k();
            if (!lockFreeLinkedListNode.p()) {
                if (lockFreeLinkedListNode instanceof wv0) {
                    return (wv0) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof f17) {
                    return null;
                }
            }
        }
    }

    public final void H(f17 f17Var, Throwable th) throws Throwable {
        onCancelling(th);
        f17Var.f(4);
        Object objJ = f17Var.j();
        y45.h(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeK = (LockFreeLinkedListNode) objJ; !y45.e(lockFreeLinkedListNodeK, f17Var); lockFreeLinkedListNodeK = lockFreeLinkedListNodeK.k()) {
            if ((lockFreeLinkedListNodeK instanceof o95) && ((o95) lockFreeLinkedListNodeK).u()) {
                try {
                    ((o95) lockFreeLinkedListNodeK).v(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ue3.a(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNodeK + " for " + this, th2);
                        zfb zfbVar = zfb.a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
        s(th);
    }

    public final void I(f17 f17Var, Throwable th) throws Throwable {
        f17Var.f(1);
        Object objJ = f17Var.j();
        y45.h(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeK = (LockFreeLinkedListNode) objJ; !y45.e(lockFreeLinkedListNodeK, f17Var); lockFreeLinkedListNodeK = lockFreeLinkedListNodeK.k()) {
            if (lockFreeLinkedListNodeK instanceof o95) {
                try {
                    ((o95) lockFreeLinkedListNodeK).v(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ue3.a(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNodeK + " for " + this, th2);
                        zfb zfbVar = zfb.a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
    }

    public final Object J(Object obj, Object obj2) throws Throwable {
        if (obj2 instanceof vb1) {
            throw ((vb1) obj2).a;
        }
        return obj2;
    }

    public final void K(xa9 xa9Var, Object obj) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof dz4)) {
                if (!(state$kotlinx_coroutines_core instanceof vb1)) {
                    state$kotlinx_coroutines_core = q95.h(state$kotlinx_coroutines_core);
                }
                xa9Var.c(state$kotlinx_coroutines_core);
                return;
            }
        } while (O(state$kotlinx_coroutines_core) < 0);
        xa9Var.b(JobKt__JobKt.k(this, false, new c(xa9Var), 1, null));
    }

    public final void L(l93 l93Var) {
        f17 f17Var = new f17();
        Object az4Var = f17Var;
        if (!l93Var.isActive()) {
            az4Var = new az4(f17Var);
        }
        u3.a(_state$volatile$FU, this, l93Var, az4Var);
    }

    public final void M(o95 o95Var) {
        o95Var.e(new f17());
        u3.a(_state$volatile$FU, this, o95Var, o95Var.k());
    }

    public final void N(xa9 xa9Var, Object obj) {
        if (C()) {
            xa9Var.b(JobKt__JobKt.k(this, false, new d(xa9Var), 1, null));
        } else {
            xa9Var.c(zfb.a);
        }
    }

    public final int O(Object obj) {
        if (obj instanceof l93) {
            if (((l93) obj).isActive()) {
                return 0;
            }
            if (!u3.a(_state$volatile$FU, this, obj, q95.g)) {
                return -1;
            }
            onStart();
            return 1;
        }
        if (!(obj instanceof az4)) {
            return 0;
        }
        if (!u3.a(_state$volatile$FU, this, obj, ((az4) obj).b())) {
            return -1;
        }
        onStart();
        return 1;
    }

    public final String P(Object obj) {
        if (!(obj instanceof b)) {
            if (obj instanceof dz4) {
                return ((dz4) obj).isActive() ? "Active" : "New";
            }
            return obj instanceof vb1 ? "Cancelled" : "Completed";
        }
        b bVar = (b) obj;
        if (bVar.i()) {
            return "Cancelling";
        }
        return bVar.j() ? "Completing" : "Active";
    }

    public final boolean Q(dz4 dz4Var, Object obj) throws Throwable {
        if (!u3.a(_state$volatile$FU, this, dz4Var, q95.g(obj))) {
            return false;
        }
        onCancelling(null);
        onCompletionInternal(obj);
        t(dz4Var, obj);
        return true;
    }

    public final boolean R(dz4 dz4Var, Throwable th) throws Throwable {
        f17 f17VarZ = z(dz4Var);
        if (f17VarZ == null) {
            return false;
        }
        if (!u3.a(_state$volatile$FU, this, dz4Var, new b(f17VarZ, false, th))) {
            return false;
        }
        H(f17VarZ, th);
        return true;
    }

    public final Object S(Object obj, Object obj2) {
        if (!(obj instanceof dz4)) {
            return q95.a;
        }
        if ((!(obj instanceof l93) && !(obj instanceof o95)) || (obj instanceof wv0) || (obj2 instanceof vb1)) {
            return T((dz4) obj, obj2);
        }
        return Q((dz4) obj, obj2) ? obj2 : q95.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public final Object T(dz4 dz4Var, Object obj) throws Throwable {
        f17 f17VarZ = z(dz4Var);
        if (f17VarZ == null) {
            return q95.c;
        }
        b bVar = dz4Var instanceof b ? (b) dz4Var : null;
        if (bVar == null) {
            bVar = new b(f17VarZ, false, null);
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (bVar) {
            if (bVar.j()) {
                return q95.a;
            }
            bVar.m(true);
            if (bVar != dz4Var && !u3.a(_state$volatile$FU, this, dz4Var, bVar)) {
                return q95.c;
            }
            boolean zI = bVar.i();
            vb1 vb1Var = obj instanceof vb1 ? (vb1) obj : null;
            if (vb1Var != null) {
                bVar.a(vb1Var.a);
            }
            ?? E = zI ? 0 : bVar.e();
            ref$ObjectRef.element = E;
            zfb zfbVar = zfb.a;
            if (E != 0) {
                H(f17VarZ, E);
            }
            wv0 wv0VarG = G(f17VarZ);
            if (wv0VarG != null && U(bVar, wv0VarG, obj)) {
                return q95.b;
            }
            f17VarZ.f(2);
            wv0 wv0VarG2 = G(f17VarZ);
            return (wv0VarG2 == null || !U(bVar, wv0VarG2, obj)) ? w(bVar, obj) : q95.b;
        }
    }

    public final boolean U(b bVar, wv0 wv0Var, Object obj) {
        while (n95.j(wv0Var.f, false, new a(this, bVar, wv0Var, obj)) == k17.b) {
            wv0Var = G(wv0Var);
            if (wv0Var == null) {
                return false;
            }
        }
        return true;
    }

    public void afterCompletion(Object obj) {
    }

    @Override
    public final vv0 attachChild(xv0 xv0Var) {
        wv0 wv0Var = new wv0(xv0Var);
        wv0Var.w(this);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof l93) {
                l93 l93Var = (l93) state$kotlinx_coroutines_core;
                if (!l93Var.isActive()) {
                    L(l93Var);
                } else if (u3.a(_state$volatile$FU, this, state$kotlinx_coroutines_core, wv0Var)) {
                    break;
                }
            } else {
                Throwable thE = null;
                if (!(state$kotlinx_coroutines_core instanceof dz4)) {
                    Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
                    vb1 vb1Var = state$kotlinx_coroutines_core2 instanceof vb1 ? (vb1) state$kotlinx_coroutines_core2 : null;
                    wv0Var.v(vb1Var != null ? vb1Var.a : null);
                    return k17.b;
                }
                f17 f17VarB = ((dz4) state$kotlinx_coroutines_core).b();
                if (f17VarB != null) {
                    if (!f17VarB.c(wv0Var, 7)) {
                        boolean zC = f17VarB.c(wv0Var, 3);
                        Object state$kotlinx_coroutines_core3 = getState$kotlinx_coroutines_core();
                        if (state$kotlinx_coroutines_core3 instanceof b) {
                            thE = ((b) state$kotlinx_coroutines_core3).e();
                        } else {
                            vb1 vb1Var2 = state$kotlinx_coroutines_core3 instanceof vb1 ? (vb1) state$kotlinx_coroutines_core3 : null;
                            if (vb1Var2 != null) {
                                thE = vb1Var2.a;
                            }
                        }
                        wv0Var.v(thE);
                        if (zC) {
                            break;
                        }
                        return k17.b;
                    }
                    break;
                }
                y45.h(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                M((o95) state$kotlinx_coroutines_core);
            }
        }
        return wv0Var;
    }

    public final Object awaitInternal(wh1<Object> wh1Var) throws Throwable {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof dz4)) {
                if (state$kotlinx_coroutines_core instanceof vb1) {
                    throw ((vb1) state$kotlinx_coroutines_core).a;
                }
                return q95.h(state$kotlinx_coroutines_core);
            }
        } while (O(state$kotlinx_coroutines_core) < 0);
        return q(wh1Var);
    }

    public void cancel() {
        cancel((CancellationException) null);
    }

    public final boolean cancelCoroutine(Throwable th) {
        return cancelImpl$kotlinx_coroutines_core(th);
    }

    public final boolean cancelImpl$kotlinx_coroutines_core(Object obj) throws Throwable {
        Object objF = q95.a;
        if (getOnCancelComplete$kotlinx_coroutines_core() && (objF = r(obj)) == q95.b) {
            return true;
        }
        if (objF == q95.a) {
            objF = F(obj);
        }
        if (objF == q95.a || objF == q95.b) {
            return true;
        }
        if (objF == q95.d) {
            return false;
        }
        afterCompletion(objF);
        return true;
    }

    public void cancelInternal(Throwable th) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(th);
    }

    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(th) && getHandlesException$kotlinx_coroutines_core();
    }

    public final JobCancellationException defaultCancellationException$kotlinx_coroutines_core(String str, Throwable th) {
        if (str == null) {
            str = cancellationExceptionMessage();
        }
        return new JobCancellationException(str, th, this);
    }

    @Override
    public <R> R fold(R r, s74 s74Var) {
        return (R) j.a.c(this, r, s74Var);
    }

    @Override
    public <E extends kotlin.coroutines.d.b> E get(kotlin.coroutines.d.c cVar) {
        return (E) j.a.d(this, cVar);
    }

    @Override
    public final CancellationException getCancellationException() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof b)) {
            if (state$kotlinx_coroutines_core instanceof dz4) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (state$kotlinx_coroutines_core instanceof vb1) {
                return toCancellationException$default(this, ((vb1) state$kotlinx_coroutines_core).a, null, 1, null);
            }
            return new JobCancellationException(qt1.a(this) + " has completed normally", null, this);
        }
        Throwable thE = ((b) state$kotlinx_coroutines_core).e();
        if (thE != null) {
            CancellationException cancellationException = toCancellationException(thE, qt1.a(this) + " is cancelling");
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
        } else if (state$kotlinx_coroutines_core instanceof vb1) {
            thE = ((vb1) state$kotlinx_coroutines_core).a;
        } else {
            if (state$kotlinx_coroutines_core instanceof dz4) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + state$kotlinx_coroutines_core).toString());
            }
            thE = null;
        }
        CancellationException cancellationException = thE instanceof CancellationException ? (CancellationException) thE : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new JobCancellationException("Parent job is " + P(state$kotlinx_coroutines_core), thE, this);
    }

    @Override
    public final pc9 getChildren() {
        return tc9.b(new JobSupport$children$1(this, null));
    }

    public final Object getCompletedInternal$kotlinx_coroutines_core() throws Throwable {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof dz4) {
            throw new IllegalStateException("This job has not completed yet");
        }
        if (state$kotlinx_coroutines_core instanceof vb1) {
            throw ((vb1) state$kotlinx_coroutines_core).a;
        }
        return q95.h(state$kotlinx_coroutines_core);
    }

    public final Throwable getCompletionCause() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof b) {
            Throwable thE = ((b) state$kotlinx_coroutines_core).e();
            if (thE != null) {
                return thE;
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(state$kotlinx_coroutines_core instanceof dz4)) {
            if (state$kotlinx_coroutines_core instanceof vb1) {
                return ((vb1) state$kotlinx_coroutines_core).a;
            }
            return null;
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    public final boolean getCompletionCauseHandled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof vb1) && ((vb1) state$kotlinx_coroutines_core).a();
    }

    public final Throwable getCompletionExceptionOrNull() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof dz4) {
            throw new IllegalStateException("This job has not completed yet");
        }
        return x(state$kotlinx_coroutines_core);
    }

    public boolean getHandlesException$kotlinx_coroutines_core() {
        return true;
    }

    @Override
    public final kotlin.coroutines.d.c getKey() {
        return j.B6;
    }

    public final ua9 getOnAwaitInternal() {
        JobSupport$onAwaitInternal$1 jobSupport$onAwaitInternal$1 = JobSupport$onAwaitInternal$1.INSTANCE;
        y45.h(jobSupport$onAwaitInternal$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        u74 u74Var = (u74) ccb.f(jobSupport$onAwaitInternal$1, 3);
        JobSupport$onAwaitInternal$2 jobSupport$onAwaitInternal$2 = JobSupport$onAwaitInternal$2.INSTANCE;
        y45.h(jobSupport$onAwaitInternal$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new va9(this, u74Var, (u74) ccb.f(jobSupport$onAwaitInternal$2, 3), null, 8, null);
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    @Override
    public final sa9 getOnJoin() {
        JobSupport$onJoin$1 jobSupport$onJoin$1 = JobSupport$onJoin$1.INSTANCE;
        y45.h(jobSupport$onJoin$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new ta9(this, (u74) ccb.f(jobSupport$onJoin$1, 3), null, 4, null);
    }

    public j getParent() {
        vv0 parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            return parentHandle$kotlinx_coroutines_core.getParent();
        }
        return null;
    }

    public final vv0 getParentHandle$kotlinx_coroutines_core() {
        return (vv0) _parentHandle$volatile$FU.get(this);
    }

    public final Object getState$kotlinx_coroutines_core() {
        return _state$volatile$FU.get(this);
    }

    public boolean handleJobException(Throwable th) {
        return false;
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(Throwable th) throws Throwable {
        throw th;
    }

    public final void initParentJob(j jVar) {
        if (jVar == null) {
            setParentHandle$kotlinx_coroutines_core(k17.b);
            return;
        }
        jVar.start();
        vv0 vv0VarAttachChild = jVar.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(vv0VarAttachChild);
        if (isCompleted()) {
            vv0VarAttachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(k17.b);
        }
    }

    @Override
    public final uc2 invokeOnCompletion(e74 e74Var) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(true, new k55(e74Var));
    }

    public final uc2 invokeOnCompletionInternal$kotlinx_coroutines_core(boolean z, o95 o95Var) {
        boolean z2;
        boolean zC;
        o95Var.w(this);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            z2 = true;
            if (!(state$kotlinx_coroutines_core instanceof l93)) {
                if (!(state$kotlinx_coroutines_core instanceof dz4)) {
                    z2 = false;
                    break;
                }
                dz4 dz4Var = (dz4) state$kotlinx_coroutines_core;
                f17 f17VarB = dz4Var.b();
                if (f17VarB == null) {
                    y45.h(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    M((o95) state$kotlinx_coroutines_core);
                } else {
                    if (o95Var.u()) {
                        b bVar = dz4Var instanceof b ? (b) dz4Var : null;
                        Throwable thE = bVar != null ? bVar.e() : null;
                        if (thE != null) {
                            if (z) {
                                o95Var.v(thE);
                            }
                            return k17.b;
                        }
                        zC = f17VarB.c(o95Var, 5);
                    } else {
                        zC = f17VarB.c(o95Var, 1);
                    }
                    if (zC) {
                        break;
                    }
                }
            } else {
                l93 l93Var = (l93) state$kotlinx_coroutines_core;
                if (!l93Var.isActive()) {
                    L(l93Var);
                } else if (u3.a(_state$volatile$FU, this, state$kotlinx_coroutines_core, o95Var)) {
                    break;
                }
            }
        }
        if (z2) {
            return o95Var;
        }
        if (z) {
            Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
            vb1 vb1Var = state$kotlinx_coroutines_core2 instanceof vb1 ? (vb1) state$kotlinx_coroutines_core2 : null;
            o95Var.v(vb1Var != null ? vb1Var.a : null);
        }
        return k17.b;
    }

    @Override
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof dz4) && ((dz4) state$kotlinx_coroutines_core).isActive();
    }

    public final boolean isCancelled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof vb1) || ((state$kotlinx_coroutines_core instanceof b) && ((b) state$kotlinx_coroutines_core).i());
    }

    @Override
    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof dz4);
    }

    public final boolean isCompletedExceptionally() {
        return getState$kotlinx_coroutines_core() instanceof vb1;
    }

    public boolean isScopedCoroutine() {
        return false;
    }

    @Override
    public final Object join(wh1<? super zfb> wh1Var) {
        if (C()) {
            Object objE = E(wh1Var);
            return objE == z45.f() ? objE : zfb.a;
        }
        n95.h(wh1Var.getContext());
        return zfb.a;
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(Object obj) {
        Object objS;
        do {
            objS = S(getState$kotlinx_coroutines_core(), obj);
            if (objS == q95.a) {
                return false;
            }
            if (objS == q95.b) {
                return true;
            }
        } while (objS == q95.c);
        afterCompletion(objS);
        return true;
    }

    public final Object makeCompletingOnce$kotlinx_coroutines_core(Object obj) {
        Object objS;
        do {
            objS = S(getState$kotlinx_coroutines_core(), obj);
            if (objS == q95.a) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, x(obj));
            }
        } while (objS == q95.c);
        return objS;
    }

    @Override
    public kotlin.coroutines.d minusKey(kotlin.coroutines.d.c cVar) {
        return j.a.e(this, cVar);
    }

    public String nameString$kotlinx_coroutines_core() {
        return qt1.a(this);
    }

    public void onCancelling(Throwable th) {
    }

    public void onCompletionInternal(Object obj) {
    }

    public void onStart() {
    }

    public final void p(Throwable th, List list) throws IllegalAccessException, InvocationTargetException {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Throwable th2 = (Throwable) it.next();
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                ue3.a(th, th2);
            }
        }
    }

    @Override
    public final void parentCancelled(nw7 nw7Var) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(nw7Var);
    }

    @Override
    public kotlin.coroutines.d plus(kotlin.coroutines.d dVar) {
        return j.a.f(this, dVar);
    }

    public final Object q(wh1 wh1Var) {
        AwaitContinuation awaitContinuation = new AwaitContinuation(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), this);
        awaitContinuation.initCancellability();
        fr0.a(awaitContinuation, JobKt__JobKt.k(this, false, new ou8(awaitContinuation), 1, null));
        Object result = awaitContinuation.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public final Object r(Object obj) {
        Object objS;
        do {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof dz4) || ((state$kotlinx_coroutines_core instanceof b) && ((b) state$kotlinx_coroutines_core).j())) {
                return q95.a;
            }
            objS = S(state$kotlinx_coroutines_core, new vb1(v(obj), false, 2, null));
        } while (objS == q95.c);
        return objS;
    }

    public final void removeNode$kotlinx_coroutines_core(o95 o95Var) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof o95)) {
                if (!(state$kotlinx_coroutines_core instanceof dz4) || ((dz4) state$kotlinx_coroutines_core).b() == null) {
                    return;
                }
                o95Var.q();
                return;
            }
            if (state$kotlinx_coroutines_core != o95Var) {
                return;
            }
        } while (!u3.a(_state$volatile$FU, this, state$kotlinx_coroutines_core, q95.g));
    }

    public final boolean s(Throwable th) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        vv0 parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core == null || parentHandle$kotlinx_coroutines_core == k17.b) {
            return z;
        }
        return parentHandle$kotlinx_coroutines_core.a(th) || z;
    }

    public final void setParentHandle$kotlinx_coroutines_core(vv0 vv0Var) {
        _parentHandle$volatile$FU.set(this, vv0Var);
    }

    @Override
    public final boolean start() {
        int iO;
        do {
            iO = O(getState$kotlinx_coroutines_core());
            if (iO == 0) {
                return false;
            }
        } while (iO != 1);
        return true;
    }

    public final void t(dz4 dz4Var, Object obj) throws Throwable {
        vv0 parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(k17.b);
        }
        vb1 vb1Var = obj instanceof vb1 ? (vb1) obj : null;
        Throwable th = vb1Var != null ? vb1Var.a : null;
        if (!(dz4Var instanceof o95)) {
            f17 f17VarB = dz4Var.b();
            if (f17VarB != null) {
                I(f17VarB, th);
                return;
            }
            return;
        }
        try {
            ((o95) dz4Var).v(th);
        } catch (Throwable th2) {
            handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + dz4Var + " for " + this, th2));
        }
    }

    public final CancellationException toCancellationException(Throwable th, String str) {
        CancellationException jobCancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (jobCancellationException == null) {
            if (str == null) {
                str = cancellationExceptionMessage();
            }
            jobCancellationException = new JobCancellationException(str, th, this);
        }
        return jobCancellationException;
    }

    public final String toDebugString() {
        return nameString$kotlinx_coroutines_core() + '{' + P(getState$kotlinx_coroutines_core()) + '}';
    }

    public String toString() {
        return toDebugString() + '@' + qt1.b(this);
    }

    public final void u(b bVar, wv0 wv0Var, Object obj) {
        wv0 wv0VarG = G(wv0Var);
        if (wv0VarG == null || !U(bVar, wv0VarG, obj)) {
            bVar.b().f(2);
            wv0 wv0VarG2 = G(wv0Var);
            if (wv0VarG2 == null || !U(bVar, wv0VarG2, obj)) {
                afterCompletion(w(bVar, obj));
            }
        }
    }

    public final Throwable v(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(cancellationExceptionMessage(), null, this) : th;
        }
        y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((nw7) obj).getChildJobCancellationCause();
    }

    public final Object w(b bVar, Object obj) throws Throwable {
        boolean zI;
        Throwable thY;
        vb1 vb1Var = obj instanceof vb1 ? (vb1) obj : null;
        Throwable th = vb1Var != null ? vb1Var.a : null;
        synchronized (bVar) {
            zI = bVar.i();
            List listL = bVar.l(th);
            thY = y(bVar, listL);
            if (thY != null) {
                p(thY, listL);
            }
        }
        if (thY != null && thY != th) {
            obj = new vb1(thY, false, 2, null);
        }
        if (thY != null && (s(thY) || handleJobException(thY))) {
            y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((vb1) obj).c();
        }
        if (!zI) {
            onCancelling(thY);
        }
        onCompletionInternal(obj);
        u3.a(_state$volatile$FU, this, bVar, q95.g(obj));
        t(bVar, obj);
        return obj;
    }

    public final Throwable x(Object obj) {
        vb1 vb1Var = obj instanceof vb1 ? (vb1) obj : null;
        if (vb1Var != null) {
            return vb1Var.a;
        }
        return null;
    }

    public final Throwable y(b bVar, List list) {
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
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            for (Object obj2 : list2) {
                Throwable th3 = (Throwable) obj2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public final f17 z(dz4 dz4Var) {
        f17 f17VarB = dz4Var.b();
        if (f17VarB != null) {
            return f17VarB;
        }
        if (dz4Var instanceof l93) {
            return new f17();
        }
        if (dz4Var instanceof o95) {
            M((o95) dz4Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + dz4Var).toString());
    }

    public boolean cancel(Throwable th) throws Throwable {
        Throwable jobCancellationException;
        if (th == null || (jobCancellationException = toCancellationException$default(this, th, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(jobCancellationException);
        return true;
    }

    public j plus(j jVar) {
        return j.a.g(this, jVar);
    }

    @Override
    public final uc2 invokeOnCompletion(boolean z, boolean z2, e74 e74Var) {
        o95 k55Var;
        if (z) {
            k55Var = new j55(e74Var);
        } else {
            k55Var = new k55(e74Var);
        }
        return invokeOnCompletionInternal$kotlinx_coroutines_core(z2, k55Var);
    }

    @Override
    public void cancel(CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }
}
