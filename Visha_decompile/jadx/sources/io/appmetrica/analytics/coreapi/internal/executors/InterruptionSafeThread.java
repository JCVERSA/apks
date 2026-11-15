package io.appmetrica.analytics.coreapi.internal.executors;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;

public class InterruptionSafeThread extends Thread implements IInterruptionSafeThread {
    private volatile boolean a;

    public InterruptionSafeThread() {
        this.a = true;
    }

    @Override
    public synchronized boolean isRunning() {
        return this.a;
    }

    @Override
    public synchronized void stopRunning() {
        this.a = false;
        interrupt();
    }

    public InterruptionSafeThread(@NonNull Runnable runnable, @NonNull String str) {
        super(runnable, str);
        this.a = true;
    }

    public InterruptionSafeThread(@NonNull String str) {
        super(str);
        this.a = true;
    }

    @VisibleForTesting(otherwise = 5)
    public InterruptionSafeThread(@NonNull Runnable runnable) {
        super(runnable);
        this.a = true;
    }
}
