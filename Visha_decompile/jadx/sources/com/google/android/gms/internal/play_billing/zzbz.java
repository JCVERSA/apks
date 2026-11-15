package com.google.android.gms.internal.play_billing;

import defpackage.y4f;
import java.util.List;
import java.util.Objects;

final class zzbz extends zzca {
    final transient int zza;
    final transient int zzb;
    final zzca zzc;

    public zzbz(zzca zzcaVar, int i, int i2) {
        Objects.requireNonNull(zzcaVar);
        this.zzc = zzcaVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override
    public final Object get(int i) {
        y4f.a(i, this.zzb, "index");
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
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override
    public final boolean zzf() {
        return true;
    }

    @Override
    public final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override
    public final zzca subList(int i, int i2) {
        y4f.d(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
