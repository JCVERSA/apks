package com.google.android.gms.internal.identity;

import java.util.Objects;

final class zzey extends zzex {
    static final zzex zza = new zzey(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzey(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }

    @Override
    public final Object get(int i10) {
        zzer.zzc(i10, this.zzc, "index");
        Object obj = this.zzb[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    final Object[] zzb() {
        return this.zzb;
    }

    @Override
    final int zzc() {
        return 0;
    }

    @Override
    final int zzd() {
        return this.zzc;
    }

    @Override
    final boolean zzf() {
        return false;
    }

    @Override
    final int zzg(Object[] objArr, int i10) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }
}
