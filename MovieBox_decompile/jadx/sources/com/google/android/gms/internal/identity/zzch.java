package com.google.android.gms.internal.identity;

import java.util.concurrent.Executor;

final class zzch implements Executor {
    static final zzch zza = new zzch();

    private zzch() {
    }

    @Override
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
