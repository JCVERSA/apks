package com.google.android.libraries.places.internal;

import java.util.Objects;

final class zzom extends zznx {
    static final zznx zza = new zzom(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzom(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }

    @Override
    public final Object get(int i10) {
        zzmt.zza(i10, this.zzc, "index");
        Object obj = this.zzb[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    final int zza(Object[] objArr, int i10) {
        System.arraycopy(this.zzb, 0, objArr, i10, this.zzc);
        return i10 + this.zzc;
    }

    @Override
    final int zzb() {
        return this.zzc;
    }

    @Override
    final int zzc() {
        return 0;
    }

    @Override
    final boolean zzf() {
        return false;
    }

    @Override
    final Object[] zzg() {
        return this.zzb;
    }
}
