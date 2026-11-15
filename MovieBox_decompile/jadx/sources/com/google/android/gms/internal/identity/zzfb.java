package com.google.android.gms.internal.identity;

import java.util.concurrent.Executor;

enum zzfb implements Executor {
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
