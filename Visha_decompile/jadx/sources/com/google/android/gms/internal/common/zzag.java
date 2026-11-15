package com.google.android.gms.internal.common;

import defpackage.mij;
import java.util.List;
import java.util.Objects;

final class zzag extends zzah {
    final transient int zza;
    final transient int zzb;
    final zzah zzc;

    public zzag(zzah zzahVar, int i, int i2) {
        Objects.requireNonNull(zzahVar);
        this.zzc = zzahVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override
    public final Object get(int i) {
        mij.b(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override
    public final int size() {
        return this.zzb;
    }

    @Override
    public final List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override
    public final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override
    public final boolean zzf() {
        return true;
    }

    @Override
    public final zzah subList(int i, int i2) {
        mij.d(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
