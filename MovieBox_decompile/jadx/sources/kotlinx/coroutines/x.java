package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

final class x extends JobSupport implements w {
    public x(t1 t1Var) {
        super(true);
        initParentJob(t1Var);
    }

    @Override
    public boolean b(Throwable th2) {
        return makeCompleting$kotlinx_coroutines_core(new b0(th2, false, 2, null));
    }

    @Override
    public Object d() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    @Override
    public Object f(Continuation continuation) throws Throwable {
        Object objAwaitInternal = awaitInternal(continuation);
        IntrinsicsKt.f();
        return objAwaitInternal;
    }

    @Override
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    @Override
    public boolean l(Object obj) {
        return makeCompleting$kotlinx_coroutines_core(obj);
    }
}
