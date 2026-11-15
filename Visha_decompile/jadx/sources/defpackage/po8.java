package defpackage;

import kotlinx.coroutines.CancellableContinuationImpl;

public final class po8 implements jgc {
    public final CancellableContinuationImpl b;

    public po8(CancellableContinuationImpl cancellableContinuationImpl) {
        this.b = cancellableContinuationImpl;
    }

    @Override
    public void invokeOnCancellation(oa9 oa9Var, int i) {
        this.b.invokeOnCancellation(oa9Var, i);
    }
}
