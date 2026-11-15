package androidx.work.impl.utils.futures;

import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
enum DirectExecutor implements Executor {
    INSTANCE;

    @Override
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override
    public String toString() {
        return "DirectExecutor";
    }
}
