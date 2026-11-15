package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2951w1 extends SafeRunnable {
    public final F1 a;

    public C2951w1(F1 f1) {
        this.a = f1;
    }

    @Override
    public final void runSafety() {
        synchronized (this.a) {
            try {
                F1 f1 = this.a;
                if (f1.c) {
                    f1.b.onCreate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
