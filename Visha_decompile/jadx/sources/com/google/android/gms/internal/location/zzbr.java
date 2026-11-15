package com.google.android.gms.internal.location;

import defpackage.j5f;
import java.util.List;

final class zzbr extends zzbs {
    final transient int zza;
    final transient int zzb;
    final zzbs zzc;

    public zzbr(zzbs zzbsVar, int i, int i2) {
        this.zzc = zzbsVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override
    public final Object get(int i) {
        j5f.a(i, this.zzb, "index");
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
    public final zzbs subList(int i, int i2) {
        j5f.c(i, i2, this.zzb);
        zzbs zzbsVar = this.zzc;
        int i3 = this.zza;
        return zzbsVar.subList(i + i3, i2 + i3);
    }
}
