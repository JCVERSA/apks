package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

public final class C2929v4 {
    public final SystemTimeProvider a;

    public C2929v4() {
        this(new SystemTimeProvider());
    }

    public final void a() {
        this.a.elapsedRealtime();
    }

    public C2929v4(SystemTimeProvider systemTimeProvider) {
        this.a = systemTimeProvider;
    }
}
