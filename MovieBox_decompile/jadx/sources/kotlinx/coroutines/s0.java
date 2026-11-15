package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

class s0 extends a implements r0 {
    public s0(CoroutineContext coroutineContext, boolean z10) {
        super(coroutineContext, true, z10);
    }

    static Object U(s0 s0Var, Continuation continuation) throws Throwable {
        Object objAwaitInternal = s0Var.awaitInternal(continuation);
        IntrinsicsKt.f();
        return objAwaitInternal;
    }

    @Override
    public Object d() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    @Override
    public Object f(Continuation continuation) {
        return U(this, continuation);
    }
}
