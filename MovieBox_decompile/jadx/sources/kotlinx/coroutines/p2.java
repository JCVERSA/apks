package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

public final class p2 extends i0 {

    public static final p2 f64938a = new p2();

    private p2() {
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        t2 t2Var = (t2) coroutineContext.get(t2.f65029b);
        if (t2Var == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        t2Var.f65030a = true;
    }

    @Override
    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return false;
    }

    @Override
    public i0 limitedParallelism(int i10, String str) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
