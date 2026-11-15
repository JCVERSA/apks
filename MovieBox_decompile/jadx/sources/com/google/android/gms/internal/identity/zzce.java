package com.google.android.gms.internal.identity;

import java.util.concurrent.Executor;

final class zzce implements Executor {
    static final zzce zza = new zzce();

    private zzce() {
    }

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
