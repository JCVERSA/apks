package com.google.android.gms.internal.identity;

import java.util.concurrent.Executor;

final class zzcm implements Executor {
    static final zzcm zza = new zzcm();

    private zzcm() {
    }

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
