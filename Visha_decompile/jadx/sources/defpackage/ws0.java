package defpackage;

import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlinx.coroutines.flow.internal.UndispatchedContextCollector;

public abstract class ws0 {
    public static final Object b(d dVar, Object obj, Object obj2, s74 s74Var, wh1 wh1Var) {
        Object objI = dia.i(dVar, obj2);
        try {
            wv9 wv9Var = new wv9(wh1Var, dVar);
            Object objD = !(s74Var instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.d(s74Var, obj, wv9Var) : ((s74) ccb.f(s74Var, 2)).invoke(obj, wv9Var);
            dia.f(dVar, objI);
            if (objD == z45.f()) {
                pt1.c(wh1Var);
            }
            return objD;
        } catch (Throwable th) {
            dia.f(dVar, objI);
            throw th;
        }
    }

    public static Object c(d dVar, Object obj, Object obj2, s74 s74Var, wh1 wh1Var, int i, Object obj3) {
        if ((i & 4) != 0) {
            obj2 = dia.g(dVar);
        }
        return b(dVar, obj, obj2, s74Var, wh1Var);
    }

    public static final oz3 d(oz3 oz3Var, d dVar) {
        return ((oz3Var instanceof hc9) || (oz3Var instanceof s17)) ? oz3Var : new UndispatchedContextCollector(oz3Var, dVar);
    }
}
