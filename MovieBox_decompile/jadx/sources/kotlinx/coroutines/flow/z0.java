package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.t1;

final class z0 implements h1, a, kotlinx.coroutines.flow.internal.j {

    private final h1 f64859a;

    private final t1 f64860b;

    public z0(h1 h1Var, t1 t1Var) {
        this.f64859a = h1Var;
        this.f64860b = t1Var;
    }

    @Override
    public Object a(b bVar, Continuation continuation) {
        return this.f64859a.a(bVar, continuation);
    }

    @Override
    public a d(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        return i1.d(this, coroutineContext, i10, bufferOverflow);
    }

    @Override
    public Object getValue() {
        return this.f64859a.getValue();
    }
}
