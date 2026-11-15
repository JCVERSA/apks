package io.appmetrica.analytics.coreutils.internal.executors;

public abstract class SafeRunnable implements Runnable {
    @Override
    public void run() {
        try {
            runSafety();
        } catch (Throwable unused) {
        }
    }

    public abstract void runSafety() throws Throwable;
}
