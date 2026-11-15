package com.google.android.gms.internal.play_billing;

import java.util.concurrent.Executor;

enum zzda implements Executor {
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
