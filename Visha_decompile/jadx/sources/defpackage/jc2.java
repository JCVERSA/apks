package defpackage;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.d;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.j;

public abstract class jc2 {
    public static final y7a a = new y7a("UNDEFINED");
    public static final y7a b = new y7a("REUSABLE_CLAIMED");

    public static final void b(wh1 wh1Var, Object obj) {
        if (!(wh1Var instanceof DispatchedContinuation)) {
            wh1Var.resumeWith(obj);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) wh1Var;
        Object objB = wb1.b(obj);
        if (dispatchedContinuation.dispatcher.isDispatchNeeded(dispatchedContinuation.getContext())) {
            dispatchedContinuation._state = objB;
            dispatchedContinuation.resumeMode = 1;
            dispatchedContinuation.dispatcher.dispatch(dispatchedContinuation.getContext(), dispatchedContinuation);
            return;
        }
        yd3 yd3VarB = fia.a.b();
        if (yd3VarB.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = objB;
            dispatchedContinuation.resumeMode = 1;
            yd3VarB.dispatchUnconfined(dispatchedContinuation);
            return;
        }
        yd3VarB.incrementUseCount(true);
        try {
            j jVar = (j) dispatchedContinuation.getContext().get(j.B6);
            if (jVar == null || jVar.isActive()) {
                wh1<T> wh1Var2 = dispatchedContinuation.continuation;
                Object obj2 = dispatchedContinuation.countOrElement;
                d context = wh1Var2.getContext();
                Object objI = dia.i(context, obj2);
                sfb sfbVarM = objI != dia.a ? ek1.m(wh1Var2, context, objI) : null;
                try {
                    dispatchedContinuation.continuation.resumeWith(obj);
                    zfb zfbVar = zfb.a;
                    if (sfbVarM == null || sfbVarM.V()) {
                        dia.f(context, objI);
                    }
                } catch (Throwable th) {
                    if (sfbVarM == null || sfbVarM.V()) {
                        dia.f(context, objI);
                    }
                    throw th;
                }
            } else {
                CancellationException cancellationException = jVar.getCancellationException();
                dispatchedContinuation.cancelCompletedResult$kotlinx_coroutines_core(objB, cancellationException);
                Result.Companion companion = Result.INSTANCE;
                dispatchedContinuation.resumeWith(Result.m279constructorimpl(c.a(cancellationException)));
            }
            while (yd3VarB.processUnconfinedEvent()) {
            }
        } catch (Throwable th2) {
            try {
                dispatchedContinuation.handleFatalException$kotlinx_coroutines_core(th2);
            } finally {
                yd3VarB.decrementUseCount(true);
            }
        }
    }

    public static final boolean c(DispatchedContinuation dispatchedContinuation) {
        zfb zfbVar = zfb.a;
        yd3 yd3VarB = fia.a.b();
        if (yd3VarB.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (yd3VarB.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = zfbVar;
            dispatchedContinuation.resumeMode = 1;
            yd3VarB.dispatchUnconfined(dispatchedContinuation);
            return true;
        }
        yd3VarB.incrementUseCount(true);
        try {
            dispatchedContinuation.run();
            do {
            } while (yd3VarB.processUnconfinedEvent());
        } catch (Throwable th) {
            try {
                dispatchedContinuation.handleFatalException$kotlinx_coroutines_core(th);
            } finally {
                yd3VarB.decrementUseCount(true);
            }
        }
        return false;
    }
}
