package io.appmetrica.analytics.impl;

import android.os.HandlerThread;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread;

public final class HandlerThreadC2613ib extends HandlerThread implements IInterruptionSafeThread {
    public volatile boolean a;

    public HandlerThreadC2613ib(@NonNull String str) {
        super(str);
        this.a = true;
    }

    @Override
    public final synchronized boolean isRunning() {
        return this.a;
    }

    @Override
    public final synchronized void stopRunning() {
        this.a = false;
        interrupt();
    }
}
