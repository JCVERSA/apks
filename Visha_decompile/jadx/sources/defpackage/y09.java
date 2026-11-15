package defpackage;

import kotlinx.coroutines.flow.AbstractFlow;

public final class y09 extends AbstractFlow {
    public final s74 b;

    public y09(s74 s74Var) {
        this.b = s74Var;
    }

    @Override
    public Object e(oz3 oz3Var, wh1 wh1Var) {
        Object objInvoke = this.b.invoke(oz3Var, wh1Var);
        return objInvoke == z45.f() ? objInvoke : zfb.a;
    }
}
