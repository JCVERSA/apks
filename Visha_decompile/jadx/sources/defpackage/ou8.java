package defpackage;

import kotlin.Result;
import kotlin.c;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class ou8 extends o95 {
    public final CancellableContinuationImpl f;

    public ou8(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f = cancellableContinuationImpl;
    }

    @Override
    public boolean u() {
        return false;
    }

    @Override
    public void v(Throwable th) {
        Object state$kotlinx_coroutines_core = t().getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof vb1) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f;
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(c.a(((vb1) state$kotlinx_coroutines_core).a)));
        } else {
            CancellableContinuationImpl cancellableContinuationImpl2 = this.f;
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(Result.m279constructorimpl(q95.h(state$kotlinx_coroutines_core)));
        }
    }
}
