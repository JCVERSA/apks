package defpackage;

import kotlin.Result;
import kotlin.coroutines.d;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.c;
import kotlinx.coroutines.internal.DispatchedContinuation;

public abstract class kc2 {
    public static final void a(DispatchedTask dispatchedTask, int i) {
        wh1 delegate$kotlinx_coroutines_core = dispatchedTask.getDelegate$kotlinx_coroutines_core();
        boolean z = i == 4;
        if (z || !(delegate$kotlinx_coroutines_core instanceof DispatchedContinuation) || b(i) != b(dispatchedTask.resumeMode)) {
            d(dispatchedTask, delegate$kotlinx_coroutines_core, z);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) delegate$kotlinx_coroutines_core;
        c cVar = dispatchedContinuation.dispatcher;
        d context = dispatchedContinuation.getContext();
        if (cVar.isDispatchNeeded(context)) {
            cVar.dispatch(context, dispatchedTask);
        } else {
            e(dispatchedTask);
        }
    }

    public static final boolean b(int i) {
        return i == 1 || i == 2;
    }

    public static final boolean c(int i) {
        return i == 2;
    }

    public static final void d(DispatchedTask dispatchedTask, wh1 wh1Var, boolean z) {
        Object successfulResult$kotlinx_coroutines_core;
        Object objTakeState$kotlinx_coroutines_core = dispatchedTask.takeState$kotlinx_coroutines_core();
        Throwable exceptionalResult$kotlinx_coroutines_core = dispatchedTask.getExceptionalResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            Result.Companion companion = Result.INSTANCE;
            successfulResult$kotlinx_coroutines_core = kotlin.c.a(exceptionalResult$kotlinx_coroutines_core);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            successfulResult$kotlinx_coroutines_core = dispatchedTask.getSuccessfulResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core);
        }
        Object objM279constructorimpl = Result.m279constructorimpl(successfulResult$kotlinx_coroutines_core);
        if (!z) {
            wh1Var.resumeWith(objM279constructorimpl);
            return;
        }
        y45.h(wh1Var, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) wh1Var;
        wh1<T> wh1Var2 = dispatchedContinuation.continuation;
        Object obj = dispatchedContinuation.countOrElement;
        d context = wh1Var2.getContext();
        Object objI = dia.i(context, obj);
        sfb sfbVarM = objI != dia.a ? ek1.m(wh1Var2, context, objI) : null;
        try {
            dispatchedContinuation.continuation.resumeWith(objM279constructorimpl);
            zfb zfbVar = zfb.a;
        } finally {
            if (sfbVarM == null || sfbVarM.V()) {
                dia.f(context, objI);
            }
        }
    }

    public static final void e(DispatchedTask dispatchedTask) {
        yd3 yd3VarB = fia.a.b();
        if (yd3VarB.isUnconfinedLoopActive()) {
            yd3VarB.dispatchUnconfined(dispatchedTask);
            return;
        }
        yd3VarB.incrementUseCount(true);
        try {
            d(dispatchedTask, dispatchedTask.getDelegate$kotlinx_coroutines_core(), true);
            do {
            } while (yd3VarB.processUnconfinedEvent());
        } catch (Throwable th) {
            try {
                dispatchedTask.handleFatalException$kotlinx_coroutines_core(th);
            } finally {
                yd3VarB.decrementUseCount(true);
            }
        }
    }
}
