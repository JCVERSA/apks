package com.vungle.ads.internal.executor;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;

public final class c implements ThreadFactory {
    private final AtomicInteger atomicInteger;
    private final String name;
    private final ThreadFactory threadFactory;

    public c(String name) {
        Intrinsics.h(name, "name");
        this.name = name;
        this.threadFactory = Executors.defaultThreadFactory();
        this.atomicInteger = new AtomicInteger(0);
    }

    public final String getName() {
        return this.name;
    }

    @Override
    public Thread newThread(Runnable r10) {
        Intrinsics.h(r10, "r");
        Thread t10 = this.threadFactory.newThread(r10);
        t10.setName(this.name + "-th-" + this.atomicInteger.incrementAndGet());
        Intrinsics.g(t10, "t");
        return t10;
    }
}
