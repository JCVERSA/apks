package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.flow.internal.ChildCancelledException;

public final class pz3 extends x29 {
    public pz3(d dVar, wh1 wh1Var) {
        super(dVar, wh1Var);
    }

    @Override
    public boolean childCancelled(Throwable th) {
        if (th instanceof ChildCancelledException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(th);
    }
}
