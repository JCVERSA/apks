package kotlinx.coroutines.channels;

import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.s2;

final class q implements s2 {

    public final CancellableContinuationImpl f64732a;

    public q(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f64732a = cancellableContinuationImpl;
    }

    @Override
    public void invokeOnCancellation(w wVar, int i10) {
        this.f64732a.invokeOnCancellation(wVar, i10);
    }
}
