package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class ThreadFactoryC3013yd implements ThreadFactory {
    public static final AtomicInteger a = new AtomicInteger(0);

    public static int a() {
        return a.incrementAndGet();
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        return new InterruptionSafeThread(runnable, ((String) null) + "-" + a.incrementAndGet());
    }
}
