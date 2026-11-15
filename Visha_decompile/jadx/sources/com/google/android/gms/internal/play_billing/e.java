package com.google.android.gms.internal.play_billing;

import java.util.concurrent.Executor;

public final class e {
    public static final e d = new e();
    public final Runnable a;
    public final Executor b;
    public e c;

    public e() {
        this.a = null;
        this.b = null;
    }

    public e(Runnable runnable, Executor executor) {
        this.a = runnable;
        this.b = executor;
    }
}
