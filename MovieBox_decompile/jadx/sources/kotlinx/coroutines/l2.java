package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;

public abstract class l2 {
    public static final z a(t1 t1Var) {
        return new k2(t1Var);
    }

    public static z b(t1 t1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            t1Var = null;
        }
        return a(t1Var);
    }

    public static final Object c(Function2 function2, Continuation continuation) {
        j2 j2Var = new j2(continuation.getContext(), continuation);
        Object objB = py.b.b(j2Var, j2Var, function2);
        if (objB == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objB;
    }
}
