package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

final class zzin extends zzip {
    private int zza = 0;
    private final int zzb;
    private final zzik zzc;

    zzin(zzik zzikVar) {
        this.zzc = zzikVar;
        this.zzb = zzikVar.zzb();
    }

    @Override
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }

    @Override
    public final byte zza() {
        int i10 = this.zza;
        if (i10 >= this.zzb) {
            throw new NoSuchElementException();
        }
        this.zza = i10 + 1;
        return this.zzc.zzb(i10);
    }
}
