package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.t1;

final class y0 implements b1, a, kotlinx.coroutines.flow.internal.j {

    private final b1 f64857a;

    private final t1 f64858b;

    public y0(b1 b1Var, t1 t1Var) {
        this.f64857a = b1Var;
        this.f64858b = t1Var;
    }

    @Override
    public Object a(b bVar, Continuation continuation) {
        return this.f64857a.a(bVar, continuation);
    }

    @Override
    public a d(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        return c1.e(this, coroutineContext, i10, bufferOverflow);
    }
}
