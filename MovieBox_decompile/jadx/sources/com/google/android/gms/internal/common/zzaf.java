package com.google.android.gms.internal.common;

import java.util.List;

final class zzaf extends zzag {
    final transient int zza;
    final transient int zzb;
    final zzag zzc;

    zzaf(zzag zzagVar, int i10, int i11) {
        this.zzc = zzagVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override
    public final Object get(int i10) {
        zzs.zza(i10, this.zzb, "index");
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
    public final zzag subList(int i10, int i11) {
        zzs.zzc(i10, i11, this.zzb);
        int i12 = this.zza;
        return this.zzc.subList(i10 + i12, i11 + i12);
    }
}
