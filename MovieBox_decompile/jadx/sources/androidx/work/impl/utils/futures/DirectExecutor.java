package androidx.work.impl.utils.futures;

import java.util.concurrent.Executor;

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
