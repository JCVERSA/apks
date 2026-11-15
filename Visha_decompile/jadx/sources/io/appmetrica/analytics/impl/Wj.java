package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

public final class Wj {
    public final SystemTimeProvider a;
    public final long b;

    public Wj() {
        SystemTimeProvider systemTimeProvider = new SystemTimeProvider();
        this.a = systemTimeProvider;
        this.b = systemTimeProvider.currentTimeMillis();
    }
}
