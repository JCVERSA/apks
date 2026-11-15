package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.t1;

abstract class FlowKt__CollectKt {
    public static final Object a(a aVar, Continuation continuation) {
        Object objA = aVar.a(kotlinx.coroutines.flow.internal.l.f64843a, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }

    public static final Object b(a aVar, Function2 function2, Continuation continuation) {
        Object objG = c.g(q.b(c.v(aVar, function2), 0, null, 2, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    public static final Object c(b bVar, a aVar, Continuation continuation) {
        c.n(bVar);
        Object objA = aVar.a(bVar, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }

    public static final t1 d(a aVar, kotlinx.coroutines.n0 n0Var) {
        return kotlinx.coroutines.k.d(n0Var, null, null, new FlowKt__CollectKt$launchIn$1(aVar, null), 3, null);
    }
}
