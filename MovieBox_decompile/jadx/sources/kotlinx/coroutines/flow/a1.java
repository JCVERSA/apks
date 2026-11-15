package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

final class a1 extends AbstractFlow {

    private final Function2 f64805a;

    public a1(Function2 function2) {
        this.f64805a = function2;
    }

    @Override
    public Object g(b bVar, Continuation continuation) {
        Object objInvoke = this.f64805a.invoke(bVar, continuation);
        return objInvoke == IntrinsicsKt.f() ? objInvoke : Unit.f64096a;
    }
}
