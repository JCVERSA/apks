package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class A1 extends SafeRunnable {
    public final Intent a;
    public final F1 b;

    public A1(F1 f1, Intent intent) {
        this.b = f1;
        this.a = intent;
    }

    @Override
    public final void runSafety() {
        this.b.b.c(this.a);
    }
}
