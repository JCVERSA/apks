package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.t0;

public final class r extends kotlinx.coroutines.i0 implements t0 {

    private final t0 f64913a;

    private final kotlinx.coroutines.i0 f64914b;

    private final String f64915c;

    /* JADX WARN: Multi-variable type inference failed */
    public r(kotlinx.coroutines.i0 i0Var, String str) {
        t0 t0Var = i0Var instanceof t0 ? (t0) i0Var : null;
        this.f64913a = t0Var == null ? q0.a() : t0Var;
        this.f64914b = i0Var;
        this.f64915c = str;
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        this.f64914b.dispatch(coroutineContext, runnable);
    }

    @Override
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        this.f64914b.dispatchYield(coroutineContext, runnable);
    }

    @Override
    public a1 invokeOnTimeout(long j10, Runnable runnable, CoroutineContext coroutineContext) {
        return this.f64913a.invokeOnTimeout(j10, runnable, coroutineContext);
    }

    @Override
    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return this.f64914b.isDispatchNeeded(coroutineContext);
    }

    @Override
    public void scheduleResumeAfterDelay(long j10, kotlinx.coroutines.n nVar) {
        this.f64913a.scheduleResumeAfterDelay(j10, nVar);
    }

    @Override
    public String toString() {
        return this.f64915c;
    }
}
