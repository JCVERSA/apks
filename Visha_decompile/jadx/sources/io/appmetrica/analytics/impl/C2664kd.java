package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2664kd extends SafeRunnable {
    public final C2739nd a;
    public final int b;
    public final String c;

    public C2664kd(C2739nd c2739nd, int i, String str) {
        this.a = c2739nd;
        this.b = i;
        this.c = str;
    }

    @Override
    public final void runSafety() {
        C2739nd.a(this.a).a(new M9(this.b, this.c));
    }
}
