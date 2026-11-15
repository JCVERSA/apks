package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;

final class g2 extends w1 {

    private final CancellableContinuationImpl f64863e;

    public g2(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f64863e = cancellableContinuationImpl;
    }

    @Override
    public boolean u() {
        return false;
    }

    @Override
    public void v(Throwable th2) {
        Object state$kotlinx_coroutines_core = t().getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof b0) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f64863e;
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(ResultKt.a(((b0) state$kotlinx_coroutines_core).f64676a)));
        } else {
            CancellableContinuationImpl cancellableContinuationImpl2 = this.f64863e;
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(Result.m453constructorimpl(x1.h(state$kotlinx_coroutines_core)));
        }
    }
}
