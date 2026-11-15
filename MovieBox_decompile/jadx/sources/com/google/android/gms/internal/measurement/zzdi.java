package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

final class zzdi implements zzdd {
    zzdi() {
    }

    @Override
    public final Runnable zza(Runnable runnable) {
        return runnable;
    }

    @Override
    public final <V> Callable<V> zza(Callable<V> callable) {
        return callable;
    }
}
