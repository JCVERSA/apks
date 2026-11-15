package com.google.android.gms.internal.identity;

import java.util.List;

final class zzew extends zzex {
    final transient int zza;
    final transient int zzb;
    final zzex zzc;

    zzew(zzex zzexVar, int i10, int i11) {
        this.zzc = zzexVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override
    public final Object get(int i10) {
        zzer.zzc(i10, this.zzb, "index");
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
    final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override
    final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override
    final boolean zzf() {
        return true;
    }

    @Override
    public final zzex subList(int i10, int i11) {
        zzer.zze(i10, i11, this.zzb);
        int i12 = this.zza;
        return this.zzc.subList(i10 + i12, i11 + i12);
    }
}
