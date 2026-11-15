package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;

public final class k1 implements b {

    public final Throwable f64852a;

    public k1(Throwable th2) {
        this.f64852a = th2;
    }

    @Override
    public Object emit(Object obj, Continuation continuation) throws Throwable {
        throw this.f64852a;
    }
}
