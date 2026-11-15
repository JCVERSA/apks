package kotlinx.coroutines.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;

public class v extends kotlinx.coroutines.a implements CoroutineStackFrame {

    @JvmField
    public final Continuation<Object> uCont;

    public v(CoroutineContext coroutineContext, Continuation continuation) {
        super(coroutineContext, true, true);
        this.uCont = continuation;
    }

    @Override
    protected void afterCompletion(Object obj) {
        g.b(IntrinsicsKt.c(this.uCont), kotlinx.coroutines.c0.a(obj, this.uCont));
    }

    @Override
    protected void afterResume(Object obj) {
        Continuation<Object> continuation = this.uCont;
        continuation.resumeWith(kotlinx.coroutines.c0.a(obj, continuation));
    }

    @Override
    public final CoroutineStackFrame getCallerFrame() {
        Continuation<Object> continuation = this.uCont;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override
    protected final boolean isScopedCoroutine() {
        return true;
    }
}
