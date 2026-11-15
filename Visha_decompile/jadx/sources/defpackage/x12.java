package defpackage;

import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlinx.coroutines.c;
import kotlinx.coroutines.h;

public final class x12 extends h implements Executor {
    public static final x12 c = new x12();
    public static final c d = c.limitedParallelism$default(cgb.b, paa.e("kotlinx.coroutines.io.parallelism", wn8.d(64, naa.a()), 0, 0, 12, null), null, 2, null);

    @Override
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override
    public void dispatch(d dVar, Runnable runnable) {
        d.dispatch(dVar, runnable);
    }

    @Override
    public void dispatchYield(d dVar, Runnable runnable) {
        d.dispatchYield(dVar, runnable);
    }

    @Override
    public void execute(Runnable runnable) {
        dispatch(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @Override
    public c limitedParallelism(int i, String str) {
        return cgb.b.limitedParallelism(i, str);
    }

    @Override
    public String toString() {
        return "Dispatchers.IO";
    }
}
