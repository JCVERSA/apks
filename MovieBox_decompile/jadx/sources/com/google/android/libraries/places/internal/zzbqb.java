package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

final class zzbqb extends zzbpz {
    private final AtomicIntegerFieldUpdater zza;

    zzbqb(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, zzbqa zzbqaVar) {
        super(null);
        this.zza = atomicIntegerFieldUpdater;
    }

    @Override
    public final void zza(zzbqe zzbqeVar, int i10) {
        this.zza.set(zzbqeVar, 0);
    }

    @Override
    public final boolean zzb(zzbqe zzbqeVar, int i10, int i11) {
        return this.zza.compareAndSet(zzbqeVar, 0, -1);
    }
}
