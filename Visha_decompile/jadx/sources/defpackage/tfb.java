package defpackage;

import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlinx.coroutines.TimeoutCancellationException;

public abstract class tfb {
    public static final void a(s74 s74Var, Object obj, wh1 wh1Var) {
        wh1 wh1VarA = pt1.a(wh1Var);
        try {
            d context = wh1VarA.getContext();
            Object objI = dia.i(context, null);
            try {
                pt1.b(wh1VarA);
                Object objD = !(s74Var instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.d(s74Var, obj, wh1VarA) : ((s74) ccb.f(s74Var, 2)).invoke(obj, wh1VarA);
                dia.f(context, objI);
                if (objD != z45.f()) {
                    wh1VarA.resumeWith(Result.m279constructorimpl(objD));
                }
            } catch (Throwable th) {
                dia.f(context, objI);
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion = Result.INSTANCE;
            wh1VarA.resumeWith(Result.m279constructorimpl(c.a(th2)));
        }
    }

    public static final Object b(x29 x29Var, Object obj, s74 s74Var) {
        Object vb1Var;
        Object objMakeCompletingOnce$kotlinx_coroutines_core;
        try {
            vb1Var = !(s74Var instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.d(s74Var, obj, x29Var) : ((s74) ccb.f(s74Var, 2)).invoke(obj, x29Var);
        } catch (Throwable th) {
            vb1Var = new vb1(th, false, 2, null);
        }
        if (vb1Var != z45.f() && (objMakeCompletingOnce$kotlinx_coroutines_core = x29Var.makeCompletingOnce$kotlinx_coroutines_core(vb1Var)) != q95.b) {
            if (objMakeCompletingOnce$kotlinx_coroutines_core instanceof vb1) {
                throw ((vb1) objMakeCompletingOnce$kotlinx_coroutines_core).a;
            }
            return q95.h(objMakeCompletingOnce$kotlinx_coroutines_core);
        }
        return z45.f();
    }

    public static final Object c(x29 x29Var, Object obj, s74 s74Var) throws Throwable {
        Object vb1Var;
        Object objMakeCompletingOnce$kotlinx_coroutines_core;
        try {
            vb1Var = !(s74Var instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.d(s74Var, obj, x29Var) : ((s74) ccb.f(s74Var, 2)).invoke(obj, x29Var);
        } catch (Throwable th) {
            vb1Var = new vb1(th, false, 2, null);
        }
        if (vb1Var != z45.f() && (objMakeCompletingOnce$kotlinx_coroutines_core = x29Var.makeCompletingOnce$kotlinx_coroutines_core(vb1Var)) != q95.b) {
            if (objMakeCompletingOnce$kotlinx_coroutines_core instanceof vb1) {
                Throwable th2 = ((vb1) objMakeCompletingOnce$kotlinx_coroutines_core).a;
                if (!(th2 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th2).coroutine != x29Var) {
                    throw th2;
                }
                if (vb1Var instanceof vb1) {
                    throw ((vb1) vb1Var).a;
                }
            } else {
                vb1Var = q95.h(objMakeCompletingOnce$kotlinx_coroutines_core);
            }
            return vb1Var;
        }
        return z45.f();
    }
}
