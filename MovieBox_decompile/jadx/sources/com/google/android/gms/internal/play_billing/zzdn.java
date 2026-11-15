package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;

final class zzdn extends zzdp {
    final zzdw zza;
    private int zzb = 0;
    private final int zzc;

    zzdn(zzdw zzdwVar) {
        this.zza = zzdwVar;
        this.zzc = zzdwVar.zzd();
    }

    @Override
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override
    public final byte zza() {
        int i10 = this.zzb;
        if (i10 >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i10 + 1;
        return this.zza.zzb(i10);
    }
}
