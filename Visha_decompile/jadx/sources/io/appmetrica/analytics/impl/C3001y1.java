package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C3001y1 extends SafeRunnable {
    public final Intent a;
    public final int b;
    public final int c;
    public final F1 d;

    public C3001y1(F1 f1, Intent intent, int i, int i2) {
        this.d = f1;
        this.a = intent;
        this.b = i;
        this.c = i2;
    }

    @Override
    public final void runSafety() {
        this.d.b.a(this.a, this.b, this.c);
    }
}
