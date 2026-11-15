package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

final class s implements Continuation, CoroutineStackFrame {

    private final Continuation f64849a;

    private final CoroutineContext f64850b;

    public s(Continuation continuation, CoroutineContext coroutineContext) {
        this.f64849a = continuation;
        this.f64850b = coroutineContext;
    }

    @Override
    public CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f64849a;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override
    public CoroutineContext getContext() {
        return this.f64850b;
    }

    @Override
    public void resumeWith(Object obj) {
        this.f64849a.resumeWith(obj);
    }
}
