package com.google.android.libraries.places.internal;

final class zzbsn implements zzbra {
    private final zzbwb zza;
    private int zzb;
    private int zzc;

    zzbsn(zzbwb zzbwbVar, int i10) {
        this.zza = zzbwbVar;
        this.zzb = i10;
    }

    @Override
    public final int zza() {
        return this.zzc;
    }

    @Override
    public final int zzb() {
        return this.zzb;
    }

    @Override
    public final void zzc(byte b10) {
        this.zza.zzm(b10);
        this.zzb--;
        this.zzc++;
    }

    @Override
    public final void zzd(byte[] bArr, int i10, int i11) {
        this.zza.zzl(bArr, i10, i11);
        this.zzb -= i11;
        this.zzc += i11;
    }

    final zzbwb zze() {
        return this.zza;
    }
}
