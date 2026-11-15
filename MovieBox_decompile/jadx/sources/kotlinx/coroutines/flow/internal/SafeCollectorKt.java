package kotlinx.coroutines.flow.internal;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

public abstract class SafeCollectorKt {

    private static final Function3 f64830a;

    static {
        SafeCollectorKt$emitFun$1 safeCollectorKt$emitFun$1 = SafeCollectorKt$emitFun$1.INSTANCE;
        Intrinsics.f(safeCollectorKt$emitFun$1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        f64830a = (Function3) TypeIntrinsics.e(safeCollectorKt$emitFun$1, 3);
    }
}
