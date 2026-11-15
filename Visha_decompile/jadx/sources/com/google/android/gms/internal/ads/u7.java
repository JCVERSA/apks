package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class u7 {
    public static final u7 d = new u7();
    public final Runnable a;
    public final Executor b;
    public u7 c;

    public u7() {
        this.a = null;
        this.b = null;
    }

    public u7(Runnable runnable, Executor executor) {
        this.a = runnable;
        this.b = executor;
    }
}
