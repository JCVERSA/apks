package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class D1 extends SafeRunnable {
    public final Bundle a;
    public final F1 b;

    public D1(F1 f1, Bundle bundle) {
        this.b = f1;
        this.a = bundle;
    }

    @Override
    public final void runSafety() {
        this.b.b.resumeUserSession(this.a);
    }
}
