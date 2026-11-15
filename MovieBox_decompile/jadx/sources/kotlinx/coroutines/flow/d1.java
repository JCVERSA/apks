package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;

public final class d1 extends kotlinx.coroutines.flow.internal.c {

    public long f64807a = -1;

    public Continuation f64808b;

    @Override
    public boolean a(SharedFlowImpl sharedFlowImpl) {
        if (this.f64807a >= 0) {
            return false;
        }
        this.f64807a = sharedFlowImpl.Y();
        return true;
    }

    @Override
    public Continuation[] b(SharedFlowImpl sharedFlowImpl) {
        long j10 = this.f64807a;
        this.f64807a = -1L;
        this.f64808b = null;
        return sharedFlowImpl.X(j10);
    }
}
