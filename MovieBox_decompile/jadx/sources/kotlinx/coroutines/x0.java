package kotlinx.coroutines;

import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;

final class x0 implements Executor {

    public final i0 f65035a;

    public x0(i0 i0Var) {
        this.f65035a = i0Var;
    }

    @Override
    public void execute(Runnable runnable) {
        i0 i0Var = this.f65035a;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if (i0Var.isDispatchNeeded(emptyCoroutineContext)) {
            this.f65035a.dispatch(emptyCoroutineContext, runnable);
        } else {
            runnable.run();
        }
    }

    public String toString() {
        return this.f65035a.toString();
    }
}
