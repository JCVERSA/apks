package androidx.work.impl.utils;

import java.util.concurrent.Executor;

public class r implements Executor {
    @Override
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
