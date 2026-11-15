package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.StateFlowImpl;

public abstract class hx9 {
    public static final y7a a = new y7a("NONE");
    public static final y7a b = new y7a("PENDING");

    public static final mw6 a(Object obj) {
        if (obj == null) {
            obj = h37.a;
        }
        return new StateFlowImpl(obj);
    }

    public static final nz3 d(gx9 gx9Var, d dVar, int i, BufferOverflow bufferOverflow) {
        return (((i < 0 || i >= 2) && i != -2) || bufferOverflow != BufferOverflow.DROP_OLDEST) ? lg9.e(gx9Var, dVar, i, bufferOverflow) : gx9Var;
    }
}
