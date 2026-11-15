package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.internal.a0;
import kotlinx.coroutines.internal.c0;
import kotlinx.coroutines.k1;

public final class a extends k1 implements Executor {

    public static final a f64962b = new a();

    private static final i0 f64963c = i0.limitedParallelism$default(h.f64977a, c0.e("kotlinx.coroutines.io.parallelism", RangesKt.e(64, a0.a()), 0, 0, 12, null), null, 2, null);

    private a() {
    }

    @Override
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        f64963c.dispatch(coroutineContext, runnable);
    }

    @Override
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        f64963c.dispatchYield(coroutineContext, runnable);
    }

    @Override
    public void execute(Runnable runnable) {
        dispatch(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @Override
    public i0 limitedParallelism(int i10, String str) {
        return h.f64977a.limitedParallelism(i10, str);
    }

    @Override
    public Executor p() {
        return this;
    }

    @Override
    public String toString() {
        return "Dispatchers.IO";
    }
}
