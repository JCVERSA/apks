package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

public abstract class CombineKt {
    public static final Object a(kotlinx.coroutines.flow.b bVar, kotlinx.coroutines.flow.a[] aVarArr, Function0 function0, Function3 function3, Continuation continuation) {
        Object objA = h.a(new CombineKt$combineInternal$2(aVarArr, function0, function3, bVar, null), continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }
}
