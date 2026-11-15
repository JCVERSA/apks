package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class zzah implements Iterator<zzaq> {
    private int zza = 0;
    private final zzaf zzb;

    zzah(zzaf zzafVar) {
        this.zzb = zzafVar;
    }

    @Override
    public final boolean hasNext() {
        return this.zza < this.zzb.zzb();
    }

    @Override
    public final zzaq next() {
        if (this.zza < this.zzb.zzb()) {
            zzaf zzafVar = this.zzb;
            int i10 = this.zza;
            this.zza = i10 + 1;
            return zzafVar.zza(i10);
        }
        throw new NoSuchElementException("Out of bounds index: " + this.zza);
    }
}
