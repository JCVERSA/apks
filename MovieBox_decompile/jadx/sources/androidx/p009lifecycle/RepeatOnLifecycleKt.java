package androidx.p009lifecycle;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.o0;

public abstract class RepeatOnLifecycleKt {
    public static final Object a(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, Continuation continuation) {
        if (state == Lifecycle.State.INITIALIZED) {
            throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
        }
        if (lifecycle.b() == Lifecycle.State.DESTROYED) {
            return Unit.f64096a;
        }
        Object objE = o0.e(new RepeatOnLifecycleKt$repeatOnLifecycle$3(lifecycle, state, function2, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }

    public static final Object b(u uVar, Lifecycle.State state, Function2 function2, Continuation continuation) {
        Object objA = a(uVar.getLifecycle(), state, function2, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }
}
