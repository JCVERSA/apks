package com.google.android.gms.internal.fido;

import java.util.List;

final class zzas extends zzat {
    final transient int zza;
    final transient int zzb;
    final zzat zzc;

    zzas(zzat zzatVar, int i10, int i11) {
        this.zzc = zzatVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override
    public final Object get(int i10) {
        zzam.zza(i10, this.zzb, "index");
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
    final Object[] zze() {
        return this.zzc.zze();
    }

    @Override
    public final zzat subList(int i10, int i11) {
        zzam.zze(i10, i11, this.zzb);
        zzat zzatVar = this.zzc;
        int i12 = this.zza;
        return zzatVar.subList(i10 + i12, i11 + i12);
    }
}
