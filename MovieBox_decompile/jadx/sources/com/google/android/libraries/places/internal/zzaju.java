package com.google.android.libraries.places.internal;

import java.util.concurrent.Executor;

enum zzaju implements Executor {
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
