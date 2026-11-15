package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;

public interface t1 extends CoroutineContext.Element {

    public static final b f65027m1 = b.f65028a;

    public static final class a {
        public static void b(t1 t1Var, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            t1Var.cancel(cancellationException);
        }

        public static Object c(t1 t1Var, Object obj, Function2 function2) {
            return CoroutineContext.Element.DefaultImpls.a(t1Var, obj, function2);
        }

        public static CoroutineContext.Element d(t1 t1Var, CoroutineContext.Key key) {
            return CoroutineContext.Element.DefaultImpls.b(t1Var, key);
        }

        public static CoroutineContext e(t1 t1Var, CoroutineContext.Key key) {
            return CoroutineContext.Element.DefaultImpls.c(t1Var, key);
        }

        public static CoroutineContext f(t1 t1Var, CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.d(t1Var, coroutineContext);
        }

        public static t1 g(t1 t1Var, t1 t1Var2) {
            return t1Var2;
        }
    }

    public static final class b implements CoroutineContext.Key {

        static final b f65028a = new b();

        private b() {
        }
    }

    t attachChild(v vVar);

    void cancel(CancellationException cancellationException);

    CancellationException getCancellationException();

    Sequence getChildren();

    a1 invokeOnCompletion(Function1 function1);

    a1 invokeOnCompletion(boolean z10, boolean z11, Function1 function1);

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    Object join(Continuation continuation);

    boolean start();
}
