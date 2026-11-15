package com.google.android.gms.internal.identity;

import java.util.concurrent.Executor;

final class zzcg implements Executor {
    static final zzcg zza = new zzcg();

    private zzcg() {
    }

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
