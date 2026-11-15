package defpackage;

import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.l;

public abstract class jsc {
    public static final Object a(wh1 wh1Var) {
        Object objF;
        d context = wh1Var.getContext();
        n95.h(context);
        wh1 wh1VarC = IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var);
        DispatchedContinuation dispatchedContinuation = wh1VarC instanceof DispatchedContinuation ? (DispatchedContinuation) wh1VarC : null;
        if (dispatchedContinuation == null) {
            objF = zfb.a;
        } else {
            if (dispatchedContinuation.dispatcher.isDispatchNeeded(context)) {
                dispatchedContinuation.dispatchYield$kotlinx_coroutines_core(context, zfb.a);
            } else {
                l lVar = new l();
                d dVarPlus = context.plus(lVar);
                zfb zfbVar = zfb.a;
                dispatchedContinuation.dispatchYield$kotlinx_coroutines_core(dVarPlus, zfbVar);
                objF = (!lVar.b || jc2.c(dispatchedContinuation)) ? z45.f() : zfbVar;
            }
            objF = z45.f();
        }
        if (objF == z45.f()) {
            pt1.c(wh1Var);
        }
        return objF == z45.f() ? objF : zfb.a;
    }
}
