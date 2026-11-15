package com.google.android.gms.internal.consent_sdk;

import defpackage.zwf;
import java.util.List;

final class zzcz extends zzda {
    final transient int zza;
    final transient int zzb;
    final zzda zzc;

    public zzcz(zzda zzdaVar, int i, int i2) {
        this.zzc = zzdaVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override
    public final Object get(int i) {
        zwf.a(i, this.zzb, "index");
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
    public final Object[] zze() {
        return this.zzc.zze();
    }

    @Override
    public final zzda subList(int i, int i2) {
        zwf.c(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
