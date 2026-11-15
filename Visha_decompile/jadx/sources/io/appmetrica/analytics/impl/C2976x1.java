package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2976x1 extends SafeRunnable {
    public final Intent a;
    public final int b;
    public final F1 c;

    public C2976x1(F1 f1, Intent intent, int i) {
        this.c = f1;
        this.a = intent;
        this.b = i;
    }

    @Override
    public final void runSafety() {
        this.c.b.a(this.a, this.b);
    }
}
