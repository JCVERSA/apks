package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

final class j2 extends kotlinx.coroutines.internal.v {
    public j2(CoroutineContext coroutineContext, Continuation continuation) {
        super(coroutineContext, continuation);
    }

    @Override
    public boolean childCancelled(Throwable th2) {
        return false;
    }
}
