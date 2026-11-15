package com.google.android.libraries.places.internal;

import java.util.NoSuchElementException;

final class zzasa extends zzasc {
    final zzask zza;
    private int zzb = 0;
    private final int zzc;

    zzasa(zzask zzaskVar) {
        this.zza = zzaskVar;
        this.zzc = zzaskVar.zzd();
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
