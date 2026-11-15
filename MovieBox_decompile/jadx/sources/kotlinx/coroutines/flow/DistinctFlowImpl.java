package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

final class DistinctFlowImpl implements a {

    private final a f64747a;

    public final Function1 f64748b;

    public final Function2 f64749c;

    public DistinctFlowImpl(a aVar, Function1 function1, Function2 function2) {
        this.f64747a = aVar;
        this.f64748b = function1;
        this.f64749c = function2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, kotlinx.coroutines.internal.z] */
    @Override
    public Object a(b bVar, Continuation continuation) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = kotlinx.coroutines.flow.internal.m.f64844a;
        Object objA = this.f64747a.a(new DistinctFlowImpl$collect$2(this, objectRef, bVar), continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }
}
