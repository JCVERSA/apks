package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

public interface n extends Continuation {

    public static final class a {
        public static boolean a(n nVar, Throwable th2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th2 = null;
            }
            return nVar.cancel(th2);
        }
    }

    boolean cancel(Throwable th2);

    void completeResume(Object obj);

    void invokeOnCancellation(Function1 function1);

    boolean isActive();

    boolean isCompleted();

    void resume(Object obj, Function1 function1);

    void resume(Object obj, Function3 function3);

    void resumeUndispatched(i0 i0Var, Object obj);

    Object tryResume(Object obj, Object obj2, Function3 function3);

    Object tryResumeWithException(Throwable th2);
}
