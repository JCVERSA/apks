package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.n0;

public final class d implements n0 {

    private final CoroutineContext f64882a;

    public d(CoroutineContext coroutineContext) {
        this.f64882a = coroutineContext;
    }

    @Override
    public CoroutineContext getCoroutineContext() {
        return this.f64882a;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}
