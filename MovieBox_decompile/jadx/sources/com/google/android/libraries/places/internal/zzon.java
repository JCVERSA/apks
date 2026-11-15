package com.google.android.libraries.places.internal;

import java.util.AbstractMap;
import java.util.Objects;

final class zzon extends zznx {
    final zzoo zza;

    zzon(zzoo zzooVar) {
        this.zza = zzooVar;
    }

    @Override
    public final Object get(int i10) {
        zzmt.zza(i10, this.zza.zzc, "index");
        int i11 = i10 + i10;
        Object obj = this.zza.zzb[i11];
        Objects.requireNonNull(obj);
        Object obj2 = this.zza.zzb[i11 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override
    public final int size() {
        return this.zza.zzc;
    }

    @Override
    public final boolean zzf() {
        return true;
    }
}
