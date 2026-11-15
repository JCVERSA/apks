package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2639jd extends SafeRunnable {
    public final C2739nd a;
    public final ModuleEvent b;

    public C2639jd(C2739nd c2739nd, ModuleEvent moduleEvent) {
        this.a = c2739nd;
        this.b = moduleEvent;
    }

    @Override
    public final void runSafety() {
        C2739nd.a(this.a).reportEvent(this.b);
    }
}
