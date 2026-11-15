package com.google.android.gms.internal.auth;

import java.util.NoSuchElementException;

final class zzdv extends zzdx {
    final zzee zza;
    private int zzb = 0;
    private final int zzc;

    zzdv(zzee zzeeVar) {
        this.zza = zzeeVar;
        this.zzc = zzeeVar.zzd();
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
