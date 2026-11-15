package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

enum zzgbg implements Executor {
    INSTANCE;

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
