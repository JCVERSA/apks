package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class c2 extends AbstractCoroutineContextElement implements t1 {

    public static final c2 f64680a = new c2();

    private c2() {
        super(t1.f65027m1);
    }

    @Override
    public t attachChild(v vVar) {
        return d2.f64736a;
    }

    @Override
    public void cancel(CancellationException cancellationException) {
    }

    @Override
    public CancellationException getCancellationException() {
        throw new IllegalStateException("This job is always active");
    }

    @Override
    public a1 invokeOnCompletion(Function1 function1) {
        return d2.f64736a;
    }

    @Override
    public boolean isActive() {
        return true;
    }

    @Override
    public boolean isCancelled() {
        return false;
    }

    @Override
    public Object join(Continuation continuation) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override
    public boolean start() {
        return false;
    }

    public String toString() {
        return "NonCancellable";
    }

    @Override
    public a1 invokeOnCompletion(boolean z10, boolean z11, Function1 function1) {
        return d2.f64736a;
    }
}
