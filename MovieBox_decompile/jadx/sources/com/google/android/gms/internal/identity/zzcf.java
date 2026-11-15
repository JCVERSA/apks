package com.google.android.gms.internal.identity;

import java.util.concurrent.Executor;

final class zzcf implements Executor {
    static final zzcf zza = new zzcf();

    private zzcf() {
    }

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
