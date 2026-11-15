package com.google.android.libraries.places.internal;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;

final class zzrm extends AbstractSet {
    final int zza = -1;
    final zzrn zzb;

    zzrm(zzrn zzrnVar, int i10) {
        this.zzb = zzrnVar;
    }

    @Override
    public final boolean contains(Object obj) {
        return Arrays.binarySearch(this.zzb.zzb, zzb(), zza(), obj, this.zza == -1 ? zzrn.zza : zzrp.zza) >= 0;
    }

    @Override
    public final Iterator iterator() {
        return new zzrl(this);
    }

    @Override
    public final int size() {
        return zza() - zzb();
    }

    final int zza() {
        return this.zzb.zzc[this.zza + 1];
    }

    final int zzb() {
        if (this.zza == -1) {
            return 0;
        }
        return this.zzb.zzc[0];
    }
}
