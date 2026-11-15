package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C1 extends SafeRunnable {
    public final int a;
    public final Bundle b;
    public final F1 c;

    public C1(F1 f1, int i, Bundle bundle) {
        this.c = f1;
        this.a = i;
        this.b = bundle;
    }

    @Override
    public final void runSafety() {
        this.c.b.reportData(this.a, this.b);
    }
}
