package io.appmetrica.analytics.impl;

import android.content.res.Configuration;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2926v1 extends SafeRunnable {
    public final Configuration a;
    public final F1 b;

    public C2926v1(F1 f1, Configuration configuration) {
        this.b = f1;
        this.a = configuration;
    }

    @Override
    public final void runSafety() {
        this.b.b.onConfigurationChanged(this.a);
    }
}
