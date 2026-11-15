package com.google.android.gms.internal.play_billing;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;

final class zzcv extends AbstractSet {
    final int zza = -1;
    final zzcw zzb;

    zzcv(zzcw zzcwVar, int i10) {
        this.zzb = zzcwVar;
    }

    @Override
    public final boolean contains(Object obj) {
        return Arrays.binarySearch(this.zzb.zzb, zzb(), zza(), obj, this.zza == -1 ? zzcw.zza : zzcy.zza) >= 0;
    }

    @Override
    public final Iterator iterator() {
        return new zzcu(this);
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
