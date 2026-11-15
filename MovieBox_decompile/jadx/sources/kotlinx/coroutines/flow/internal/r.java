package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public final class r implements kotlinx.coroutines.flow.b {

    private final kotlinx.coroutines.channels.s f64848a;

    public r(kotlinx.coroutines.channels.s sVar) {
        this.f64848a = sVar;
    }

    @Override
    public Object emit(Object obj, Continuation continuation) {
        Object objN = this.f64848a.n(obj, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f64096a;
    }
}
