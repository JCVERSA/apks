package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class b0 implements ThreadFactory {

    private final ThreadFactory f18425a = Executors.defaultThreadFactory();

    private final AtomicInteger f18426b = new AtomicInteger(1);

    b0(i iVar) {
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f18426b;
        Thread threadNewThread = this.f18425a.newThread(runnable);
        threadNewThread.setName("PlayBillingLibrary-" + atomicInteger.getAndIncrement());
        return threadNewThread;
    }
}
