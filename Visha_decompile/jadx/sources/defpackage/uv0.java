package defpackage;

import kotlinx.coroutines.CancellableContinuationImpl;

public final class uv0 extends o95 {
    public final CancellableContinuationImpl f;

    public uv0(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f = cancellableContinuationImpl;
    }

    @Override
    public boolean u() {
        return true;
    }

    @Override
    public void v(Throwable th) {
        CancellableContinuationImpl cancellableContinuationImpl = this.f;
        cancellableContinuationImpl.parentCancelled$kotlinx_coroutines_core(cancellableContinuationImpl.getContinuationCancellationCause(t()));
    }
}
