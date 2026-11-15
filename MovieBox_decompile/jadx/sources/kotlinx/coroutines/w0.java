package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.DispatchedContinuation;

public abstract class w0 {
    public static final void a(DispatchedTask dispatchedTask, int i10) {
        Continuation delegate$kotlinx_coroutines_core = dispatchedTask.getDelegate$kotlinx_coroutines_core();
        boolean z10 = i10 == 4;
        if (z10 || !(delegate$kotlinx_coroutines_core instanceof DispatchedContinuation) || b(i10) != b(dispatchedTask.resumeMode)) {
            d(dispatchedTask, delegate$kotlinx_coroutines_core, z10);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) delegate$kotlinx_coroutines_core;
        i0 i0Var = dispatchedContinuation.dispatcher;
        CoroutineContext f64063a = dispatchedContinuation.getContext();
        if (i0Var.isDispatchNeeded(f64063a)) {
            i0Var.dispatch(f64063a, dispatchedTask);
        } else {
            e(dispatchedTask);
        }
    }

    public static final boolean b(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public static final boolean c(int i10) {
        return i10 == 2;
    }

    public static final void d(DispatchedTask dispatchedTask, Continuation continuation, boolean z10) {
        Object successfulResult$kotlinx_coroutines_core;
        Object objTakeState$kotlinx_coroutines_core = dispatchedTask.takeState$kotlinx_coroutines_core();
        Throwable exceptionalResult$kotlinx_coroutines_core = dispatchedTask.getExceptionalResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            Result.Companion companion = Result.INSTANCE;
            successfulResult$kotlinx_coroutines_core = ResultKt.a(exceptionalResult$kotlinx_coroutines_core);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            successfulResult$kotlinx_coroutines_core = dispatchedTask.getSuccessfulResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core);
        }
        Object objM453constructorimpl = Result.m453constructorimpl(successfulResult$kotlinx_coroutines_core);
        if (!z10) {
            continuation.resumeWith(objM453constructorimpl);
            return;
        }
        Intrinsics.f(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        Continuation<T> continuation2 = dispatchedContinuation.continuation;
        Object obj = dispatchedContinuation.countOrElement;
        CoroutineContext f64063a = continuation2.getContext();
        Object objI = kotlinx.coroutines.internal.g0.i(f64063a, obj);
        q2 q2VarM = objI != kotlinx.coroutines.internal.g0.f64886a ? g0.m(continuation2, f64063a, objI) : null;
        try {
            dispatchedContinuation.continuation.resumeWith(objM453constructorimpl);
            Unit unit = Unit.f64096a;
        } finally {
            if (q2VarM == null || q2VarM.U()) {
                kotlinx.coroutines.internal.g0.f(f64063a, objI);
            }
        }
    }

    private static final void e(DispatchedTask dispatchedTask) {
        e1 e1VarB = o2.f64935a.b();
        if (e1VarB.isUnconfinedLoopActive()) {
            e1VarB.dispatchUnconfined(dispatchedTask);
            return;
        }
        e1VarB.incrementUseCount(true);
        try {
            d(dispatchedTask, dispatchedTask.getDelegate$kotlinx_coroutines_core(), true);
            do {
            } while (e1VarB.processUnconfinedEvent());
        } catch (Throwable th2) {
            try {
                dispatchedTask.handleFatalException$kotlinx_coroutines_core(th2);
            } finally {
                e1VarB.decrementUseCount(true);
            }
        }
    }
}
