package com.google.android.libraries.places.internal;

import java.util.List;

final class zznw extends zznx {
    final transient int zza;
    final transient int zzb;
    final zznx zzc;

    zznw(zznx zznxVar, int i10, int i11) {
        this.zzc = zznxVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override
    public final Object get(int i10) {
        zzmt.zza(i10, this.zzb, "index");
        return this.zzc.get(i10 + this.zza);
    }

    @Override
    public final int size() {
        return this.zzb;
    }

    @Override
    public final List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    @Override
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override
    final boolean zzf() {
        return true;
    }

    @Override
    final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override
    public final zznx subList(int i10, int i11) {
        zzmt.zzn(i10, i11, this.zzb);
        int i12 = this.zza;
        return this.zzc.subList(i10 + i12, i11 + i12);
    }
}
