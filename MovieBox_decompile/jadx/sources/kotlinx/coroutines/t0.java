package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;

public interface t0 {

    public static final class a {
        public static Object a(t0 t0Var, long j10, Continuation continuation) {
            if (j10 <= 0) {
                return Unit.f64096a;
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            t0Var.scheduleResumeAfterDelay(j10, cancellableContinuationImpl);
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f64096a;
        }

        public static a1 b(t0 t0Var, long j10, Runnable runnable, CoroutineContext coroutineContext) {
            return q0.a().invokeOnTimeout(j10, runnable, coroutineContext);
        }
    }

    a1 invokeOnTimeout(long j10, Runnable runnable, CoroutineContext coroutineContext);

    void scheduleResumeAfterDelay(long j10, n nVar);
}
