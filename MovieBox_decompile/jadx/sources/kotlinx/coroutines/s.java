package kotlinx.coroutines;

final class s extends w1 {

    public final CancellableContinuationImpl f64947e;

    public s(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f64947e = cancellableContinuationImpl;
    }

    @Override
    public boolean u() {
        return true;
    }

    @Override
    public void v(Throwable th2) {
        CancellableContinuationImpl cancellableContinuationImpl = this.f64947e;
        cancellableContinuationImpl.parentCancelled$kotlinx_coroutines_core(cancellableContinuationImpl.getContinuationCancellationCause(t()));
    }
}
