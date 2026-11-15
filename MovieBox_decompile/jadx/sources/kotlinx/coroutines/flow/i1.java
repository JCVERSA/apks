package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

public abstract class i1 {

    private static final kotlinx.coroutines.internal.z f64817a = new kotlinx.coroutines.internal.z("NONE");

    private static final kotlinx.coroutines.internal.z f64818b = new kotlinx.coroutines.internal.z("PENDING");

    public static final x0 a(Object obj) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.m.f64844a;
        }
        return new StateFlowImpl(obj);
    }

    public static final a d(h1 h1Var, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        return (((i10 < 0 || i10 >= 2) && i10 != -2) || bufferOverflow != BufferOverflow.DROP_OLDEST) ? c1.e(h1Var, coroutineContext, i10, bufferOverflow) : h1Var;
    }
}
