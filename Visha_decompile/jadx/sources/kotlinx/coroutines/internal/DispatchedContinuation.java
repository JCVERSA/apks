package kotlinx.coroutines.internal;

import com.transsion.livecaption.constant.ICode;
import defpackage.cr0;
import defpackage.dia;
import defpackage.e74;
import defpackage.ek1;
import defpackage.fia;
import defpackage.j05;
import defpackage.jc2;
import defpackage.ok1;
import defpackage.qt1;
import defpackage.sfb;
import defpackage.u3;
import defpackage.wb1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y7a;
import defpackage.yd3;
import defpackage.zfb;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.d;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.c;
import kotlinx.coroutines.j;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0019H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010!\u001a\u0004\u0018\u00010\u001e2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u001dH\u0000¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u001eH\u0000¢\u0006\u0004\b#\u0010$J\u0011\u0010)\u001a\u0004\u0018\u00010&H\u0010¢\u0006\u0004\b'\u0010(J\u001d\u0010,\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0016¢\u0006\u0004\b,\u0010-J\u001e\u0010/\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0080\b¢\u0006\u0004\b.\u0010-J\u001a\u00103\u001a\u00020\u000f2\b\u00100\u001a\u0004\u0018\u00010&H\u0080\b¢\u0006\u0004\b1\u00102J\u001e\u00105\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0080\b¢\u0006\u0004\b4\u0010-J\u001f\u0010;\u001a\u00020\u00132\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00028\u0000H\u0000¢\u0006\u0004\b9\u0010:J\u000f\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b=\u0010>R\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010?R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010@R\u001e\u0010A\u001a\u0004\u0018\u00010&8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bA\u0010B\u0012\u0004\bC\u0010\u0015R\u0014\u0010D\u001a\u00020&8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\bD\u0010BR\u001a\u0010F\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bE\u0010\u001bR\u001c\u0010I\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010KR\u0013\u0010N\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0M8\u0002X\u0082\u0004R\u000b\u00107\u001a\u0002068\u0016X\u0096\u0005¨\u0006O"}, d2 = {"Lkotlinx/coroutines/internal/DispatchedContinuation;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lok1;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lwh1;", "Lkotlinx/coroutines/c;", "dispatcher", "continuation", MethodDecl.initName, "(Lkotlinx/coroutines/c;Lwh1;)V", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", "isReusable$kotlinx_coroutines_core", "()Z", "isReusable", "Lzfb;", "awaitReusability$kotlinx_coroutines_core", "()V", "awaitReusability", "release$kotlinx_coroutines_core", "release", "Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation$kotlinx_coroutines_core", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation", "Lcr0;", "", "tryReleaseClaimedContinuation$kotlinx_coroutines_core", "(Lcr0;)Ljava/lang/Throwable;", "tryReleaseClaimedContinuation", "cause", "postponeCancellation$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)Z", "postponeCancellation", "", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "resumeCancellableWith$kotlinx_coroutines_core", "resumeCancellableWith", ICode.CALL.CALL_KEY_STATE, "resumeCancelled$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "resumeCancelled", "resumeUndispatchedWith$kotlinx_coroutines_core", "resumeUndispatchedWith", "Lkotlin/coroutines/d;", "context", ES6Iterator.VALUE_PROPERTY, "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/d;Ljava/lang/Object;)V", "dispatchYield", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/c;", "Lwh1;", "_state", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "countOrElement", "getReusableCancellableContinuation", "reusableCancellableContinuation", "getCallerFrame", "()Lok1;", "callerFrame", "getDelegate$kotlinx_coroutines_core", "()Lwh1;", "delegate", "Lkotlinx/atomicfu/AtomicRef;", "_reusableCancellableContinuation", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements ok1, wh1<T> {
    private static final AtomicReferenceFieldUpdater _reusableCancellableContinuation$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile Object _reusableCancellableContinuation$volatile;
    public Object _state;
    public final wh1<T> continuation;
    public final Object countOrElement;
    public final c dispatcher;

    /* JADX WARN: Multi-variable type inference failed */
    public DispatchedContinuation(c cVar, wh1<? super T> wh1Var) {
        super(-1);
        this.dispatcher = cVar;
        this.continuation = wh1Var;
        this._state = jc2.a;
        this.countOrElement = dia.g(getContext());
    }

    private final CancellableContinuationImpl<?> getReusableCancellableContinuation() {
        Object obj = _reusableCancellableContinuation$volatile$FU.get(this);
        if (obj instanceof CancellableContinuationImpl) {
            return (CancellableContinuationImpl) obj;
        }
        return null;
    }

    private final Object get_reusableCancellableContinuation$volatile() {
        return this._reusableCancellableContinuation$volatile;
    }

    public static void get_state$kotlinx_coroutines_core$annotations() {
    }

    private final void loop$atomicfu(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, e74 e74Var) {
        while (true) {
            e74Var.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final void set_reusableCancellableContinuation$volatile(Object obj) {
        this._reusableCancellableContinuation$volatile = obj;
    }

    public final void awaitReusability$kotlinx_coroutines_core() {
        while (_reusableCancellableContinuation$volatile$FU.get(this) == jc2.b) {
        }
    }

    public final CancellableContinuationImpl<T> claimReusableCancellableContinuation$kotlinx_coroutines_core() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                _reusableCancellableContinuation$volatile$FU.set(this, jc2.b);
                return null;
            }
            if (obj instanceof CancellableContinuationImpl) {
                if (u3.a(_reusableCancellableContinuation$volatile$FU, this, obj, jc2.b)) {
                    return (CancellableContinuationImpl) obj;
                }
            } else if (obj != jc2.b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final void dispatchYield$kotlinx_coroutines_core(d context, T value) {
        this._state = value;
        this.resumeMode = 1;
        this.dispatcher.dispatchYield(context, this);
    }

    @Override
    public ok1 getCallerFrame() {
        wh1<T> wh1Var = this.continuation;
        if (wh1Var instanceof ok1) {
            return (ok1) wh1Var;
        }
        return null;
    }

    @Override
    public d getContext() {
        return this.continuation.getContext();
    }

    @Override
    public wh1<T> getDelegate$kotlinx_coroutines_core() {
        return this;
    }

    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final boolean isReusable$kotlinx_coroutines_core() {
        return _reusableCancellableContinuation$volatile$FU.get(this) != null;
    }

    public final boolean postponeCancellation$kotlinx_coroutines_core(Throwable cause) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            y7a y7aVar = jc2.b;
            if (y45.e(obj, y7aVar)) {
                if (u3.a(_reusableCancellableContinuation$volatile$FU, this, y7aVar, cause)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (u3.a(_reusableCancellableContinuation$volatile$FU, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void release$kotlinx_coroutines_core() {
        awaitReusability$kotlinx_coroutines_core();
        CancellableContinuationImpl<?> reusableCancellableContinuation = getReusableCancellableContinuation();
        if (reusableCancellableContinuation != null) {
            reusableCancellableContinuation.detachChild$kotlinx_coroutines_core();
        }
    }

    public final void resumeCancellableWith$kotlinx_coroutines_core(Object result) {
        Object objB = wb1.b(result);
        if (this.dispatcher.isDispatchNeeded(getContext())) {
            this._state = objB;
            this.resumeMode = 1;
            this.dispatcher.dispatch(getContext(), this);
            return;
        }
        yd3 yd3VarB = fia.a.b();
        if (yd3VarB.isUnconfinedLoopActive()) {
            this._state = objB;
            this.resumeMode = 1;
            yd3VarB.dispatchUnconfined(this);
            return;
        }
        yd3VarB.incrementUseCount(true);
        try {
            j jVar = (j) getContext().get(j.B6);
            if (jVar == null || jVar.isActive()) {
                wh1<T> wh1Var = this.continuation;
                Object obj = this.countOrElement;
                d context = wh1Var.getContext();
                Object objI = dia.i(context, obj);
                sfb sfbVarM = objI != dia.a ? ek1.m(wh1Var, context, objI) : null;
                try {
                    this.continuation.resumeWith(result);
                    zfb zfbVar = zfb.a;
                    j05.b(1);
                    if (sfbVarM == null || sfbVarM.V()) {
                        dia.f(context, objI);
                    }
                    j05.a(1);
                } finally {
                    j05.b(1);
                    if (sfbVarM == null || sfbVarM.V()) {
                        dia.f(context, objI);
                    }
                    j05.a(1);
                }
            } else {
                CancellationException cancellationException = jVar.getCancellationException();
                cancelCompletedResult$kotlinx_coroutines_core(objB, cancellationException);
                Result.Companion companion = Result.INSTANCE;
                resumeWith(Result.m279constructorimpl(kotlin.c.a(cancellationException)));
            }
            while (yd3VarB.processUnconfinedEvent()) {
            }
            j05.b(1);
        } catch (Throwable th) {
            try {
                handleFatalException$kotlinx_coroutines_core(th);
                j05.b(1);
            } finally {
                j05.b(1);
                yd3VarB.decrementUseCount(true);
                j05.a(1);
            }
        }
    }

    public final boolean resumeCancelled$kotlinx_coroutines_core(Object state) {
        j jVar = (j) getContext().get(j.B6);
        if (jVar == null || jVar.isActive()) {
            return false;
        }
        CancellationException cancellationException = jVar.getCancellationException();
        cancelCompletedResult$kotlinx_coroutines_core(state, cancellationException);
        Result.Companion companion = Result.INSTANCE;
        resumeWith(Result.m279constructorimpl(kotlin.c.a(cancellationException)));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0029 A[DONT_GENERATE] */
    public final void resumeUndispatchedWith$kotlinx_coroutines_core(Object result) {
        wh1<T> wh1Var = this.continuation;
        Object obj = this.countOrElement;
        d context = wh1Var.getContext();
        Object objI = dia.i(context, obj);
        sfb sfbVarM = objI != dia.a ? ek1.m(wh1Var, context, objI) : null;
        try {
            this.continuation.resumeWith(result);
            zfb zfbVar = zfb.a;
        } finally {
            j05.b(1);
            if (sfbVarM == null || sfbVarM.V()) {
                dia.f(context, objI);
            }
            j05.a(1);
        }
    }

    @Override
    public void resumeWith(Object result) {
        Object objB = wb1.b(result);
        if (this.dispatcher.isDispatchNeeded(getContext())) {
            this._state = objB;
            this.resumeMode = 0;
            this.dispatcher.dispatch(getContext(), this);
            return;
        }
        yd3 yd3VarB = fia.a.b();
        if (yd3VarB.isUnconfinedLoopActive()) {
            this._state = objB;
            this.resumeMode = 0;
            yd3VarB.dispatchUnconfined(this);
            return;
        }
        yd3VarB.incrementUseCount(true);
        try {
            d context = getContext();
            Object objI = dia.i(context, this.countOrElement);
            try {
                this.continuation.resumeWith(result);
                zfb zfbVar = zfb.a;
                dia.f(context, objI);
                while (yd3VarB.processUnconfinedEvent()) {
                }
            } catch (Throwable th) {
                dia.f(context, objI);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                handleFatalException$kotlinx_coroutines_core(th2);
            } finally {
                yd3VarB.decrementUseCount(true);
            }
        }
    }

    @Override
    public Object takeState$kotlinx_coroutines_core() {
        Object obj = this._state;
        this._state = jc2.a;
        return obj;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.dispatcher + ", " + qt1.c(this.continuation) + ']';
    }

    public final Throwable tryReleaseClaimedContinuation$kotlinx_coroutines_core(cr0 continuation) {
        y7a y7aVar;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$volatile$FU;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            y7aVar = jc2.b;
            if (obj != y7aVar) {
                if (obj instanceof Throwable) {
                    if (u3.a(_reusableCancellableContinuation$volatile$FU, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!u3.a(_reusableCancellableContinuation$volatile$FU, this, y7aVar, continuation));
        return null;
    }
}
