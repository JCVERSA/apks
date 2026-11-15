package com.google.android.libraries.places.internal;

import java.util.Objects;

final class zzoq extends zznx {
    private final transient Object[] zza;
    private final transient int zzb;
    private final transient int zzc;

    zzoq(Object[] objArr, int i10, int i11) {
        this.zza = objArr;
        this.zzb = i10;
        this.zzc = i11;
    }

    @Override
    public final Object get(int i10) {
        zzmt.zza(i10, this.zzc, "index");
        Object obj = this.zza[i10 + i10 + this.zzb];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    final boolean zzf() {
        return true;
    }
}
