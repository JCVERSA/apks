package io.appmetrica.analytics.coreutils.internal.executors;

public class SynchronizedBlockingExecutor extends BlockingExecutor {
    @Override
    public synchronized void execute(Runnable runnable) {
        super.execute(runnable);
    }
}
