package q1;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.n0;

public final class a implements AutoCloseable, n0 {

    private final CoroutineContext f69322a;

    public a(CoroutineContext coroutineContext) {
        Intrinsics.h(coroutineContext, "coroutineContext");
        this.f69322a = coroutineContext;
    }

    @Override
    public void close() {
        JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
    }

    @Override
    public CoroutineContext getCoroutineContext() {
        return this.f69322a;
    }
}
