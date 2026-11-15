package kotlinx.coroutines.flow.internal;

import defpackage.ccb;
import defpackage.u74;
import defpackage.y45;

public abstract class SafeCollectorKt {
    public static final u74 a;

    static {
        SafeCollectorKt$emitFun$1 safeCollectorKt$emitFun$1 = SafeCollectorKt$emitFun$1.INSTANCE;
        y45.h(safeCollectorKt$emitFun$1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        a = (u74) ccb.f(safeCollectorKt$emitFun$1, 3);
    }
}
