package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.g0;

final class UndispatchedContextCollector implements kotlinx.coroutines.flow.b {

    private final CoroutineContext f64831a;

    private final Object f64832b;

    private final Function2 f64833c;

    public UndispatchedContextCollector(kotlinx.coroutines.flow.b bVar, CoroutineContext coroutineContext) {
        this.f64831a = coroutineContext;
        this.f64832b = g0.g(coroutineContext);
        this.f64833c = new UndispatchedContextCollector$emitRef$1(bVar, null);
    }

    @Override
    public Object emit(Object obj, Continuation continuation) {
        Object objB = d.b(this.f64831a, obj, this.f64832b, this.f64833c, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f64096a;
    }
}
