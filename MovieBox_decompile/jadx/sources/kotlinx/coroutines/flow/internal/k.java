package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

final class k implements Continuation {

    public static final k f64841a = new k();

    private static final CoroutineContext f64842b = EmptyCoroutineContext.INSTANCE;

    private k() {
    }

    @Override
    public CoroutineContext getContext() {
        return f64842b;
    }

    @Override
    public void resumeWith(Object obj) {
    }
}
