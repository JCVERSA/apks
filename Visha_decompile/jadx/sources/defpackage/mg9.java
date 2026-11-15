package defpackage;

import kotlinx.coroutines.flow.SharedFlowImpl;

public final class mg9 extends z3 {
    public long a = -1;
    public wh1 b;

    @Override
    public boolean a(SharedFlowImpl sharedFlowImpl) {
        if (this.a >= 0) {
            return false;
        }
        this.a = sharedFlowImpl.X();
        return true;
    }

    @Override
    public wh1[] b(SharedFlowImpl sharedFlowImpl) {
        long j = this.a;
        this.a = -1L;
        this.b = null;
        return sharedFlowImpl.W(j);
    }
}
